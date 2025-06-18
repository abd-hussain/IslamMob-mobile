part of 'azkar_after_salah_bloc.dart';

@freezed
class AzkarAfterSalahEvent with _$AzkarAfterSalahEvent {
  const factory AzkarAfterSalahEvent.fillInitialValue(
      {required AzkarSalahTimeState state}) = _FillInitialValue;

  /// Event to reset all counters to their default values
  const factory AzkarAfterSalahEvent.resetCounter() = _ResetCounter;

  /// Event to increment a specific counter
  const factory AzkarAfterSalahEvent.incrementCounter(AzkarModel item) =
      _IncrementCounter;
}
