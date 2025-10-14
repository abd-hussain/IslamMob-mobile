part of 'change_password_bloc.dart';

@freezed
abstract class ChangePasswordEvent with _$ChangePasswordEvent {
  const factory ChangePasswordEvent.updateButtonEnablity({
    required IslamMobLocalizations localizations,
    required String oldPassword,
    required String newPassword,
    required String confirmPassword,
  }) = _UpdateButtonEnablity;
  const factory ChangePasswordEvent.changePressed({
    required IslamMobLocalizations localizations,
    required String oldPassword,
    required String newPassword,
    required String confirmPassword,
  }) = _ChangePressed;
}
