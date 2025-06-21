import 'package:logger/logger.dart';
import 'package:logger_manager/src/logger_config.dart';

/// A base class for managing application logging functionality.
///
/// This class provides a centralized logging system with configurable settings
/// and various log levels including debug, info, warning, error, and critical.
/// It uses the Logger package internally and provides static methods for
/// easy access throughout the application.
class LoggerManagerBase {
  static late Logger _logger;
  static bool _initialized = false;

  /// Initialize the logger with custom configuration
  static void initialize({LoggerConfig config = LoggerConfig.development}) {
    _logger = Logger(
      level: config.level,
      printer: PrettyPrinter(
        methodCount: config.methodCount,
        errorMethodCount: config.errorMethodCount,
        lineLength: config.lineLength,
        colors: config.useColors,
        printEmojis: config.includeEmojis,
      ),
    );
    _initialized = true;
  }

  /// Gets the logger instance, initializing it if not already done.
  ///
  /// Returns the configured Logger instance. If the logger hasn't been
  /// initialized yet, it will be automatically initialized with default
  /// development configuration.
  static Logger get logger {
    if (!_initialized) {
      initialize();
    }
    return _logger;
  }

  /// Logs a debug message
  static void logDebugMessage({required String message}) {
    logger.d(message);
  }

  /// Logs an info message
  static void logInfo({required String message}) {
    logger.i(message);
  }

  /// Logs a warning message
  static void logWarning({required String message}) {
    logger.w(message);
  }

  /// Logs an error message with optional error object and stack trace
  static void logErrorMessage({
    required dynamic error,
    required String message,
    StackTrace? stackTrace,
  }) {
    logger.e("## ERROR - $message", error: error, stackTrace: stackTrace);
  }

  /// Logs a critical error that crashes the application
  static void logCritical({
    required dynamic error,
    required String message,
    StackTrace? stackTrace,
  }) {
    logger.f("## CRITICAL - $message", error: error, stackTrace: stackTrace);
  }
}
