part of 'setup_account_bloc.dart';

@freezed
class SetupAccountState with _$SetupAccountState {
  const factory SetupAccountState({
    @Default(true) bool isLoading,
  }) = _SetupAccountState;
}
