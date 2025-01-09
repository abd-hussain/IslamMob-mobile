import 'package:database_manager/core/constants/database_box.dart';
import 'package:hive_flutter/hive_flutter.dart';

class DataBaseManagerBase {
  static final Box _userBox = Hive.box(DatabaseBoxConstant.userInfo);

  /// Initializes Hive and opens required boxes
  static Future<void> initializeHive() async {
    await Hive.initFlutter();
    await Hive.openBox(DatabaseBoxConstant.userInfo);
  }

  static dynamic getFromDatabase(
      {required String key, required dynamic defaultValue}) {
    return _userBox.get(key, defaultValue: defaultValue);
  }

  static Future<void> saveInDatabase(
      {required String key, required dynamic value}) async {
    return await _userBox.put(key, value);
  }

  /// Updates multiple values in Hive storage
  static Future<void> saveMultipleInDatabase(
      {required Map<String, dynamic> data}) async {
    for (var entry in data.entries) {
      await _userBox.put(entry.key, entry.value);
    }
  }
}
