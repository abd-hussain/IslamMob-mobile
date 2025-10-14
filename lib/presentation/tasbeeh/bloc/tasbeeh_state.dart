part of 'tasbeeh_bloc.dart';

/// Represents the state of the Tasbeeh (Islamic prayer beads) counter.
///
/// This state class holds all the configuration and data for the Tasbeeh
/// functionality including sound and vibration preferences, the list of
/// available Tasbeeh items, and the currently selected item index.
/// It uses Freezed for immutability and code generation.
@freezed
abstract class TasbeehState with _$TasbeehState {
  /// Creates a [TasbeehState] with optional parameters.
  ///
  /// All parameters have default values:
  /// - [allowSound] defaults to true (sound feedback enabled)
  /// - [allowVibration] defaults to true (vibration feedback enabled)
  /// - [list] defaults to an empty list of TasbeehModel items
  /// - [selectedListIndex] defaults to 0 (first item selected)
  const factory TasbeehState({
    @Default(true) bool allowSound,
    @Default(true) bool allowVibration,
    @Default([]) List<TasbeehModel> list,
    @Default(0) int selectedListIndex,
  }) = _TasbeehState;
}
