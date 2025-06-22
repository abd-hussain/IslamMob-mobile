import 'package:islam_app/l10n/gen/app_localizations.dart';

/// Extension on [IslamMobLocalizations] providing utility methods for localization.
///
/// This extension adds convenient methods for working with localized strings,
/// particularly useful for dynamic key-value lookups and reverse lookups.
/// It's especially helpful for Quran navigation where Surah names and Juz
/// numbers need to be mapped between keys and localized values.
extension AppLocalizationsExtension on IslamMobLocalizations {
  /// Retrieves a localized string based on the provided key.
  ///
  /// This method performs a lookup in the localization map using the given [key]
  /// and returns the corresponding localized string. It's useful for dynamic
  /// localization where the key is determined at runtime.
  ///
  /// Parameters:
  /// - [key]: The localization key to look up (e.g., 'quranSorahName1', '1')
  ///
  /// Returns the localized string for the given key, or an empty string if
  /// the key is not found in the localization map.
  ///
  /// Example:
  /// ```dart
  /// final surahName = localizations.getLocalizedString('quranSorahName1');
  /// // Returns "Al-Fatihah" in English or "الفاتحة" in Arabic
  /// ```
  String getLocalizedString(String key) {
    // Look up the localized string based on the provided key
    final localizedString = toJson()[key];
    return localizedString ??
        ''; // Returns an empty string if the key is not found
  }

  /// Performs a reverse lookup to find the key for a given localized value.
  ///
  /// This method searches through the localization map to find the key that
  /// corresponds to the provided localized string value. It's useful when
  /// you have a localized string and need to find its original key.
  ///
  /// Parameters:
  /// - [value]: The localized string value to search for
  ///
  /// Returns the key corresponding to the localized value, or an empty string
  /// if the value is not found in the localization map.
  ///
  /// Example:
  /// ```dart
  /// final key = localizations.getKeyFromLocalizedString('Al-Fatihah');
  /// // Returns 'quranSorahName1'
  /// ```
  String getKeyFromLocalizedString(String value) {
    // Reverse lookup to find the key based on the provided localized value
    final entry = toJson().entries.firstWhere(
      (element) => element.value == value,
      orElse: () => const MapEntry('', ''),
    );
    return entry.key; // Returns an empty string if the value is not found
  }
}

