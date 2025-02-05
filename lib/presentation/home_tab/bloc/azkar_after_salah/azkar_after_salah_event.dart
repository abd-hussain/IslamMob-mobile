part of 'azkar_after_salah_bloc.dart';

@freezed
class AzkarAfterSalahEvent with _$AzkarAfterSalahEvent {
  factory AzkarAfterSalahEvent.initializeAzkar(
      {required AzkarSalahTimeState state}) = _InitializeAzkar;

  /// Event to reset all counters to their default values
  const factory AzkarAfterSalahEvent.resetCounters() = _ResetCounters;

  /// Event to increment a specific counter
  const factory AzkarAfterSalahEvent.incrementCounter(AzkarModel zeker) =
      _IncrementCounter;
}
