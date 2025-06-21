/// Constants for database keys related to notification sound settings.
///
/// This class provides string constants used as database keys for storing
/// notification sound preferences for each of the five daily Islamic prayers.
/// These keys are used to persist user preferences for prayer notification sounds.
class DatabaseNotificationSoundConstant {
  /// Database key for Fajr prayer notification sound setting.
  ///
  /// Used to store and retrieve the notification sound preference for the
  /// Fajr (dawn) prayer.
  static const String fajirNotification = "fajirNotification";

  /// Database key for Dhuhr prayer notification sound setting.
  ///
  /// Used to store and retrieve the notification sound preference for the
  /// Dhuhr (midday) prayer.
  static const String zhurNotification = "zhurNotification";

  /// Database key for Asr prayer notification sound setting.
  ///
  /// Used to store and retrieve the notification sound preference for the
  /// Asr (afternoon) prayer.
  static const String asrNotification = "asrNotification";

  /// Database key for Maghrib prayer notification sound setting.
  ///
  /// Used to store and retrieve the notification sound preference for the
  /// Maghrib (sunset) prayer.
  static const String maghribNotification = "maghribNotification";

  /// Database key for Isha prayer notification sound setting.
  ///
  /// Used to store and retrieve the notification sound preference for the
  /// Isha (night) prayer.
  static const String ishaNotification = "ishaNotification";
}
