part of 'login_bloc.dart';

@freezed
class LoginEvent with _$LoginEvent {
  const factory LoginEvent.initialValues() = _InitialValues;
  const factory LoginEvent.updateLoginButtonEnablity({
    required IslamMobLocalizations localizations,
    required String email,
    required String password,
  }) = _UpdateLoginButtonEnablity;
  const factory LoginEvent.loginPressed({
    required String email,
    required String password,
    required bool savedCradintial,
  }) = _LoginPressed;
}
