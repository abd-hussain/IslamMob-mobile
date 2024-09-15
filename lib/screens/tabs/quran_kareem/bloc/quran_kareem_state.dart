part of 'quran_kareem_bloc.dart';

enum PageSide { left, right }

@freezed
class QuranKareemState with _$QuranKareemState {
  const factory QuranKareemState({
    @Default(true) bool showHelpBar,
    @Default(1) int pageCount,
    @Default("") String sorahName,
    @Default("") String jozo2Name,
    @Default(0) double hezebNumber,
    @Default(PageSide.left) PageSide pageSide,
  }) = _QuranKareemState;
}
