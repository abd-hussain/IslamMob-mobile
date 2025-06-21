import 'package:database_manager/core/constants/database_box.dart';
import 'package:hive_flutter/hive_flutter.dart';

/// Base class for managing local database operations using Hive.
///
/// This class provides a centralized interface for all local database
/// operations in the Islamic application, managing user preferences,
/// settings, and cached data. It features:
/// - **Hive integration** for efficient local storage
/// - **Type-safe operations** with proper error handling
/// - **Batch operations** for multiple data updates
/// - **Initialization management** for database setup
///
/// The database manager is essential for storing Islamic app data including
/// prayer time preferences, location settings, favorite content, and user
/// customizations that persist across app sessions.
class DataBaseManagerBase {
  /// Private Hive box instance for user information and app data storage.
  static final Box<dynamic> _userBox = Hive.box(DatabaseBoxConstant.userInfo);

  /// Initializes Hive database and opens required storage boxes.
  ///
  /// This method sets up the local database system for the Islamic app,
  /// initializing Hive Flutter integration and opening the user information
  /// box for storing app preferences and Islamic content data.
  ///
  /// Must be called before any database operations to ensure proper
  /// database initialization and box availability.
  static Future<void> initializeHive() async {
    await Hive.initFlutter();
    await Hive.openBox(DatabaseBoxConstant.userInfo);
  }

  /// Retrieves a value from the database with a fallback default.
  ///
  /// This method fetches data from the local Hive database using the
  /// specified key. If the key doesn't exist, returns the provided
  /// default value to ensure safe data access.
  ///
  /// Parameters:
  /// - [key]: The database key to retrieve data for
  /// - [defaultValue]: Fallback value if key doesn't exist
  ///
  /// Returns the stored value or default value if key is not found.
  static dynamic getFromDatabase(
      {required String key, required dynamic defaultValue}) {
    return _userBox.get(key, defaultValue: defaultValue);
  }

  /// Saves a value to the database with the specified key.
  ///
  /// This method stores data in the local Hive database, persisting
  /// Islamic app preferences, settings, and user data across app sessions.
  ///
  /// Parameters:
  /// - [key]: The database key to store data under
  /// - [value]: The value to store in the database
  ///
  /// The operation is asynchronous and completes when data is persisted.
  static Future<void> saveInDatabase(
      {required String key, required dynamic value}) async {
    return _userBox.put(key, value);
  }

  /// Updates multiple values in Hive storage
  static Future<void> saveMultipleInDatabase(
      {required Map<String, dynamic> data}) async {
    for (final entry in data.entries) {
      await _userBox.put(entry.key, entry.value);
    }
  }
}
