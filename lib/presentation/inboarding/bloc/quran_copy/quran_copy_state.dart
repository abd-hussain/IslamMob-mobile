part of 'quran_copy_bloc.dart';

/// State for the Quran Copy Selection BLoC.
///
/// This immutable state class manages the state of Quran copy selection
/// and download during the Islamic app onboarding process. The state tracks:
/// - **Available prints** with list of downloadable Quran Mushaf copies
/// - **Download status** for tracking which copies are already downloaded
/// - **Internet connectivity** for download operation requirements
/// - **Selection progress** for Quran copy configuration
///
/// The state enables Islamic Quran reading by maintaining information about
/// available Quran copies, download progress, and user selection for optimal
/// Quran reading experience according to individual preferences.
@freezed
abstract class QuranCopyState with _$QuranCopyState {
  /// Creates a [QuranCopyState] with Quran copy selection and download information.
  ///
  /// Parameters:
  /// - [listOfPrints]: List of available Quran prints for download.
  ///   Defaults to an empty list. Contains metadata for all available
  ///   Quran Mushaf copies including layout, script, language, and
  ///   download information for user selection.
  /// - [printsAlreadyDownloaded]: List of already downloaded print file names.
  ///   Defaults to an empty list. Tracks which Quran copies have been
  ///   successfully downloaded to prevent duplicate downloads.
  /// - [internetConnectionStauts]: Boolean indicating internet connectivity.
  ///   Defaults to false. Required for downloading Quran copies and
  ///   fetching available prints from Firebase.
  ///
  /// The state provides essential information for Quran copy management
  /// and Islamic reading experience customization.
  ///
  /// Example:
  /// ```dart
  /// final state = QuranCopyState(
  ///   listOfPrints: [
  ///     QuranPrints(
  ///       fieldName: 'madinah_mushaf',
  ///       displayName: 'Madinah Mushaf',
  ///       language: 'Arabic',
  ///     ),
  ///   ],
  ///   printsAlreadyDownloaded: ['madinah_mushaf'],
  ///   internetConnectionStauts: true,
  /// );
  /// ```
  const factory QuranCopyState({
    List<QuranPrints>? listOfPrints,
    @Default(false) bool internetConnectionStauts,
    @Default([]) List<String> printsAlreadyDownloaded,
  }) = _QuranCopyState;
}
