part of 'contacts_bloc.dart';

@freezed
class ContactsState with _$ContactsState {
  const factory ContactsState({
    @Default([]) List<UserContacts> listOfContacts,
    @Default(ContactsProgressStateIdl()) ContactsProgressState station,
  }) = _ContactsState;
}

@freezed
sealed class ContactsProgressState with _$ContactsProgressState {
  const factory ContactsProgressState.idl() = ContactsProgressStateIdl;
  const factory ContactsProgressState.success() = ContactsProgressStateSuccess;
  const factory ContactsProgressState.errorPermission() =
      ContactsProgressStateErrorPermission;
}
