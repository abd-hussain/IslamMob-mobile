part of 'quran_prints_bloc.dart';

/// Events for the Quran Prints BLoC.
///
/// This sealed class defines all possible events that can be dispatched
/// to the QuranPrintsBloc to trigger state changes related to Quran prints
/// management, including data fetching, list updates, connectivity status,
/// and download progress tracking.
@freezed
class QuranPrintsEvent with _$QuranPrintsEvent {
  /// Event to initialize and start fetching Quran prints data.
  ///
  /// This event triggers the initial data loading process for Quran prints,
  /// typically called when the screen is first loaded or needs to refresh
  /// the complete dataset.
  factory QuranPrintsEvent.initializeFetchingData() = _InitializeFetchingData;

  /// Event to update the list of available Quran prints.
  ///
  /// This event is used to update the current list of Quran prints in the state.
  /// The [list] parameter can be null if no prints are available or if there
  /// was an error fetching the data.
  ///
  /// Parameters:
  /// - [list]: The updated list of Quran prints, or null if unavailable
  factory QuranPrintsEvent.updatelistOfPrints(
      {required List<QuranPrints>? list}) = _UpdatelistOfPrints;

  /// Event to update the internet connection status.
  ///
  /// This event is dispatched when the internet connectivity status changes,
  /// allowing the BLoC to update the UI accordingly and handle offline scenarios.
  ///
  /// Parameters:
  /// - [status]: True if internet connection is available, false otherwise
  factory QuranPrintsEvent.updateInternetConnectionStatus(
      {required bool status}) = _UpdateInternetConnectionStatus;

  /// Event to update the list of Quran prints currently being downloaded.
  ///
  /// This event tracks which Quran prints are currently in the download process,
  /// allowing the UI to show download progress and prevent duplicate downloads.
  ///
  /// Parameters:
  /// - [print]: List of print identifiers that are currently downloading
  factory QuranPrintsEvent.updatePrintsDownloading(
      {required List<String> print}) = _UpdatePrintsDownloading;
}
