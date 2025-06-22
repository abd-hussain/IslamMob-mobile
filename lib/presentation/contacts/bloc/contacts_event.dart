part of 'contacts_bloc.dart';

/// Events for the Contacts BLoC.
///
/// This sealed class defines all possible events for managing contacts and
/// Islamic content sharing functionality. These events handle:
/// - **Contact fetching** with permission management
/// - **Contact selection** for choosing sharing recipients
/// - **Content sharing** via SMS to selected contacts
///
/// The events support the Islamic principle of sharing beneficial knowledge
/// by enabling users to share prayer times, Islamic reminders, and religious
/// content with their family and friends through their contact list.
@freezed
class ContactsEvent with _$ContactsEvent {
  /// Event to fetch user contacts from the device.
  ///
  /// This event triggers the process of requesting contacts permission
  /// and loading the user's contact list for Islamic content sharing.
  /// It handles permission requests and contact data retrieval.
  const factory ContactsEvent.fetchContacts() = _FetchContacts;

  /// Event to update the selection state of a specific contact.
  ///
  /// This event toggles the selection state of a contact, allowing users
  /// to choose which contacts should receive the Islamic content being shared.
  ///
  /// Parameters:
  /// - [contact]: The contact whose selection state should be toggled
  const factory ContactsEvent.updateSelectedContact({
    required UserContacts contact,
  }) = _UpdateSelectedContact;

  /// Event to share Islamic content with selected contacts via SMS.
  ///
  /// This event sends the specified Islamic message to all selected contacts
  /// via SMS, enabling users to share prayer reminders, Islamic quotes,
  /// or other beneficial religious content with their network.
  ///
  /// Parameters:
  /// - [message]: The Islamic content message to share with selected contacts
  const factory ContactsEvent.shareItem({required String message}) = _ShareItem;
}
