part of 'contacts_bloc.dart';

/// State for the Contacts BLoC.
///
/// This immutable state class manages the state of the contacts interface
/// for sharing Islamic content with contacts via SMS. The state tracks:
/// - **Contact list** with user's device contacts and their selection states
/// - **Progress state** for contact loading, success, and permission handling
///
/// The contacts state enables Muslims to share Islamic content, prayer
/// reminders, and beneficial religious knowledge with their family and
/// friends, supporting the Islamic principle of sharing beneficial knowledge.
@freezed
abstract class ContactsState with _$ContactsState {
  /// Creates a [ContactsState] with contact list and progress information.
  ///
  /// Parameters:
  /// - [listOfContacts]: List of user contacts with selection states for sharing.
  ///   Defaults to an empty list. Each contact includes name, phone number, and
  ///   selection status for Islamic content sharing.
  /// - [station]: Current progress state of contact operations including loading,
  ///   success, and permission error states. Defaults to idle state.
  ///
  /// The state provides comprehensive information for managing contact-based
  /// Islamic content sharing functionality.
  const factory ContactsState({
    @Default([]) List<UserContacts> listOfContacts,
    @Default(ContactsProgressStateIdl()) ContactsProgressState station,
  }) = _ContactsState;
}

/// Sealed class representing the progress state of contacts operations.
///
/// This sealed class defines the possible states during contact loading
/// and permission handling operations, providing clear state management
/// for the Islamic content sharing interface.
@freezed
sealed class ContactsProgressState with _$ContactsProgressState {
  const factory ContactsProgressState.idl() = ContactsProgressStateIdl;
  const factory ContactsProgressState.success() = ContactsProgressStateSuccess;
  const factory ContactsProgressState.errorPermission() =
      ContactsProgressStateErrorPermission;
}
