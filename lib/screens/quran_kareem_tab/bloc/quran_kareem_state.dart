part of 'quran_kareem_bloc.dart';

enum PageSide { left, right }
//TODO: This tree need to be refactored

@freezed
class QuranKareemState with _$QuranKareemState {
  const factory QuranKareemState({
    @Default(false) bool showHelpBar,
    @Default(1) int pageCount,
    @Default(PageSide.left) PageSide pageSide,
    @Default([]) List<int> bookmarkedPages,
    @Default(0) double brigtness,
    RewardedAd? rewardedAd,
    @Default("") String sourceFileOfPDF,
    @Default("") String sorahName,
    @Default("") String jozo2Name,
  }) = _QuranKareemState;
}
