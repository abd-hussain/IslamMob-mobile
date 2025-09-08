import 'package:firebase_auth/firebase_auth.dart';

class AuthFailure {
  final String message;

  AuthFailure({required this.message});

  factory AuthFailure.fromFirebase(FirebaseAuthException exception) {
    return AuthFailure(message: _mapFirebaseError(exception));
  }

  static String _mapFirebaseError(FirebaseAuthException exception) {
    switch (exception.code) {
      case 'account-exists-with-different-credential':
        return 'Account already exists with different credentials';
      case 'invalid-credential':
        return 'Invalid credentials';
      case 'user-disabled':
        return 'User account is disabled';
      case 'user-not-found':
        return 'No user found for this email';
      case 'wrong-password':
        return 'Wrong password';
      default:
        return 'Authentication failed: ${exception.message}';
    }
  }
}
