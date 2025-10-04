import 'dart:io';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_manager/exceptions/auth_exception.dart';
import 'package:firebase_manager/exceptions/google_signin_exceptions.dart';
import 'package:firebase_manager/firebase_manager.dart' hide AuthFailure;
import 'package:fpdart/fpdart.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:internet_connection_checkup/internet_connection_checkup.dart';

class GoogleSigninRepository {
  static final _googleSignIn = GoogleSignIn(
    clientId: Platform.isIOS
        ? "572946835267-gi3ajhbc5vt47de06bni9uug3j3s9ggo.apps.googleusercontent.com"
        : null, // Use default from google-services.json for Android
    scopes: ['email', 'profile'],
  );

  static final FirebaseAuth _authInstance = FirebaseAuth.instance;

  static TaskEither<AuthFailure, UserModel> googleSignIn() {
    return _authenticateWithGoogle()
        .flatMap(_getGoogleAuth)
        .flatMap(_createFirebaseCredential)
        .flatMap(_signInWithFirebase)
        .map(_toUserModel);
  }

  /// Signs out the currently authenticated user.
  static Future<bool> signOut() async {
    if (!await _isConnected()) return false;

    try {
      await Future.wait([_googleSignIn.signOut(), _authInstance.signOut()]);
      return true;
    } catch (_) {
      // Handle sign out error
      return false;
    }
  }

  /// Initiates the Google sign-in process.
  /// Returns a [TaskEither] containing the [GoogleSignInAccount] if successful.
  static TaskEither<AuthFailure, GoogleSignInAccount>
  _authenticateWithGoogle() {
    return TaskEither.tryCatch(
      () async {
        final account = await _googleSignIn.signIn();
        if (account == null) {
          throw GoogleSignInCancelledException('User cancelled Google sign-in');
        }
        return account;
      },
      (error, _) {
        if (error is GoogleSignInCancelledException) {
          return AuthFailure(message: 'CANCELLED');
        }
        return AuthFailure(message: 'Google sign-in failed: $error');
      },
    );
  }

  /// Retrieves Google authentication details from the signed-in account.
  /// Returns a [TaskEither] containing [GoogleSignInAuthentication] if successful.
  static TaskEither<AuthFailure, GoogleSignInAuthentication> _getGoogleAuth(
    GoogleSignInAccount account,
  ) {
    return TaskEither.tryCatch(
      () async => account.authentication,
      (error, _) =>
          AuthFailure(message: 'Google authentication failed: $error'),
    );
  }

  /// Creates Firebase credentials using Google authentication details.
  /// Returns a [TaskEither] containing [AuthCredential] if successful.
  static TaskEither<AuthFailure, AuthCredential> _createFirebaseCredential(
    GoogleSignInAuthentication auth,
  ) {
    return TaskEither.tryCatch(
      () async => GoogleAuthProvider.credential(
        accessToken: auth.accessToken,
        idToken: auth.idToken,
      ),
      (error, _) => AuthFailure(message: 'Credential creation failed: $error'),
    );
  }

  /// Signs in to Firebase using the provided credentials.
  /// Returns a [TaskEither] containing [UserCredential] if successful.
  static TaskEither<AuthFailure, UserCredential> _signInWithFirebase(
    AuthCredential credential,
  ) {
    return TaskEither.tryCatch(
      () => _authInstance.signInWithCredential(credential),
      (error, _) => AuthFailure.fromFirebase(error as FirebaseAuthException),
    );
  }

  /// Converts Firebase user credentials to a [UserModel].
  /// Returns a [UserModel] containing the user's information.
  static UserModel _toUserModel(UserCredential credential) {
    return UserModel(
      uid: credential.user?.uid ?? "",
      email: credential.user?.email ?? "",
      token: credential.credential?.accessToken ?? "",
    );
  }

  /// Checks for network connectivity.
  static Future<bool> _isConnected() async {
    return NetworkUseCase.checkInternetConnection();
  }

  /// Registers a user in Firestore when they sign in with social providers
  /// but don't exist in the Firestore database.
  /// This method creates a minimal user record for identification purposes.
  static Future<bool> registerSocialUserInFirestore({
    required String email,
    required String uid,
    required String signInMethod,
    required String os,
    String? fullName,
  }) async {
    if (!await _isConnected()) {
      return false;
    }

    if (!await FirebaseManagerBase.isFirebaseInitialized()) {
      await FirebaseManagerBase.initialize();
    }

    try {
      await FirebaseFirestoreRepository.setData(
        options: FireStoreOptions<dynamic>(
          collectionName: FirebaseCollectionConstants.registered_users,
          docName: email.trim(),
          fromModel: {
            "uid": uid,
            "signInMethod": signInMethod,
            "fullName": fullName ?? "",
            "email": email.trim(),
            "syncedAt": DateTime.now(),
            "profilePic": null,
            "countryFlag": null,
            "country": null,
            "dateOfBirth": null,
            "gender": null,
            "password": null,
            "os": os,
            "isSocialSignIn": true, // Flag to identify social sign-in users
          },
        ),
      );

      return true;
    } catch (e) {
      // Log error or handle accordingly
      return false;
    }
  }
}
