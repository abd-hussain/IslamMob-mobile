part of 'contacts_bloc.dart';

@freezed
class ContactsEvent with _$ContactsEvent {
  const factory ContactsEvent.fetchContacts() = _FetchContacts;
  const factory ContactsEvent.updateSelectedContact(
      {required UserContacts contact}) = _UpdateSelectedContact;
  const factory ContactsEvent.shareItem({
    required String message,
  }) = _ShareItem;
}
