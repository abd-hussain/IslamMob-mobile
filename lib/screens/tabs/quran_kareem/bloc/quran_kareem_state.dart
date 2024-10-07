part of 'quran_kareem_bloc.dart';

enum PageSide { left, right }

@freezed
class QuranKareemState with _$QuranKareemState {
  const factory QuranKareemState({
    @Default(true) bool showHelpBar,
    @Default(1) int pageCount,
    @Default(0) int sorahReferanceNumber,
    @Default(0) int jozo2ReferanceNumber,
    @Default(PageSide.left) PageSide pageSide,
    @Default([]) List<int> bookmarkedPages,
    @Default(0) double brigtness,
    RewardedAd? rewardedAd,
  }) = _QuranKareemState;
}
