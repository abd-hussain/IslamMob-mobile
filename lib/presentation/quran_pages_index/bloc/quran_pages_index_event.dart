part of 'quran_pages_index_bloc.dart';

/// Events for the Quran Pages Index BLoC.
///
/// This class defines all possible events that can be dispatched to the
/// [QuranPagesIndexBloc] to manage the state of the Quran pages index screen.
/// The events handle tab navigation, loading Surah lists, and search functionality.
@freezed
class QuranPagesIndexEvent with _$QuranPagesIndexEvent {
  /// Updates the selected tab index in the Quran pages index screen.
  ///
  /// [index] - The zero-based index of the tab to select.
  factory QuranPagesIndexEvent.updateSelectedTab(int index) =
      _UpdateSelectedTab;

  /// Loads the list of Surahs (chapters) from the Quran.
  ///
  /// [context] - The build context used for localization and accessing resources.
  factory QuranPagesIndexEvent.getSowarList(BuildContext context) =
      _GetSowarList;

  /// Performs a search operation within the Quran content.
  ///
  /// [context] - The build context used for localization and accessing resources.
  /// [value] - The search query string to look for in the Quran text.
  factory QuranPagesIndexEvent.search(BuildContext context, String value) =
      _Search;
}
