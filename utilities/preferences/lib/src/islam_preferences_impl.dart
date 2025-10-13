import 'dart:convert';

import 'package:preferences/src/islam_preferences.dart';
import 'package:shared_preferences/shared_preferences.dart';

class IslamPreferencesImpl implements IslamPreferences {
  final SharedPreferences _preferences;

  const IslamPreferencesImpl(this._preferences);

  static Future<IslamPreferencesImpl> create() async {
    final prefs = await SharedPreferences.getInstance();
    return IslamPreferencesImpl(prefs);
  }

  @override
  T getValue<T>({required String key, required T defaultValue}) {
    if (!_preferences.containsKey(key)) return defaultValue;

    final value = _preferences.get(key);

    // Check if the value matches the expected type
    if (value is T) {
      return value;
    }

    // Handle List<String> case safely
    if (defaultValue is List<String> && value is List<Object?>) {
      return List<String>.from(value) as T; // Ensure a growable List<String>
    }

    // Handle JSON-encoded Map or List
    if (value is String && (defaultValue is Map || defaultValue is List)) {
      try {
        final decoded = jsonDecode(value);
        if (decoded is T) {
          return decoded;
        }
      } catch (_) {
        // If JSON decode fails, return default
        return defaultValue;
      }
    }

    throw Exception(
      "Value for key '$key' is not of type ${defaultValue.runtimeType}",
    );
  }

  @override
  Future<void> setValue<T>({required String key, required T value}) async {
    if (value is String) {
      await _preferences.setString(key, value);
    } else if (value is int) {
      await _preferences.setInt(key, value);
    } else if (value is bool) {
      await _preferences.setBool(key, value);
    } else if (value is double) {
      await _preferences.setDouble(key, value);
    } else if (value is List<String>) {
      await _preferences.setStringList(key, value);
    } else if (value is Map || value is List) {
      // Convert Map or List to JSON string
      await _preferences.setString(key, jsonEncode(value));
    } else {
      throw Exception("Unsupported type ${T.runtimeType} for key '$key'");
    }
  }

  @override
  Future<void> saveMultiValue({required Map<String, dynamic> data}) async {
    for (final entry in data.entries) {
      final key = entry.key;
      final value = entry.value;

      if (value is String) {
        await _preferences.setString(key, value);
      } else if (value is int) {
        await _preferences.setInt(key, value);
      } else if (value is bool) {
        await _preferences.setBool(key, value);
      } else if (value is double) {
        await _preferences.setDouble(key, value);
      } else if (value is List<String>) {
        await _preferences.setStringList(key, value);
      } else if (value is Map || value is List) {
        // Convert Map or List to JSON string
        await _preferences.setString(key, jsonEncode(value));
      } else {
        throw Exception("Unsupported type ${value.runtimeType} for key '$key'");
      }
    }
  }

  @override
  bool isKeyExist(String key) {
    return _preferences.containsKey(key);
  }

  @override
  Future<bool> remove(String key) {
    return _preferences.remove(key);
  }

  @override
  Future<bool> clear() {
    return _preferences.clear();
  }
}
