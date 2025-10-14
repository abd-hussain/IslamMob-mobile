part of 'forgot_password_bloc.dart';

@freezed
abstract class ForgotPasswordState with _$ForgotPasswordState {
  const factory ForgotPasswordState({
    @Default(ForgotPasswordProcessState.idl())
    ForgotPasswordProcessState processState,
    @Default(false) bool isForgotButtonEnabled,
    @Default("") String errorMessage,
  }) = _ForgotPasswordState;
}

@freezed
sealed class ForgotPasswordProcessState with _$ForgotPasswordProcessState {
  const factory ForgotPasswordProcessState.loading() =
      ForgotPasswordProcessStateLoading;
  const factory ForgotPasswordProcessState.idl() =
      ForgotPasswordProcessStateIdl;
  const factory ForgotPasswordProcessState.success() =
      ForgotPasswordProcessStateSuccess;
  const factory ForgotPasswordProcessState.error(String message) =
      ForgotPasswordProcessStateError;
}
