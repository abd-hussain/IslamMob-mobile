part of 'manual_login_bloc.dart';

@freezed
class ManualLoginEvent with _$ManualLoginEvent {
  const factory ManualLoginEvent.initialValues() = _ManualInitialValues;
  const factory ManualLoginEvent.updateLoginButtonEnablity({
    required IslamMobLocalizations localizations,
    required String email,
    required String password,
  }) = _ManualUpdateLoginButtonEnablity;
  const factory ManualLoginEvent.loginPressed({
    required String email,
    required String password,
    required bool savedCradintial,
  }) = _ManualLoginPressed;
}
