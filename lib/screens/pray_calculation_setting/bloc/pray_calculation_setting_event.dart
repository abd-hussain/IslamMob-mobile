part of 'pray_calculation_setting_bloc.dart';

@freezed
class PrayCalculationSettingEvent with _$PrayCalculationSettingEvent {
  factory PrayCalculationSettingEvent.updateFajirTime({
    required String fajirTime,
  }) = _UpdateFajirTime;

  factory PrayCalculationSettingEvent.updateSunriseTime({
    required String sunriseTime,
  }) = _UpdateSunriseTime;

  factory PrayCalculationSettingEvent.updateDuherTime({
    required String duherTime,
  }) = _UpdateDuherTime;

  factory PrayCalculationSettingEvent.updateAsrTime({
    required String asrTime,
  }) = _UpdateAsrTime;

  factory PrayCalculationSettingEvent.updateMegribTime({
    required String megribTime,
  }) = _UpdateMegribTime;

  factory PrayCalculationSettingEvent.updateIshaTime({
    required String ishaTime,
  }) = _UpdateIshaTime;

  factory PrayCalculationSettingEvent.updateMidleNighTime({
    required String midleNighTime,
  }) = _UpdateMidleNighTime;

  factory PrayCalculationSettingEvent.updateLast3thTime({
    required String last3thTime,
  }) = _UpdateLast3thTime;

  factory PrayCalculationSettingEvent.updateMathhab({
    required MathhabState mathhab,
  }) = _UpdateMathhab;

  factory PrayCalculationSettingEvent.updateCalculationMethod({
    required CalculationMethodState method,
  }) = _UpdateCalculationMethod;

  factory PrayCalculationSettingEvent.updateTimeZone({
    required double value,
  }) = _UpdateTimeZone;

  factory PrayCalculationSettingEvent.updateButtonsStatus({
    required bool status,
  }) = _UpdateButtonsStatus;

  factory PrayCalculationSettingEvent.factoryReset() = _FactoryReset;
}
