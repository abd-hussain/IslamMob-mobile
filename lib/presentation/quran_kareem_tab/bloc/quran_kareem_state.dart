part of 'quran_kareem_bloc.dart';

@freezed
class QuranKareemState with _$QuranKareemState {
  const factory QuranKareemState({
    @Default(false) bool showHelpBar,
    @Default(1) int pageCount,
    @Default(QuranKareemStatePageSideState.left())
    QuranKareemStatePageSideState pageSide,
    @Default([]) List<int> bookmarkedPages,
    @Default(0) double brigtness,
    @Default(false) bool rewardedAdExists,
    @Default("") String sourceFileOfPDF,
    @Default("") String sorahName,
    @Default("") String jozo2Name,
  }) = _QuranKareemState;
}

@freezed
sealed class QuranKareemStatePageSideState
    with _$QuranKareemStatePageSideState {
  const factory QuranKareemStatePageSideState.left() =
      QuranKareemStatePageSideStateLeft;
  const factory QuranKareemStatePageSideState.right() =
      QuranKareemStatePageSideStateRight;
}
