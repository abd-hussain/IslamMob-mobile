part of 'about_us_bloc.dart';

@freezed
class AboutUsEvent with _$AboutUsEvent {
  factory AboutUsEvent.initializeRewardedAd() = _InitializeRewardedAd;
  factory AboutUsEvent.updateRewardedAd(bool value) = _UpdateRewardedAd;
}
