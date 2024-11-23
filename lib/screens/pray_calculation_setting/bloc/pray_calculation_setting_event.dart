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
    required String value,
  }) = _UpdateTimeZone;

  factory PrayCalculationSettingEvent.updateButtonsStatus({
    required bool status,
  }) = _UpdateButtonsStatus;

  factory PrayCalculationSettingEvent.updateApplicationAndDeviceTimeStatus({
    required String appTime,
    required String deviceTime,
  }) = _UpdateApplicationAndDeviceTimeStatus;

  factory PrayCalculationSettingEvent.factoryReset() = _FactoryReset;

  factory PrayCalculationSettingEvent.editFajirTimeManual({
    required int value,
  }) = _EditFajirTimeManual;

  factory PrayCalculationSettingEvent.editSunriseTimeManual({
    required int value,
  }) = _EditSunriseTimeManual;

  factory PrayCalculationSettingEvent.editDuhirTimeManual({
    required int value,
  }) = _EditDuhirTimeManual;

  factory PrayCalculationSettingEvent.editAsrTimeManual({
    required int value,
  }) = _EditAsrTimeManual;

  factory PrayCalculationSettingEvent.editMagrebTimeManual({
    required int value,
  }) = _EditMagrebTimeManual;

  factory PrayCalculationSettingEvent.editIshaTimeManual({
    required int value,
  }) = _EditIshaTimeManual;

  factory PrayCalculationSettingEvent.editMidNightTimeManual({
    required int value,
  }) = _EditMidNightTimeManual;

  factory PrayCalculationSettingEvent.editLast3thTimeTimeManual({
    required int value,
  }) = _EditLast3thTimeTimeManual;

  factory PrayCalculationSettingEvent.updateHightLatitudeCaluclation({
    required HightLatitudeCaluclationState state,
  }) = _UpdateHightLatitudeCaluclation;
}
