import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:logger_manager/logger_manager.dart';

/// A repository class that provides static methods for Firebase Storage operations.
///
/// This class handles file upload, download, and deletion operations with Firebase Storage.
/// All methods are static and provide error handling with logging capabilities.
class FirebaseStorageRepository {
  static final FirebaseStorage _storage = FirebaseStorage.instance;

  /// Uploads a file to Firebase Storage and returns its download URL
  static Future<String?> uploadFile({
    required File file,
    required String path,
    String? fileName,
    void Function(double)? onProgress,
  }) async {
    try {
      final String name =
          fileName ?? DateTime.now().millisecondsSinceEpoch.toString();
      final ref = _storage.ref('$path/$name');

      final uploadTask = ref.putFile(file);

      if (onProgress != null) {
        uploadTask.snapshotEvents.listen((TaskSnapshot snapshot) {
          final progress = snapshot.bytesTransferred / snapshot.totalBytes;
          onProgress(progress);
        });
      }

      await uploadTask;
      return await ref.getDownloadURL();
    } catch (e) {
      LoggerManagerBase.logErrorMessage(
        error: e,
        message: 'Error uploading file to Firebase Storage',
      );
      return null;
    }
  }

  /// Downloads a file from Firebase Storage
  static Future<File?> downloadFile({
    required String path,
    required String localPath,
    void Function(double)? onProgress,
  }) async {
    try {
      final ref = _storage.ref(path);
      final file = File(localPath);

      final downloadTask = ref.writeToFile(file);

      if (onProgress != null) {
        downloadTask.snapshotEvents.listen((TaskSnapshot snapshot) {
          final progress = snapshot.bytesTransferred / snapshot.totalBytes;
          onProgress(progress);
        });
      }

      await downloadTask;
      return file;
    } catch (e) {
      LoggerManagerBase.logErrorMessage(
        error: e,
        message: 'Error downloading file from Firebase Storage',
      );
      return null;
    }
  }

  /// Deletes a file from Firebase Storage
  static Future<bool> deleteFile(String path) async {
    try {
      final ref = _storage.ref(path);
      await ref.delete();
      return true;
    } catch (e) {
      LoggerManagerBase.logErrorMessage(
        error: e,
        message: 'Error deleting file from Firebase Storage',
      );
      return false;
    }
  }
}
