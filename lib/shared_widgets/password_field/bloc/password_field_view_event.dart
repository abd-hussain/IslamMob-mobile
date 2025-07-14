part of 'password_field_view_bloc.dart';

@freezed
class PasswordFieldViewEvent with _$PasswordFieldViewEvent {
  const factory PasswordFieldViewEvent.updatePasswordVisability(bool value) =
      _UpdatePasswordVisability;
}
