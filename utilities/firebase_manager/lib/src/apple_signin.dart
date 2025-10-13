import 'dart:convert';
import 'dart:io';
import 'dart:math';

import 'package:crypto/crypto.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_manager/exceptions/auth_exception.dart';
import 'package:firebase_manager/firebase_manager.dart' hide AuthFailure;
import 'package:flutter/material.dart';
import 'package:fpdart/fpdart.dart';
import 'package:internet_connection_checkup/internet_connection_checkup.dart';
import 'package:sign_in_with_apple/sign_in_with_apple.dart';

class AppleSigninRepository {
  static final FirebaseAuth _authInstance = FirebaseAuth.instance;

  static TaskEither<AuthFailure, UserModel> appleSignIn() {
    final rawNonce = _generateNonce();
    return _authenticateWithApple(rawNonce)
        .flatMap(
          (credential) => _createFirebaseCredential(credential, rawNonce),
        )
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
  _authenticateWithApple(String rawNonce) {
    return TaskEither.tryCatch(
      () async {
        if (!Platform.isIOS) {
          throw Exception('Apple Sign-In is only available on iOS');
        }

        // Hash the nonce with SHA256 for Apple
        final hashedNonce = _sha256ofString(rawNonce);

        final credential = await SignInWithApple.getAppleIDCredential(
          scopes: [
            AppleIDAuthorizationScopes.email,
            AppleIDAuthorizationScopes.fullName,
          ],
          nonce: hashedNonce,
        );

        if (credential.userIdentifier?.isEmpty ?? true) {
          throw AppleSignInCancelledException('User cancelled Apple sign-in');
        }

        final idToken = credential.identityToken;
        assert(
          idToken != null && idToken.isNotEmpty,
          'Apple returned null identityToken',
        );
        _debugAppleJwt(idToken!);

        // Also log nonce snippets to match hash
        final hashed = _sha256ofString(rawNonce);
        debugPrint(
          'nonce(raw)=${rawNonce.substring(0, 8)}…  nonce(sha256)=${hashed.substring(0, 8)}…',
        );

        return credential;
      },
      (error, _) {
        // Handle user cancellation
        if (error is AppleSignInCancelledException) {
          return AuthFailure(message: 'CANCELLED');
        }

        if (error.toString().contains('cancelled') ||
            error.toString().contains('canceled')) {
          return AuthFailure(message: 'CANCELLED');
        }

        // Handle specific Apple Sign In errors
        final errorString = error.toString();

        // Error 1000: Unknown/Invalid request
        if (errorString.contains('error 1000')) {
          return AuthFailure(
            message:
                'Apple Sign-In is not properly configured. Please enable Sign In with Apple in your Apple Developer account and ensure your provisioning profile includes this capability.',
          );
        }

        // Error 1001: Canceled by user
        if (errorString.contains('error 1001')) {
          return AuthFailure(message: 'CANCELLED');
        }

        // Error 1002: Invalid response
        if (errorString.contains('error 1002')) {
          return AuthFailure(
            message: 'Invalid response from Apple. Please try again.',
          );
        }

        // Error 1003: Not handled
        if (errorString.contains('error 1003')) {
          return AuthFailure(
            message:
                'Apple Sign-In not available. Please update iOS to the latest version.',
          );
        }

        // Error 1004: Failed
        if (errorString.contains('error 1004')) {
          return AuthFailure(
            message:
                'Apple Sign-In failed. Please check your internet connection and try again.',
          );
        }

        // Generic error with helpful message
        return AuthFailure(
          message:
              'Apple Sign-In failed. This might be due to:\n'
              '• Missing Sign In with Apple capability in provisioning profile\n'
              '• Apple Developer account configuration issue\n'
              '• Network connectivity problem\n\n'
              'Please try again or use another sign-in method.',
        );
      },
    );
  }

  /// Creates Firebase credentials using Apple authentication details.
  /// Returns a [TaskEither] containing [AuthCredential] if successful.
  static TaskEither<AuthFailure, AuthCredential> _createFirebaseCredential(
    AuthorizationCredentialAppleID credential,
    String rawNonce,
  ) {
    return TaskEither.tryCatch(() async {
      final idToken = credential.identityToken;
      if (idToken == null || idToken.isEmpty) {
        throw Exception(
          'Missing identityToken from Apple. Ensure Apple Sign-In is configured and use a real device.',
        );
      }

      // IMPORTANT: pass rawNonce here (unhashed). Apple got the SHA256 earlier.
      debugPrint('Creating OAuth credential with:');
      debugPrint('  - idToken length: ${idToken.length}');
      debugPrint('  - rawNonce length: ${rawNonce.length}');
      debugPrint('  - rawNonce: $rawNonce');

      final oauthCredential = OAuthProvider(
        'apple.com',
      ).credential(idToken: idToken, rawNonce: rawNonce);

      debugPrint('OAuth credential created successfully');
      return oauthCredential;
    }, (error, _) => AuthFailure(message: 'Credential creation failed: $error'));
  }

  /// Signs in to Firebase using the provided credentials.
  /// Returns a [TaskEither] containing [UserCredential] if successful.
  static TaskEither<AuthFailure, UserCredential> _signInWithFirebase(
    AuthCredential credential,
  ) {
    return TaskEither.tryCatch(
      () => _authInstance.signInWithCredential(credential),
      (error, st) {
        if (error is FirebaseAuthException) {
          debugPrint(
            'FirebaseAuthException code=${error.code} message=${error.message}',
          );
        } else {
          debugPrint('Firebase sign-in error: $error\n$st');
        }
        if (error is FirebaseAuthException) {
          final code =
              error.code; // e.g., invalid-credential, invalid-tenant-id, etc.
          final msg = switch (code) {
            'invalid-credential' =>
              'Firebase rejected Apple credential. This means:\n'
                  '1. Firebase Apple Sign-In Key (.p8) is missing/incorrect\n'
                  '2. Key ID or Team ID in Firebase doesn\'t match Apple\n'
                  '3. Apple private key has expired\n'
                  '4. Service ID mismatch (leave empty for native iOS)\n\n'
                  'Go to Firebase Console → Authentication → Apple → Reconfigure with correct:\n'
                  '• Team ID (from Apple Developer)\n'
                  '• Key ID (from your .p8 key)\n'
                  '• Private Key (full .p8 file content)',
            'invalid-verification-code' =>
              'Invalid authorization code from Apple.',
            'invalid-verification-id' => 'Invalid verification context.',
            _ => error.message ?? code,
          };
          return AuthFailure(message: msg);
        }
        return AuthFailure(message: 'Firebase sign-in failed: $error');
      },
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

  /// Returns the SHA256 hash of [input] as a string.
  static String _sha256ofString(String input) {
    final bytes = utf8.encode(input);
    final digest = sha256.convert(bytes);
    return digest.toString();
  }

  // Debug: decode Apple identityToken (JWT) to verify aud & nonce
  static void _debugAppleJwt(String jwt) {
    try {
      final parts = jwt.split('.');
      if (parts.length != 3) return;
      final payload = utf8.decode(
        base64Url.decode(base64Url.normalize(parts[1])),
      );
      debugPrint('Apple JWT payload: $payload'); // Look for "aud" and "nonce"
    } catch (_) {}
  }
}

/// Custom exception for Apple Sign In cancellations.
class AppleSignInCancelledException implements Exception {
  final String message;
  AppleSignInCancelledException(this.message);

  @override
  String toString() => 'AppleSignInCancelledException: $message';
}
