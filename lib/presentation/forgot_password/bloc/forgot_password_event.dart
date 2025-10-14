part of 'forgot_password_bloc.dart';

@freezed
abstract class ForgotPasswordEvent with _$ForgotPasswordEvent {
  const factory ForgotPasswordEvent.updateButtonEnablity({
    required IslamMobLocalizations localizations,
    required String email,
  }) = _UpdateButtonEnablity;
  const factory ForgotPasswordEvent.forgotPressed({
    required IslamMobLocalizations localizations,
    required String email,
  }) = _ForgotPressed;
}
