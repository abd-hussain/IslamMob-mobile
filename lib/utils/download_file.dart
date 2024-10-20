import 'dart:io';

import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:islam_app/utils/logger.dart';

import 'package:path_provider/path_provider.dart';

class FileDownload {
  Dio dio = Dio();
  bool isSuccess = false;

  void startDownloading({
    required BuildContext context,
    required String fileNameWithExtension,
    required String fileUrl,
    required final Function(int recivedBytes, int totalBytes) progressCallback,
    required final Function(String filePath) finishCallback,
  }) async {
    String path = await _getFilePath(fileNameWithExtension);

    try {
      await dio.download(
        fileUrl,
        path,
        onReceiveProgress: (recivedBytes, totalBytes) {
          progressCallback(recivedBytes, totalBytes);
        },
        deleteOnError: true,
      ).then((_) {
        logDebugMessage(message: "Download Completed");
        isSuccess = true;
        finishCallback(path);
      });
    } catch (e) {
      logDebugMessage(message: "Exception - $e");
    }

    if (isSuccess) {
      if (context.mounted) {
        Navigator.pop(context);
      }
    }
  }

  Future<String> _getFilePath(String filename) async {
    final Directory dir = await getApplicationDocumentsDirectory();
    final newDirectory = Directory('${dir.path}/');

    if (await newDirectory.exists()) {
      logDebugMessage(message: "Directory exists");
    } else {
      await newDirectory.create();
      logDebugMessage(message: "Directory created");
    }

    return "${newDirectory.path}$filename";
  }

  Future<bool> checkIfFileExists(String fileNameWithExtension) async {
    final Directory dir = await getApplicationDocumentsDirectory();
    final newDirectory = Directory('${dir.path}/');
    File file = File("${newDirectory.path}$fileNameWithExtension");
    return file.existsSync();
  }

  Future<void> deleteFile(String fileNameWithExtension) async {
    final Directory dir = await getApplicationDocumentsDirectory();
    final newDirectory = Directory('${dir.path}/');
    File file = File("${newDirectory.path}$fileNameWithExtension");
    await file.delete();
  }
}
