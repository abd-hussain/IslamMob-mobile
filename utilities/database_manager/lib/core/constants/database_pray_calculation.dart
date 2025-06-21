/// Constants for prayer calculation-related database field keys.
///
/// This class provides string constants for storing and retrieving prayer
/// calculation settings in the database, including madhab, calculation methods,
/// time adjustments, and timezone configurations used for accurate prayer times.
class DatabaseFieldPrayCalculationConstant {
  /// Key for storing the selected madhab (Islamic jurisprudence school).
  static const String selectedMadhab = "selectedMadhab";

  /// Key for storing the selected prayer calculation method.
  static const String selectedCalculationMethod = "selectedCalculationMethod";

  /// Key for storing the hour difference with UTC timezone.
  static const String selectedDifferenceWithUTCHour =
      "selectedDifferenceWithUTCHour";

  /// Key for storing the minute difference with UTC timezone.
  static const String selectedDifferenceWithUTCMin =
      "selectedDifferenceWithUTCMin";

  /// Key for storing the Fajr prayer time adjustment in minutes.
  static const String selectedTimeFajirMin = "selectedTimeFajirMin";

  /// Key for storing the sunrise time adjustment in minutes.
  static const String selectedTimeSunriseMin = "selectedTimeSunriseMin";

  /// Key for storing the Dhuhr prayer time adjustment in minutes.
  static const String selectedTimeZhurMin = "selectedTimeZhurMin";

  /// Key for storing the Asr prayer time adjustment in minutes.
  static const String selectedTimeAsrMin = "selectedTimeAsrMin";

  /// Key for storing the Maghrib prayer time adjustment in minutes.
  static const String selectedTimeMaghribMin = "selectedTimeMaghribMin";

  /// Key for storing the Isha prayer time adjustment in minutes.
  static const String selectedTimeIshaMin = "selectedTimeIshaMin";

  /// Key for storing the midnight time adjustment in minutes.
  static const String selectedTimeMidnightMin = "selectedTimeMidnightMin";

  /// Key for storing the last third of night time adjustment in minutes.
  static const String selectedTimeLast3thOfNightMin =
      "selectedTimeLast3thOfNightMin";

  /// Key for storing the high latitude calculation method setting.
  static const String selectedHighLatitude = "selectedHighLatitude";
}
