part of 'azkar_after_salah_bloc.dart';

/// Events for the Azkar after Salah BLoC.
///
/// This sealed class defines all possible events for managing Islamic
/// remembrances (azkar) that are recited after completing prayers.
/// These events handle the initialization, tracking, and management
/// of post-prayer spiritual practices.
@freezed
class AzkarAfterSalahEvent with _$AzkarAfterSalahEvent {
  /// Event to initialize azkar list based on prayer time.
  ///
  /// This event loads the appropriate azkar list for the specific prayer
  /// that was just completed. Different prayers may have slightly different
  /// azkar or emphasis, and this ensures the correct remembrances are loaded.
  ///
  /// Parameters:
  /// - [state]: The prayer time state indicating which prayer was completed
  const factory AzkarAfterSalahEvent.fillInitialValue(
      {required AzkarSalahTimeState state}) = _FillInitialValue;

  /// Event to reset all counters to their default values
  const factory AzkarAfterSalahEvent.resetCounter() = _ResetCounter;

  /// Event to increment a specific counter
  const factory AzkarAfterSalahEvent.incrementCounter(AzkarModel item) =
      _IncrementCounter;
}
