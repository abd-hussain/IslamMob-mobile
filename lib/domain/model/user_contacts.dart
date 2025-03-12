import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_contacts.freezed.dart';

@freezed
class UserContacts with _$UserContacts {
  factory UserContacts({
    @Default('') String fullName,
    @Default('') String mobileNumber,
    @Default('') String email,
    @Default(false) bool selected,
  }) = _UserContacts;
}
