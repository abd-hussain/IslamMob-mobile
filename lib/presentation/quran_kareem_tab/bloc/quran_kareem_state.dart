part of 'quran_kareem_bloc.dart';

/// Represents the state of the Quran Kareem (Holy Quran) reading interface.
///
/// This state class manages all the data and UI state for the Quran reading experience,
/// including page navigation, bookmarks, display settings, and user interface controls.
/// It tracks the current page, brightness settings, bookmarked pages, tutorial state,
/// and other reading-related preferences.
@freezed
abstract class QuranKareemState with _$QuranKareemState {
  /// Creates a [QuranKareemState] with the specified parameters.
  ///
  /// All parameters have default values to ensure the state can be created
  /// with minimal configuration while providing sensible defaults for
  /// the Quran reading experience.
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
    @Default(false) bool tutorialShown,
  }) = _QuranKareemState;
}

/// Represents the side orientation of a Quran page in the reading interface.
///
/// This sealed class defines whether the current page is displayed on the left
/// or right side, which is important for proper page layout and navigation
/// in the Quran reading experience, especially for right-to-left text flow.
@freezed
sealed class QuranKareemStatePageSideState
    with _$QuranKareemStatePageSideState {
  const factory QuranKareemStatePageSideState.left() =
      QuranKareemStatePageSideStateLeft;
  const factory QuranKareemStatePageSideState.right() =
      QuranKareemStatePageSideStateRight;
}
