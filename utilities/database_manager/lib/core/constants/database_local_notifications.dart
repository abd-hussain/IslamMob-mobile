/// Constants for local notification settings keys used in the database.
///
/// This class provides string constants for various notification disable settings
/// including prayer times, special Islamic occasions, and timing preferences.
/// These keys are used to store and retrieve notification preferences from the database.
class LocalNotificationConstant {
  /// Key for disabling all notifications for today.
  static const String disableAllForToday = "disableAllForToday";

  /// Key for disabling all notifications for three days.
  static const String disableAllForThreeDay = "disableAllForThreeDay";

  /// Key for disabling all notifications for a week.
  static const String disableAllForWeek = "disableAllForWeek";

  /// Key for disabling Fajr prayer notifications.
  static const String disableFajr = "disableFajr";

  /// Key for disabling Duhr prayer notifications.
  static const String disableDuher = "disableDuher";

  /// Key for disabling Asr prayer notifications.
  static const String disableAsr = "disableAsr";

  /// Key for disabling Maghrib prayer notifications.
  static const String disableMagrieb = "disableMagrieb";

  /// Key for disabling Isha prayer notifications.
  static const String disableIsha = "disableIsha";

  /// Key for disabling sunrise time notifications.
  static const String disableSunriseTime = "disableSunriseTime";

  /// Key for disabling Friday Al-Kahf notifications.
  static const String disableJom3aAlkahf = "disableJom3aAlkahf";

  /// Key for disabling Friday Du'aa notifications.
  static const String disableJom3aDo3aa = "disableJom3aDo3aa";

  /// Key for disabling Qiyam Al-Layl (night prayer) notifications.
  static const String disableQeyamAlLayel = "disableQeyamAlLayel";

  /// Key for disabling notifications 15 minutes before prayer time.
  static const String disableNotificationBefore15Min =
      "disableNotificationBefore15Min";
}
