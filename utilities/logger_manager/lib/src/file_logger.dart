import 'dart:io';

import 'package:flutter/src/foundation/print.dart';
import 'package:logger/logger.dart';
import 'package:path_provider/path_provider.dart';

/// A utility class for logging messages to a file.
///
/// This class provides static methods to initialize file logging,
/// write log messages with different levels, and manage log files.
/// All logs are written to a file in the application documents directory.
///
/// Example usage:
/// ```dart
/// // Initialize the logger
/// await FileLogger.initialize(fileName: 'my_app_logs.txt');
///
/// // Log messages
/// FileLogger.log(Level.info, 'Application started');
/// FileLogger.log(Level.error, 'An error occurred', error: exception);
/// ```
class FileLogger {
  static late File _logFile;
  static late Logger _fileLogger;
  static bool _initialized = false;

  /// Initialize the file logger
  static Future<void> initialize({String fileName = 'app_logs.txt'}) async {
    try {
      final directory = await getApplicationDocumentsDirectory();
      _logFile = File('${directory.path}/$fileName');

      _fileLogger = Logger(
        printer: SimplePrinter(printTime: true),
        output: FileOutput(_logFile),
      );

      _initialized = true;
    } catch (e) {
      debugPrint('Failed to initialize file logger: $e');
    }
  }

  /// Log a message to the file
  static void log(
    Level level,
    String message, {
    dynamic error,
    StackTrace? stackTrace,
  }) {
    if (!_initialized) {
      debugPrint(
        'File logger not initialized. Call FileLogger.initialize() first.',
      );
      return;
    }

    switch (level) {
      case Level.debug:
        _fileLogger.d(message);
        break;
      case Level.info:
        _fileLogger.i(message);
        break;
      case Level.warning:
        _fileLogger.w(message);
        break;
      case Level.error:
        _fileLogger.e(message, error: error, stackTrace: stackTrace);
        break;
      case Level.fatal:
        _fileLogger.f(message, error: error, stackTrace: stackTrace);
        break;
      default:
        _fileLogger.d(message);
    }
  }

  /// Get the log file path
  static Future<String?> getLogFilePath() async {
    if (!_initialized) return null;
    return _logFile.path;
  }

  /// Clear the log file
  static Future<void> clearLogs() async {
    if (!_initialized) return;
    await _logFile.writeAsString('');
  }

  /// Read all logs
  static Future<String> readLogs() async {
    if (!_initialized) return '';
    return _logFile.readAsString();
  }
}

/// Custom output for writing logs to a file
class FileOutput extends LogOutput {
  /// The file where log messages will be written
  final File file;

  /// Creates a new FileOutput instance that writes to the specified [file]
  FileOutput(this.file);

  @override
  Future<void> output(OutputEvent event) async {
    for (final line in event.lines) {
      await file.writeAsString('$line\n', mode: FileMode.append);
    }
  }
}
