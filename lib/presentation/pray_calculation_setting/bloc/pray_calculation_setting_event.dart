part of 'pray_calculation_setting_bloc.dart';

@freezed
class PrayCalculationSettingEvent with _$PrayCalculationSettingEvent {
  factory PrayCalculationSettingEvent.updateTimeOfPreview({
    required DateTime time,
    required PreviewBoxes azanType,
  }) = _UpdateTimeOfPreview;

  factory PrayCalculationSettingEvent.updateCalculationMethod({
    required CalculationMethodState method,
  }) = _UpdateCalculationMethod;

  factory PrayCalculationSettingEvent.updateMathhab({
    required MathhabState mathhab,
  }) = _UpdateMathhab;

  factory PrayCalculationSettingEvent.updateTimeZone({
    required String value,
  }) = _UpdateTimeZone;

  factory PrayCalculationSettingEvent.updateAzanTypeInMin({
    required int minutes,
    required AzanTypeForEditMin azanType,
  }) = _UpdateAzanTypeInMin;

  factory PrayCalculationSettingEvent.updateHightLatitudeCalculation({
    required HightLatitudeCaluclationState state,
  }) = _UpdateHightLatitudeCalculation;

  factory PrayCalculationSettingEvent.saveChanges({
    required bool status,
  }) = _SaveChanges;

  factory PrayCalculationSettingEvent.factoryReset({
    required bool status,
  }) = _FactoryReset;
}
