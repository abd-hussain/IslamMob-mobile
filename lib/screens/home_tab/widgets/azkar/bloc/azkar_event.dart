part of 'azkar_bloc.dart';

@freezed
class AzkarEvent with _$AzkarEvent {
  factory AzkarEvent.updateShowingAzkarStatus(List<AzkarModel> azkarList) =
      _UpdateShowingAzkarStatus;

  /// Event to reset all counters to their default values
  const factory AzkarEvent.resetCounters() = _ResetCounters;

  /// Event to increment a specific counter
  const factory AzkarEvent.incrementCounter(AzkarModel zeker) =
      _IncrementCounter;
}
