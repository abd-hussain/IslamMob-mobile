import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_contacts.freezed.dart';

/// A model representing user contact information for sharing and communication features.
///
/// This immutable data class encapsulates contact information that can be used
/// for various app features such as:
/// - Sharing Islamic content with friends and family
/// - Inviting others to use the Islam Mob app
/// - Building community connections among Muslim users
/// - Contact-based features for Islamic reminders or group activities
///
/// The model includes:
/// - **Personal identification** through full name
/// - **Communication channels** via mobile and email
/// - **Selection state** for multi-contact operations
///
/// This supports the Islamic principle of community (Ummah) by enabling
/// users to share beneficial Islamic content and connect with other Muslims
/// in their network for mutual spiritual benefit.
@freezed
class UserContacts with _$UserContacts {
  /// Creates a [UserContacts] instance representing contact information.
  ///
  /// Parameters:
  /// - [fullName]: The complete name of the contact (defaults to empty string)
  /// - [mobileNumber]: The mobile phone number for SMS or calls (defaults to empty string)
  /// - [email]: The email address for electronic communication (defaults to empty string)
  /// - [selected]: Whether this contact is currently selected for operations (defaults to false)
  ///
  /// All contact information fields default to empty strings to support
  /// partial contact data scenarios. The [selected] field enables batch
  /// operations on multiple contacts, such as sharing Islamic content
  /// with selected friends or inviting multiple people to use the app.
  ///
  /// The contact information can be used for:
  /// - Sharing Quran verses, Hadith, or Islamic reminders
  /// - Inviting friends to join Islamic study groups or app usage
  /// - Building connections within the Muslim community
  /// - Coordinating Islamic activities or prayer times
  ///
  /// Example:
  /// ```dart
  /// final contact = UserContacts(
  ///   fullName: 'Ahmed Abdullah',
  ///   mobileNumber: '+1234567890',
  ///   email: 'ahmed@example.com',
  ///   selected: true,
  /// );
  /// ```
  factory UserContacts({
    @Default('') String fullName,
    @Default('') String mobileNumber,
    @Default('') String email,
    @Default(false) bool selected,
  }) = _UserContacts;
}
