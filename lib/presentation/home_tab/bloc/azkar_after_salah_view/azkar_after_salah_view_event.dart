part of 'azkar_after_salah_view_bloc.dart';

@freezed
class AzkarAfterSalahViewEvent with _$AzkarAfterSalahViewEvent {
  factory AzkarAfterSalahViewEvent.initializeAzkar({required AzkarSalahTimeState state}) = _InitializeAzkar;

  /// Event to reset all counters to their default values
  const factory AzkarAfterSalahViewEvent.resetCounters() = _ResetCounters;

  /// Event to increment a specific counter
  const factory AzkarAfterSalahViewEvent.incrementCounter(AzkarModel zeker) = _IncrementCounter;
}
