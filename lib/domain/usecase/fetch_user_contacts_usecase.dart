import 'package:flutter_contacts/flutter_contacts.dart';
import 'package:islam_app/domain/model/user_contacts.dart';

/// Use case for fetching and managing user contacts for Islamic content sharing.
///
/// This class provides functionality to access the user's contact list for
/// sharing Islamic content and building community connections. It supports:
/// - **Permission management** for accessing device contacts
/// - **Contact data extraction** with names, phone numbers, and emails
/// - **Islamic content sharing** with friends and family
/// - **Community building** among Muslim users
/// - **Da'wah activities** by sharing beneficial Islamic content
///
/// The contact access enables features like:
/// - Sharing Quran verses or Hadith with specific contacts
/// - Inviting friends to use the Islam Mob app
/// - Building prayer group connections
/// - Sharing prayer time reminders with family
/// - Coordinating Islamic study groups or activities
///
/// This supports the Islamic principle of sharing beneficial knowledge
/// and maintaining strong community bonds (Ummah) among Muslims.
class FetchUserContactsUsecase {
  /// Requests permission to access the user's contacts.
  ///
  /// This method handles the permission request flow for accessing device
  /// contacts. It's essential to request permission before attempting to
  /// read contact data, following platform privacy guidelines.
  ///
  /// The permission is requested in read-only mode, ensuring the app
  /// cannot modify or delete user contacts, only read them for sharing
  /// Islamic content and building community connections.
  ///
  /// Returns `true` if permission is granted, `false` otherwise.
  /// The app should handle permission denial gracefully and explain
  /// to users why contact access is beneficial for Islamic content sharing.
  ///
  /// Example:
  /// ```dart
  /// final hasPermission = await FetchUserContactsUsecase.requestPermission();
  /// if (hasPermission) {
  ///   // Proceed to fetch contacts
  /// } else {
  ///   // Show explanation about contact sharing benefits
  /// }
  /// ```
  static Future<bool> requestPermission() async {
    // Request contact permission
    if (await FlutterContacts.requestPermission(readonly: true)) {
      return true;
    } else {
      return false;
    }
  }

  /// Fetches all user contacts from the device and converts them to app format.
  ///
  /// This method retrieves the complete contact list from the user's device
  /// and processes it into a format suitable for Islamic content sharing.
  /// It extracts essential information including:
  /// - Full contact names (display name or first + last name)
  /// - Phone numbers for SMS sharing of Islamic content
  /// - Email addresses for electronic communication
  ///
  /// The method filters contacts to include only those with phone numbers,
  /// as these are most useful for sharing Islamic reminders, prayer times,
  /// and other beneficial content via SMS or messaging apps.
  ///
  /// Contact information is processed to:
  /// - Remove spaces from phone numbers for consistency
  /// - Handle missing display names gracefully
  /// - Extract primary phone and email when multiple exist
  /// - Filter out contacts without phone numbers
  ///
  /// Returns a list of [UserContacts] objects containing the processed
  /// contact information ready for Islamic content sharing features.
  ///
  /// Note: This method should only be called after successfully requesting
  /// and receiving contact permissions via [requestPermission()].
  ///
  /// Example:
  /// ```dart
  /// if (await FetchUserContactsUsecase.requestPermission()) {
  ///   final contacts = await FetchUserContactsUsecase.call();
  ///   // Use contacts for sharing Islamic content
  /// }
  /// ```
  static Future<List<UserContacts>> call() async {
    final List<UserContacts> listOfContacts = [];

    // Get all contacts (fully fetched)
    final List<Contact> contatctList = await FlutterContacts.getContacts(
      withProperties: true,
    );

    for (final Contact item in contatctList) {
      final String contactName = item.displayName != ""
          ? item.displayName
          : "${item.name.first} ${item.name.last}";
      final String phoneNumber =
          item.phones.isNotEmpty ? item.phones.first.number : "";
      final String email = item.emails.isNotEmpty ? item.emails[0].address : "";

      if (phoneNumber.isNotEmpty) {
        listOfContacts.add(UserContacts(
          fullName: contactName,
          mobileNumber: phoneNumber.replaceAll(" ", ""),
          email: email,
        ));
      }
    }

    return listOfContacts;
  }
}
