part of 'login_bloc.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState({
    @Default(LoginProcessState.loading()) LoginProcessState processState,
    @Default(false) bool isLoginButtonEnabled,
    @Default("") String errorMessage,
  }) = _LoginState;
}

@freezed
sealed class LoginProcessState with _$LoginProcessState {
  const factory LoginProcessState.loading() = LoginProcessLoading;
  const factory LoginProcessState.idl({
    required String email,
    required String password,
  }) = LoginProcessIdl;
  const factory LoginProcessState.success() = LoginProcessSuccess;
  const factory LoginProcessState.error(String message) = LoginProcessError;
}
