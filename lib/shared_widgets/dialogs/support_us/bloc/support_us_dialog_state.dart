part of 'support_us_dialog_bloc.dart';

@freezed
class SupportUsDialogState with _$SupportUsDialogState {
  const factory SupportUsDialogState({
    @Default(false) bool rewardedAdExsist,
  }) = _SupportUsDialogState;
}
