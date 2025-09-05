part of 'welcome_login_bloc.dart';

@freezed
sealed class WelcomeLoginState with _$WelcomeLoginState {
  const factory WelcomeLoginState({
    @Default(WelcomeLoginProccessState.idle())
    WelcomeLoginProccessState proccessState,
  }) = _WelcomeLoginState;
}

@freezed
class WelcomeLoginProccessState with _$WelcomeLoginProccessState {
  const factory WelcomeLoginProccessState.idle() =
      WelcomeLoginProccessStateIdle;
  const factory WelcomeLoginProccessState.loading() =
      WelcomeLoginProccessStateLoading;
  const factory WelcomeLoginProccessState.success(bool hasAccount) =
      WelcomeLoginProccessStateSuccess;
  const factory WelcomeLoginProccessState.error(String message) =
      WelcomeLoginProccessStateError;
}
