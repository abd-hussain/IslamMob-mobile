part of 'manual_login_bloc.dart';

@freezed
abstract class ManualLoginState with _$ManualLoginState {
  const factory ManualLoginState({
    @Default(ManualLoginProcessState.loading())
    ManualLoginProcessState processState,
    @Default(false) bool isLoginButtonEnabled,
    @Default("") String errorMessage,
  }) = _ManualLoginState;
}

@freezed
sealed class ManualLoginProcessState with _$ManualLoginProcessState {
  const factory ManualLoginProcessState.loading() = ManualLoginProcessLoading;
  const factory ManualLoginProcessState.idl({
    required String email,
    required String password,
  }) = ManualLoginProcessIdl;
  const factory ManualLoginProcessState.success() = ManualLoginProcessSuccess;
  const factory ManualLoginProcessState.error(String message) =
      ManualLoginProcessError;
}
