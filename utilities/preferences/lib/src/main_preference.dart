import 'package:preferences/src/islam_preferences.dart';
import 'package:preferences/src/islam_preferences_impl.dart';

class MainPreferences {
  static Future<IslamPreferences> create() async {
    return IslamPreferencesImpl.create();
  }
}
