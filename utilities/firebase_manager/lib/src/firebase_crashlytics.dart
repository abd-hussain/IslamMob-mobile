import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:logger_manager/logger_manager.dart';

/// A manager class for Firebase Crashlytics functionality.
///
/// This class provides a wrapper around Firebase Crashlytics to handle
/// error reporting, crash logging, and user identification. It integrates
/// with the local logger manager to provide both local and remote logging
/// capabilities for debugging and monitoring application issues.
class FirebaseCrashlyticsManager {
  /// Logs an error message to both local logger and Firebase Crashlytics.
  ///
  /// This method records the error locally using [LoggerManagerBase] and
  /// sends it to Firebase Crashlytics for remote monitoring and analysis.
  ///
  /// [error] - The error object to be logged and reported.
  /// [message] - A descriptive message explaining the context of the error.
  ///
  /// Returns the result from the local logger operation.
  dynamic logErrorMessageCrashlytics(
      {required dynamic error, required String message}) {
    LoggerManagerBase.logErrorMessage(error: error, message: message);
    FirebaseCrashlytics.instance.recordError(error, StackTrace.current);
  }

  /// Initializes Firebase Crashlytics for the application.
  ///
  /// This method enables crash reporting collection in Firebase Crashlytics.
  /// It should be called during app initialization to start collecting
  /// crash reports and analytics data.
  ///
  /// Returns a [Future] that completes when initialization is finished.
  static Future<void> initialize() async {
    await FirebaseCrashlytics.instance.setCrashlyticsCollectionEnabled(true);
  }

  /// Sets a user identifier for crash reports.
  ///
  /// This method associates crash reports with a specific user identifier,
  /// making it easier to track issues for specific users and provide
  /// better support and debugging capabilities.
  ///
  /// [identifier] - A unique identifier for the current user.
  ///
  /// Returns a [Future] that completes when the user identifier is set.
  static Future<void> setUserIdentifier(String identifier) async {
    await FirebaseCrashlytics.instance.setUserIdentifier(identifier);
  }

  /// Logs a custom message to Firebase Crashlytics.
  ///
  /// This method adds custom log messages to crash reports, providing
  /// additional context about the application state leading up to crashes.
  /// These logs are included in crash reports to help with debugging.
  ///
  /// [message] - The message to log to Crashlytics.
  ///
  /// Returns a [Future] that completes when the message is logged.
  static Future<void> log(String message) async {
    await FirebaseCrashlytics.instance.log(message);
  }
}
