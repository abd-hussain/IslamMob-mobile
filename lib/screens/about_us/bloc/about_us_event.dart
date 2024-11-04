part of 'about_us_bloc.dart';

@freezed
class AboutUsEvent with _$AboutUsEvent {
  factory AboutUsEvent.updateRewardedAd(RewardedAd? value) = _UpdateRewardedAd;
}
