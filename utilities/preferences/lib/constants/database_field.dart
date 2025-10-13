/// Constants for database field names used in local storage.
///
/// This class provides centralized string constants for field names
/// used throughout the application's local database operations. Using these
/// constants helps prevent typos and makes it easier to maintain field names.
class DatabaseFieldConstant {
  /// Field name for storing the user's notification token.
  ///
  /// This field contains the Firebase Cloud Messaging (FCM) token
  /// used for sending push notifications to the user's device.
  static const String notificationToken = "notificationToken";

  /// Field name for storing the user's preferred language code.
  ///
  /// This field contains the language code (e.g., 'en', 'ar') that
  /// represents the user's selected language preference for the app.
  static const String userLanguageCode = "userLanguageCode";

  /// Field name for storing synchronized user contacts data.
  ///
  /// This field contains information about user contacts that have been
  /// synchronized with the application's contact management system.
  static const String sinkedUserContacts = "sinkedUserContacts";
}
