/// Constants for Firebase Firestore collection names.
///
/// This class provides centralized string constants for all Firestore
/// collection names used throughout the application. Using these constants
/// helps prevent typos and makes it easier to maintain collection names.
class FirebaseCollectionConstants {
  /// Collection name for storing Quran print/edition data.
  ///
  /// This collection contains information about different Quran prints
  /// or editions available in the application.
  static const quranPrints = 'quran_prints';

  /// Collection name for storing version information.
  ///
  /// This collection contains version-related data such as app version,
  /// data version, or other versioning information.
  static const version = 'version';

  /// Collection name for storing user contact information.
  ///
  /// This collection contains user contact details and related
  /// contact management data.
  static const user_contacts = 'user_contacts';

  static const registered_users = 'registered_users';
}
