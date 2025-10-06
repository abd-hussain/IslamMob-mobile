part of 'welcome_login_bloc.dart';

@freezed
class WelcomeLoginEvent with _$WelcomeLoginEvent {
  const factory WelcomeLoginEvent.googleSignin() = _GoogleSignin;
  const factory WelcomeLoginEvent.appleSignin() = _AppleSignin;
  const factory WelcomeLoginEvent.facebookSignin() = _FacebookSignin;
  const factory WelcomeLoginEvent.checkUserExistance({
    required String signInMethod,
  }) = _CheckUserExistance;
}
