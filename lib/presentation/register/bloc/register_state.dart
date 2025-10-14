part of 'register_bloc.dart';

@freezed
abstract class RegisterState with _$RegisterState {
  const factory RegisterState({
    @Default(RegisterProcessState.idl()) RegisterProcessState processState,
    @Default(false) bool isRegisterButtonEnabled,
    @Default("") String errorMessage,
  }) = _RegisterState;
}

@freezed
sealed class RegisterProcessState with _$RegisterProcessState {
  const factory RegisterProcessState.idl() = _RegisterProcessStateIdl;
  const factory RegisterProcessState.loading() = _RegisterProcessStateLoading;
  const factory RegisterProcessState.success() = _RegisterProcessStateSuccess;
  const factory RegisterProcessState.error(String message) =
      _RegisterProcessStateError;
}
