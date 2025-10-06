import 'dart:io';
import 'dart:math';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_manager/exceptions/auth_exception.dart';
import 'package:firebase_manager/firebase_manager.dart' hide AuthFailure;
import 'package:fpdart/fpdart.dart';
import 'package:internet_connection_checkup/internet_connection_checkup.dart';
import 'package:sign_in_with_apple/sign_in_with_apple.dart';

class AppleSigninRepository {
  static final FirebaseAuth _authInstance = FirebaseAuth.instance;

  static TaskEither<AuthFailure, UserModel> appleSignIn() {
    return _authenticateWithApple()
        .flatMap(_createFirebaseCredential)
        .flatMap(_signInWithFirebase)
        .map(_toUserModel);
  }

  /// Signs out the currently authenticated user.
  static Future<bool> signOut() async {
    if (!await _isConnected()) return false;

    try {
      await _authInstance.signOut();
      return true;
    } catch (_) {
      // Handle sign out error
      return false;
    }
  }

  /// Initiates the Apple sign-in process using sign_in_with_apple plugin.
  /// Returns a [TaskEither] containing the [AuthorizationCredentialAppleID] if successful.
  static TaskEither<AuthFailure, AuthorizationCredentialAppleID>
  _authenticateWithApple() {
    return TaskEither.tryCatch(
      () async {
        if (!Platform.isIOS) {
          throw Exception('Apple Sign-In is only available on iOS');
        }

        final rawNonce = _generateNonce();
        final credential = await SignInWithApple.getAppleIDCredential(
          scopes: [
            AppleIDAuthorizationScopes.email,
            AppleIDAuthorizationScopes.fullName,
          ],
          nonce: rawNonce,
        );

        if (credential.userIdentifier?.isEmpty ?? true) {
          throw AppleSignInCancelledException('User cancelled Apple sign-in');
        }

        return credential;
      },
      (error, _) {
        print('Apple Sign-In Error Details: $error');
        print('Error Type: ${error.runtimeType}');

        if (error is AppleSignInCancelledException) {
          return AuthFailure(message: 'CANCELLED');
        }

        if (error.toString().contains('cancelled') ||
            error.toString().contains('canceled')) {
          return AuthFailure(message: 'CANCELLED');
        }

        return AuthFailure(message: 'Apple sign-in failed: $error');
      },
    );
  }

  /// Creates Firebase credentials using Apple authentication details.
  /// Returns a [TaskEither] containing [AuthCredential] if successful.
  static TaskEither<AuthFailure, AuthCredential> _createFirebaseCredential(
    AuthorizationCredentialAppleID credential,
  ) {
    return TaskEither.tryCatch(
      () async {
        final rawNonce = _generateNonce();
        final oauthCredential = OAuthProvider(
          'apple.com',
        ).credential(idToken: credential.identityToken, rawNonce: rawNonce);
        return oauthCredential;
      },
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

  /// Generates a cryptographically secure nonce for Apple Sign In.
  static String _generateNonce([int length = 32]) {
    const charset =
        '0123456789ABCDEFGHIJKLMNOPQRSTUVXYZabcdefghijklmnopqrstuvwxyz-._';
    final random = Random.secure();
    return List.generate(
      length,
      (_) => charset[random.nextInt(charset.length)],
    ).join();
  }
}

/// Custom exception for Apple Sign In cancellations.
class AppleSignInCancelledException implements Exception {
  final String message;
  AppleSignInCancelledException(this.message);

  @override
  String toString() => 'AppleSignInCancelledException: $message';
}