/// Extension on [IslamMobLocalizations] providing JSON conversion functionality.
///
/// This extension converts the localization object into a key-value map,
/// making it easier to perform dynamic lookups and reverse lookups for
/// Quran-related content such as Surah names and Juz numbers.
extension AppLocalizationsJson on IslamMobLocalizations {
  /// Converts the localization object to a key-value map.
  ///
  /// This method creates a comprehensive map containing all Quran-related
  /// localizations including:
  /// - All 114 Surah names (quranSorahName1 through quranSorahName114)
  /// - All 30 Juz numbers ('1' through '30')
  ///
  /// The map enables dynamic access to localized strings and supports
  /// both forward lookups (key to value) and reverse lookups (value to key).
  ///
  /// Returns a [Map<String, String>] where:
  /// - Keys are localization identifiers (e.g., 'quranSorahName1', '1')
  /// - Values are the corresponding localized strings
  ///
  /// This is particularly useful for:
  /// - Quran navigation and indexing
  /// - Dynamic Surah and Juz name resolution
  /// - Mapping between internal keys and user-visible names
  /// - Supporting both Arabic and English localization
  Map<String, String> toJson() {
    return {
      'quranSorahName1': quranSorahName1,
      'quranSorahName2': quranSorahName2,
      'quranSorahName3': quranSorahName3,
      'quranSorahName4': quranSorahName4,
      'quranSorahName5': quranSorahName5,
      'quranSorahName6': quranSorahName6,
      'quranSorahName7': quranSorahName7,
      'quranSorahName8': quranSorahName8,
      'quranSorahName9': quranSorahName9,
      'quranSorahName10': quranSorahName10,
      'quranSorahName11': quranSorahName11,
      'quranSorahName12': quranSorahName12,
      'quranSorahName13': quranSorahName13,
      'quranSorahName14': quranSorahName14,
      'quranSorahName15': quranSorahName15,
      'quranSorahName16': quranSorahName16,
      'quranSorahName17': quranSorahName17,
      'quranSorahName18': quranSorahName18,
      'quranSorahName19': quranSorahName19,
      'quranSorahName20': quranSorahName20,
      'quranSorahName21': quranSorahName21,
      'quranSorahName22': quranSorahName22,
      'quranSorahName23': quranSorahName23,
      'quranSorahName24': quranSorahName24,
      'quranSorahName25': quranSorahName25,
      'quranSorahName26': quranSorahName26,
      'quranSorahName27': quranSorahName27,
      'quranSorahName28': quranSorahName28,
      'quranSorahName29': quranSorahName29,
      'quranSorahName30': quranSorahName30,
      'quranSorahName31': quranSorahName31,
      'quranSorahName32': quranSorahName32,
      'quranSorahName33': quranSorahName33,
      'quranSorahName34': quranSorahName34,
      'quranSorahName35': quranSorahName35,
      'quranSorahName36': quranSorahName36,
      'quranSorahName37': quranSorahName37,
      'quranSorahName38': quranSorahName38,
      'quranSorahName39': quranSorahName39,
      'quranSorahName40': quranSorahName40,
      'quranSorahName41': quranSorahName41,
      'quranSorahName42': quranSorahName42,
      'quranSorahName43': quranSorahName43,
      'quranSorahName44': quranSorahName44,
      'quranSorahName45': quranSorahName45,
      'quranSorahName46': quranSorahName46,
      'quranSorahName47': quranSorahName47,
      'quranSorahName48': quranSorahName48,
      'quranSorahName49': quranSorahName49,
      'quranSorahName50': quranSorahName50,
      'quranSorahName51': quranSorahName51,
      'quranSorahName52': quranSorahName52,
      'quranSorahName53': quranSorahName53,
      'quranSorahName54': quranSorahName54,
      'quranSorahName55': quranSorahName55,
      'quranSorahName56': quranSorahName56,
      'quranSorahName57': quranSorahName57,
      'quranSorahName58': quranSorahName58,
      'quranSorahName59': quranSorahName59,
      'quranSorahName60': quranSorahName60,
      'quranSorahName61': quranSorahName61,
      'quranSorahName62': quranSorahName62,
      'quranSorahName63': quranSorahName63,
      'quranSorahName64': quranSorahName64,
      'quranSorahName65': quranSorahName65,
      'quranSorahName66': quranSorahName66,
      'quranSorahName67': quranSorahName67,
      'quranSorahName68': quranSorahName68,
      'quranSorahName69': quranSorahName69,
      'quranSorahName70': quranSorahName70,
      'quranSorahName71': quranSorahName71,
      'quranSorahName72': quranSorahName72,
      'quranSorahName73': quranSorahName73,
      'quranSorahName74': quranSorahName74,
      'quranSorahName75': quranSorahName75,
      'quranSorahName76': quranSorahName76,
      'quranSorahName77': quranSorahName77,
      'quranSorahName78': quranSorahName78,
      'quranSorahName79': quranSorahName79,
      'quranSorahName80': quranSorahName80,
      'quranSorahName81': quranSorahName81,
      'quranSorahName82': quranSorahName82,
      'quranSorahName83': quranSorahName83,
      'quranSorahName84': quranSorahName84,
      'quranSorahName85': quranSorahName85,
      'quranSorahName86': quranSorahName86,
      'quranSorahName87': quranSorahName87,
      'quranSorahName88': quranSorahName88,
      'quranSorahName89': quranSorahName89,
      'quranSorahName90': quranSorahName90,
      'quranSorahName91': quranSorahName91,
      'quranSorahName92': quranSorahName92,
      'quranSorahName93': quranSorahName93,
      'quranSorahName94': quranSorahName94,
      'quranSorahName95': quranSorahName95,
      'quranSorahName96': quranSorahName96,
      'quranSorahName97': quranSorahName97,
      'quranSorahName98': quranSorahName98,
      'quranSorahName99': quranSorahName99,
      'quranSorahName100': quranSorahName100,
      'quranSorahName101': quranSorahName101,
      'quranSorahName102': quranSorahName102,
      'quranSorahName103': quranSorahName103,
      'quranSorahName104': quranSorahName104,
      'quranSorahName105': quranSorahName105,
      'quranSorahName106': quranSorahName106,
      'quranSorahName107': quranSorahName107,
      'quranSorahName108': quranSorahName108,
      'quranSorahName109': quranSorahName109,
      'quranSorahName110': quranSorahName110,
      'quranSorahName111': quranSorahName111,
      'quranSorahName112': quranSorahName112,
      'quranSorahName113': quranSorahName113,
      'quranSorahName114': quranSorahName114,
      '1': jusone,
      '2': justwo,
      '3': justhree,
      '4': jusfour,
      '5': jusfive,
      '6': jussix,
      '7': jusseven,
      '8': juseight,
      '9': jusnine,
      '10': justen,
      '11': juseleven,
      '12': justwelve,
      '13': justhirteen,
      '14': jusfourteen,
      '15': jusfifteen,
      '16': jussixteen,
      '17': jusseventeen,
      '18': juseightteen,
      '19': jusnineteen,
      '20': justtwenty,
      '21': justwentyone,
      '22': justwentytwo,
      '23': justwentythree,
      '24': justwentyfour,
      '25': justwentyfive,
      '26': justwentysix,
      '27': justwentyseven,
      '28': justwentyeight,
      '29': justwentynine,
      '30': justhirty,
    };
  }
}
