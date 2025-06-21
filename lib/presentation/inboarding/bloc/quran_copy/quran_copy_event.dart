part of 'quran_copy_bloc.dart';

/// Events for the Quran Copy Selection BLoC.
///
/// This sealed class defines all possible events for managing Quran copy
/// selection and download during the Islamic app onboarding process.
/// These events handle:
/// - **Prints listing** for fetching available Quran Mushaf copies
/// - **Connectivity monitoring** for download operation requirements
/// - **Download tracking** for Quran copy file management
/// - **Copy finalization** for setting the user's preferred Mushaf
///
/// The events support Islamic Quran reading by enabling Muslims to select
/// and download their preferred Quran copy layout and script for optimal
/// reading experience during their spiritual practice.
@freezed
class QuranCopyEvent with _$QuranCopyEvent {
  /// Event to fetch the list of available Quran prints from Firebase.
  ///
  /// This event retrieves all available Quran Mushaf copies with their
  /// metadata, download information, and language details for user
  /// selection during the onboarding process.
  factory QuranCopyEvent.getlistOfPrints() = _GetListOfPrints;

  /// Event to update the internet connection status for download operations.
  ///
  /// This event monitors internet connectivity to ensure Quran copy
  /// downloads can proceed successfully and provides appropriate user
  /// feedback for offline scenarios.
  ///
  /// Parameters:
  /// - [status]: Boolean indicating if internet connection is available
  factory QuranCopyEvent.updateInternetConnectionStatus(bool status) =
      _UpdateInternetConnectionStatus;

  /// Event to update the list of already downloaded Quran prints.
  ///
  /// This event tracks which Quran copies have been successfully
  /// downloaded to device storage, preventing duplicate downloads
  /// and providing accurate download status information.
  ///
  /// Parameters:
  /// - [print]: List of downloaded Quran print file names
  factory QuranCopyEvent.updatePrintsDownloading(List<String> print) =
      _UpdatePrintsDownloading;

  /// Event to finalize the selection and setup of a specific Quran copy.
  ///
  /// This event configures the selected Quran Mushaf as the user's
  /// preferred copy, setting up page mappings, Surah indices, and
  /// other metadata for optimal Quran reading experience.
  ///
  /// Parameters:
  /// - [printItem]: The selected Quran print with all metadata and mappings
  const factory QuranCopyEvent.setupCopy({required QuranPrints printItem}) =
      _SetupCopy;
}
