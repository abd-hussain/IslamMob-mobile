part of 'quran_pages_index_bloc.dart';

/// State class for the Quran pages index BLoC.
///
/// This class represents the current state of the Quran pages index screen,
/// including the selected tab index and the list of surah names.
@freezed
class QuranPagesIndexState with _$QuranPagesIndexState {
  /// Creates a [QuranPagesIndexState] with the given parameters.
  ///
  /// The [selectedIndex] represents the currently selected tab index,
  /// defaulting to 0 (first tab).
  ///
  /// The [sowarList] contains the list of surah names to display,
  /// defaulting to an empty list.
  const factory QuranPagesIndexState({
    @Default(0) int selectedIndex,
    @Default([]) List<String> sowarList,
  }) = _QuranPagesIndexState;
}
