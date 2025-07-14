part of 'change_password_bloc.dart';

@freezed
class ChangePasswordState with _$ChangePasswordState {
  const factory ChangePasswordState({
    @Default(ChangePasswordProcessState.idl())
    ChangePasswordProcessState processState,
    @Default(false) bool isButtonEnabled,
    @Default("") String errorMessage,
  }) = _ChangePasswordState;
}

@freezed
sealed class ChangePasswordProcessState with _$ChangePasswordProcessState {
  const factory ChangePasswordProcessState.idl() = ChangePasswordProcessIdl;
  const factory ChangePasswordProcessState.loading() =
      ChangePasswordProcessLoading;
  const factory ChangePasswordProcessState.success() =
      ChangePasswordProcessSuccess;
  const factory ChangePasswordProcessState.error(String message) =
      ChangePasswordProcessError;
}
