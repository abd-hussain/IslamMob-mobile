import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:logger_manager/logger_manager.dart';

/// Repository class for managing Firebase Remote Config operations.
///
/// This class provides a simplified interface for initializing and retrieving
/// values from Firebase Remote Config with error handling and logging.
/// It supports string, boolean, integer, and double value types.
class FirebaseRemoteConfigRepository {
  static final FirebaseRemoteConfig _remoteConfig =
      FirebaseRemoteConfig.instance;

  /// Initializes Firebase Remote Config with the specified settings.
  ///
  /// [fetchTimeout] - Maximum time to wait for a fetch operation to complete.
  /// [minimumFetchInterval] - Minimum interval between fetch operations.
  static Future<void> initialize({
    Duration fetchTimeout = const Duration(minutes: 1),
    Duration minimumFetchInterval = const Duration(hours: 12),
  }) async {
    try {
      await _remoteConfig.setConfigSettings(RemoteConfigSettings(
        fetchTimeout: fetchTimeout,
        minimumFetchInterval: minimumFetchInterval,
      ));
      await _remoteConfig.fetchAndActivate();
    } catch (e) {
      LoggerManagerBase.logCritical(
        error: e,
        message: 'Error initializing Remote Config',
      );
    }
  }

  /// Retrieves a string value from Firebase Remote Config.
  ///
  /// [key] - The configuration key to retrieve the value for.
  /// [defaultValue] - The default value to return if the key is not found
  /// or an error occurs. Defaults to an empty string.
  ///
  /// Returns the string value associated with the key, or the default value
  /// if the key doesn't exist or an error occurs during retrieval.
  static String getString(String key, {String defaultValue = ''}) {
    try {
      return _remoteConfig.getString(key);
    } catch (e) {
      LoggerManagerBase.logErrorMessage(
        error: e,
        message: 'Error getting string from Remote Config',
      );
      return defaultValue;
    }
  }

  /// Retrieves a boolean value from Firebase Remote Config.
  ///
  /// [key] - The configuration key to retrieve the value for.
  /// [defaultValue] - The default value to return if the key is not found
  /// or an error occurs. Defaults to false.
  ///
  /// Returns the boolean value associated with the key, or the default value
  /// if the key doesn't exist or an error occurs during retrieval.
  static bool getBool(String key, {bool defaultValue = false}) {
    try {
      return _remoteConfig.getBool(key);
    } catch (e) {
      LoggerManagerBase.logErrorMessage(
        error: e,
        message: 'Error getting bool from Remote Config',
      );
      return defaultValue;
    }
  }

  /// Retrieves an integer value from Firebase Remote Config.
  ///
  /// [key] - The configuration key to retrieve the value for.
  /// [defaultValue] - The default value to return if the key is not found
  /// or an error occurs. Defaults to 0.
  ///
  /// Returns the integer value associated with the key, or the default value
  /// if the key doesn't exist or an error occurs during retrieval.
  static int getInt(String key, {int defaultValue = 0}) {
    try {
      return _remoteConfig.getInt(key);
    } catch (e) {
      LoggerManagerBase.logErrorMessage(
        error: e,
        message: 'Error getting int from Remote Config',
      );
      return defaultValue;
    }
  }

  /// Retrieves a double value from Firebase Remote Config.
  ///
  /// [key] - The configuration key to retrieve the value for.
  /// [defaultValue] - The default value to return if the key is not found
  /// or an error occurs. Defaults to 0.0.
  ///
  /// Returns the double value associated with the key, or the default value
  /// if the key doesn't exist or an error occurs during retrieval.
  static double getDouble(String key, {double defaultValue = 0.0}) {
    try {
      return _remoteConfig.getDouble(key);
    } catch (e) {
      LoggerManagerBase.logErrorMessage(
        error: e,
        message: 'Error getting double from Remote Config',
      );
      return defaultValue;
    }
  }
}
