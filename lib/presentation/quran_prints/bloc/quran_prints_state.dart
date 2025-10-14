part of 'quran_prints_bloc.dart';

/// State class for the Quran prints BLoC.
///
/// This class represents the current state of the Quran prints screen,
/// including the list of available prints, internet connection status,
/// and currently downloading prints.
@freezed
abstract class QuranPrintsState with _$QuranPrintsState {
  /// Creates a [QuranPrintsState] with the given parameters.
  ///
  /// The [listOfPrints] contains the available Quran print options,
  /// can be null if not yet loaded.
  ///
  /// The [internetConnectionStauts] indicates whether there is an active
  /// internet connection, defaulting to false.
  ///
  /// The [printsDownloading] contains the list of print IDs that are
  /// currently being downloaded, defaulting to an empty list.
  const factory QuranPrintsState({
    List<QuranPrints>? listOfPrints,
    @Default(false) bool internetConnectionStauts,
    @Default([]) List<String> printsDownloading,
  }) = _QuranPrintsState;
}
