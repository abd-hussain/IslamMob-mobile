part of 'about_us_bloc.dart';

@freezed
class AboutUsState with _$AboutUsState {
  const factory AboutUsState({
    @Default(false) bool rewardedAdExsist,
  }) = _AboutUsState;
}
