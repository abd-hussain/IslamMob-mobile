import 'dart:io';

import 'package:dio/dio.dart';
import 'package:logger_manager/logger_manager.dart';
import 'package:path_provider/path_provider.dart';

/// Use case for downloading and managing files in the Islam Mob app.
///
/// This class provides comprehensive file download functionality for Islamic
/// content including:
/// - **Quran PDF files** for different Mushaf editions
/// - **Audio files** for Adhan sounds and Quran recitations
/// - **Islamic content** such as Hadith collections and prayer guides
/// - **App resources** like additional language packs or updates
///
/// The use case handles:
/// - **Progress tracking** during downloads for user feedback
/// - **Cancellation support** for interrupted downloads
/// - **File management** including existence checks and deletion
/// - **Error handling** with proper logging for debugging
/// - **Storage management** in the app's document directory
///
/// This is essential for the app's offline functionality, allowing users
/// to download Islamic content for use without internet connectivity,
/// which is particularly important for prayer times and Quran reading.
class DownloadFileUsecase {
  final Dio _dio = Dio();

  /// Starts downloading a file and provides progress and completion callbacks.
  Future<void> startDownloading({
    required String fileNameWithExtension,
    required String fileUrl,
    required CancelToken cancelToken,
    required Function(int receivedBytes, int totalBytes) progressCallback,
    required Function(String filePath) finishCallback,
  }) async {
    final filePath = await _getFilePath(fileNameWithExtension);

    try {
      await _dio.download(
        fileUrl,
        filePath,
        cancelToken: cancelToken,
        onReceiveProgress: progressCallback,
      );
      LoggerManagerBase.logInfo(message: 'Download Completed');
      finishCallback(filePath);
    } catch (e) {
      LoggerManagerBase.logErrorMessage(error: e, message: 'Download failed');
    }
  }

  /// Gets the full file path for a given filename in the app's document directory.
  ///
  /// This method constructs the complete file path where downloaded Islamic
  /// content should be stored. It ensures the directory exists and creates
  /// it if necessary. This is used for:
  /// - Locating downloaded Quran PDF files
  /// - Finding audio files for Adhan and recitations
  /// - Accessing cached Islamic content
  /// - Managing app-specific file storage
  ///
  /// Parameters:
  /// - [filename]: The name of the file including its extension
  ///
  /// Returns the complete file path as a string where the file should be
  /// stored or can be found in the app's document directory.
  ///
  /// Example:
  /// ```dart
  /// final usecase = DownloadFileUsecase();
  /// final path = await usecase.getFilePath('quran_madinah.pdf');
  /// // Returns: '/path/to/app/documents/quran_madinah.pdf'
  /// ```
  Future<String> getFilePath(String filename) async {
    final Directory dir = await getApplicationDocumentsDirectory();
    final newDirectory = Directory('${dir.path}/');

    if (await newDirectory.exists()) {
      LoggerManagerBase.logInfo(message: 'Directory exists');
    } else {
      await newDirectory.create();
      LoggerManagerBase.logInfo(message: 'Directory created');
    }

    return "${newDirectory.path}$filename";
  }

  /// Checks if a file with the given name exists.
  Future<bool> fileExists(String fileNameWithExtension) async {
    final String filePath = await _getFilePath(fileNameWithExtension);
    return File(filePath).existsSync();
  }

  /// Deletes a file with the given name if it exists.
  Future<void> deleteFile(String fileNameWithExtension) async {
    final String filePath = await _getFilePath(fileNameWithExtension);
    final File file = File(filePath);

    if (await file.exists()) {
      await file.delete();
      LoggerManagerBase.logInfo(message: 'File deleted: $filePath');
    } else {
      LoggerManagerBase.logInfo(message: 'File not found: $filePath');
    }
  }

  /// Gets the full file path for a given file name.
  Future<String> _getFilePath(String fileName) async {
    final Directory dir = await getApplicationDocumentsDirectory();
    final Directory newDirectory = Directory(dir.path);

    if (!await newDirectory.exists()) {
      await newDirectory.create();
      LoggerManagerBase.logInfo(
          message: 'Directory created: ${newDirectory.path}');
    } else {
      LoggerManagerBase.logInfo(
          message: 'Directory exists: ${newDirectory.path}');
    }

    return '${newDirectory.path}/$fileName';
  }
}
