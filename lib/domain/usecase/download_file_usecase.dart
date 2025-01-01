import 'dart:io';

import 'package:dio/dio.dart';
import 'package:logger_manager/logger_manager.dart';
import 'package:path_provider/path_provider.dart';

class DownloadFileUsecase {
  final Dio dio = Dio();

  /// Starts downloading a file and provides progress and completion callbacks.
  Future<void> startDownloading({
    required String fileNameWithExtension,
    required String fileUrl,
    required CancelToken cancelToken,
    required Function(int receivedBytes, int totalBytes) progressCallback,
    required Function(String filePath) finishCallback,
  }) async {
    final String filePath = await _getFilePath(fileNameWithExtension);

    try {
      await dio.download(
        fileUrl,
        filePath,
        cancelToken: cancelToken,
        onReceiveProgress: progressCallback,
        deleteOnError: true,
      );
      LoggerManagerBase.logDebugMessage(message: "Download Completed");
      finishCallback(filePath);
    } catch (e) {
      LoggerManagerBase.logDebugMessage(message: "Download failed: $e");
    }
  }

  Future<String> getFilePath(String filename) async {
    final Directory dir = await getApplicationDocumentsDirectory();
    final newDirectory = Directory('${dir.path}/');

    if (await newDirectory.exists()) {
      LoggerManagerBase.logDebugMessage(message: "Directory exists");
    } else {
      await newDirectory.create();
      LoggerManagerBase.logDebugMessage(message: "Directory created");
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
      LoggerManagerBase.logDebugMessage(message: "File deleted: $filePath");
    } else {
      LoggerManagerBase.logDebugMessage(message: "File not found: $filePath");
    }
  }

  /// Gets the full file path for a given file name.
  Future<String> _getFilePath(String fileName) async {
    final Directory dir = await getApplicationDocumentsDirectory();
    final Directory newDirectory = Directory(dir.path);

    if (!await newDirectory.exists()) {
      await newDirectory.create();
      LoggerManagerBase.logDebugMessage(
          message: "Directory created: ${newDirectory.path}");
    } else {
      LoggerManagerBase.logDebugMessage(
          message: "Directory exists: ${newDirectory.path}");
    }

    return "${newDirectory.path}/$fileName";
  }
}
