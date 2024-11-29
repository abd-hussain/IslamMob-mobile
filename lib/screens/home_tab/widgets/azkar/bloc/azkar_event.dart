part of 'azkar_bloc.dart';

@freezed
class AzkarEvent with _$AzkarEvent {
  factory AzkarEvent.updateShowingAzkarStatus(bool status) =
      _UpdateShowingAzkarStatus;

  /// Event to reset all counters to their default values
  const factory AzkarEvent.resetCounters() = _ResetCounters;

  /// Event to increment a specific counter
  const factory AzkarEvent.incrementCounter(int counterIndex) =
      _IncrementCounter;
}
