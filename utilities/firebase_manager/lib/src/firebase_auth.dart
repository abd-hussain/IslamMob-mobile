import 'dart:io';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_manager/firebase_manager.dart';
import 'package:internet_connection_checkup/internet_connection_checkup.dart';
import 'package:path/path.dart' as path;

/// A repository class that handles all Firebase Auth-related operations.
class FirebaseAuthRepository {
  static final FirebaseAuth _authInstance = FirebaseAuth.instance;

  /// Registers a new user using Firebase Auth.
  /// Returns a map: `{true: UserCredential}` on success, `{false: error message}` on failure.
  static Future<Map<bool, String>> registerUser({
    required String email,
    required String password,
    required String fullName,
    required String gender,
    required String dateOfBirth,
    required File? profilePic,
    required String? country,
    required String countryFlag,
  }) async {
    if (!await _isConnected()) {
      return {false: 'No internet connection.'};
    }

    if (!await FirebaseManagerBase.isFirebaseInitialized()) {
      await FirebaseManagerBase.initialize();
    }

    String? filePathInStorage;

    try {
      final userCredential = await _authInstance.createUserWithEmailAndPassword(
        email: email.trim(),
        password: password.trim(),
      );

      if (profilePic != null) {
        filePathInStorage = await FirebaseStorageRepository.uploadFile(
          file: profilePic,
          path: FirebaseCollectionConstants.registered_users,
          fileName:
              userCredential.user?.uid ?? "" + path.extension(profilePic.path),
        );
      }

      await FirebaseFirestoreRepository.setData(
        options: FireStoreOptions<dynamic>(
          collectionName: FirebaseCollectionConstants.registered_users,
          docName: email.trim(),
          fromModel: {
            "uid": userCredential.user?.uid ?? "",
            "signInMethod": userCredential.credential?.signInMethod ?? "",
            "fullName": fullName,
            "password": password,
            "gender": gender,
            "dateOfBirth": dateOfBirth,
            "country": country,
            "profilePic": filePathInStorage,
            "countryFlag": countryFlag,
            "syncedAt": DateTime.now(),
          },
        ),
      );

      return {true: userCredential.credential?.accessToken ?? ""};
    } on FirebaseAuthException catch (e) {
      switch (e.code) {
        case 'weak-password':
          return {false: 'The password provided is too weak.'};
        case 'email-already-in-use':
          return {false: 'An account already exists with that email.'};
        case 'invalid-email':
          return {false: 'Invalid email address format.'};
        default:
          return {false: 'Registration failed: ${e.message}'};
      }
    } catch (e) {
      return {false: 'Unexpected error: $e'};
    }
  }

  /// Logs in a user using Firebase Auth.
  static Future<Map<bool, String>> loginUser({
    required String email,
    required String password,
  }) async {
    if (!await _isConnected()) {
      return {false: 'No internet connection.'};
    }

    try {
      final userCredential = await _authInstance.signInWithEmailAndPassword(
        email: email.trim(),
        password: password.trim(),
      );
      return {true: userCredential.credential?.accessToken ?? ""};
    } on FirebaseAuthException catch (e) {
      switch (e.code) {
        case 'INVALID_LOGIN_CREDENTIALS':
        case 'wrong-password':
        case 'user-not-found':
          return {false: 'Invalid email or password.'};
        default:
          return {false: 'Login failed: ${e.message}'};
      }
    } catch (e) {
      return {false: 'Unexpected error: $e'};
    }
  }

  /// Sends a password reset email to the user.
  static Future<bool> resetPassword({required String email}) async {
    if (!await _isConnected()) return false;

    try {
      await _authInstance.sendPasswordResetEmail(email: email.trim());

      return true;
    } catch (_) {
      // Log error or handle accordingly
      return false;
    }
  }

  /// Changes the current user's password after re-authentication.
  static Future<bool> changePassword({
    required String email,
    required String currentPassword,
    required String newPassword,
  }) async {
    if (!await _isConnected()) return false;

    final user = _authInstance.currentUser;
    if (user == null || user.email == null) return false;

    try {
      final credential = EmailAuthProvider.credential(
        email: user.email!,
        password: currentPassword,
      );
      await user.reauthenticateWithCredential(credential);
      await user.updatePassword(newPassword);
      // Password changed successfully
      await FirebaseFirestoreRepository.updateField(
        collectionName: FirebaseCollectionConstants.registered_users,
        docId: email.trim(),
        updateData: {'password': newPassword},
      );

      return true;
    } catch (e) {
      // Handle error (wrong password, etc.)
      return false;
    }
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

  static Future<bool> deleteAccount({
    required String email,
    required String password,
  }) async {
    if (!await _isConnected()) return false;

    try {
      final User? user = _authInstance.currentUser;
      if (user != null) {
        // Re-authenticate the user
        final AuthCredential credential = EmailAuthProvider.credential(
          email: email.trim(),
          password: password.trim(),
        );

        await user.reauthenticateWithCredential(credential);

        await user.delete();

        final String? uid =
            await FirebaseFirestoreRepository.getFieldValue<String?>(
              collectionName: FirebaseCollectionConstants.registered_users,
              docId: email.trim(),
              field: "uid",
            );

        final String? imagePath =
            await FirebaseFirestoreRepository.getFieldValue<String?>(
              collectionName: FirebaseCollectionConstants.registered_users,
              docId: email.trim(),
              field: "profilePic",
            );

        await FirebaseFirestoreRepository.deleteDocument(
          collectionName: FirebaseCollectionConstants.registered_users,
          docId: email.trim(),
        );

        if (imagePath != null) {
          await FirebaseStorageRepository.deleteFile(
            "${FirebaseCollectionConstants.registered_users}/${uid ?? ""}",
          );
        }

        return true;
      } else {
        return false;
      }
    } catch (e) {
      // Handle error (deleteAccount, etc.)
      return false;
    }
  }

  /// Checks for network connectivity.
  static Future<bool> _isConnected() async {
    return NetworkUseCase.checkInternetConnection();
  }
}
