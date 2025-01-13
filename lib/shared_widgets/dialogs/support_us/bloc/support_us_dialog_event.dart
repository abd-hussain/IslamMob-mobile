part of 'support_us_dialog_bloc.dart';

@freezed
class SupportUsDialogEvent with _$SupportUsDialogEvent {
  factory SupportUsDialogEvent.initializeRewardedAd() = _InitializeRewardedAd;
  factory SupportUsDialogEvent.updateRewardedAd(bool value) = _UpdateRewardedAd;
}
