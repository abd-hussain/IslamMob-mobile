part of 'quran_kareem_bloc.dart';

/// Events for the Quran Kareem BLoC.
///
/// This class defines all possible events that can be dispatched to the
/// [QuranKareemBloc] to trigger state changes in the Quran reading interface.
@freezed
class QuranKareemEvent with _$QuranKareemEvent {
  /// Shows or hides the help bar in the Quran interface.
  ///
  /// [status] - true to show the help bar, false to hide it.
  factory QuranKareemEvent.showHideHelpBar(bool status) = _ShowHideHelpBar;

  /// Updates the current page count in the Quran.
  ///
  /// [pageCount] - the new page number to display.
  factory QuranKareemEvent.updatePageCount(int pageCount) = _UpdatePageCount;

  /// Updates the side page state (left or right page display).
  ///
  /// [side] - the side page state to set.
  factory QuranKareemEvent.updateSidePage(QuranKareemStatePageSideState side) =
      _UpdateSidePage;

  /// Updates the list of bookmarked pages.
  ///
  /// [list] - the list of page numbers that are bookmarked.
  factory QuranKareemEvent.updateBookMarkedPages(List<int> list) =
      _UpdateBookMarkedPages;

  /// Updates the screen brightness level.
  ///
  /// [value] - the brightness value (typically between 0.0 and 1.0).
  factory QuranKareemEvent.updateScreenBrigtness(double value) =
      _UpdateScreenBrigtness;

  /// Updates the tutorial screen visibility state.
  ///
  /// [value] - true to show the tutorial, false to hide it.
  factory QuranKareemEvent.updateScreenTutorial(bool value) =
      _UpdateScreenTutorial;

  /// Updates the rewarded ad state.
  ///
  /// [value] - true if rewarded ad is available/shown, false otherwise.
  factory QuranKareemEvent.updateRewardedAd(bool value) = _UpdateRewardedAd;

  /// Updates the PDF file path for reading.
  ///
  /// [value] - the file path or identifier for the PDF to read.
  factory QuranKareemEvent.updateReadPDFFile(String value) = _UpdateReadPDFFile;

  /// Updates the current Surah (chapter) name.
  ///
  /// [value] - the name of the current Surah.
  factory QuranKareemEvent.updateSorahName(String value) = _UpdateSorahName;

  /// Updates the current Juz (part) name.
  ///
  /// [value] - the name of the current Juz.
  factory QuranKareemEvent.updateJozo2Name(String value) = _UpdateJozo2Name;
}
