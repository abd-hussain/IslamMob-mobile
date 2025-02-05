part of 'pray_calculation_setting_bloc.dart';

@freezed
class PrayCalculationSettingEvent with _$PrayCalculationSettingEvent {
  factory PrayCalculationSettingEvent.setup() = _Setup;

  factory PrayCalculationSettingEvent.updateCalculationMethod({
    required PrayCalculationMethodState method,
  }) = _UpdateCalculationMethod;

  factory PrayCalculationSettingEvent.updateMadhabMethod({
    required MadhabState madhab,
  }) = _UpdateMadhabMethod;

  factory PrayCalculationSettingEvent.updateTimeZone({
    required Duration value,
  }) = _UpdateTimeZone;

  factory PrayCalculationSettingEvent.updateHightLatitudeCalculation({
    required PrayHightLatitudeCaluclationState state,
  }) = _UpdateHightLatitudeCalculation;

  factory PrayCalculationSettingEvent.updateTimeOfPreview({
    required DateTime time,
    required PreviewBoxesState azanType,
  }) = _UpdateTimeOfPreview;

  factory PrayCalculationSettingEvent.updateAzanTypeInMin({
    required int minutes,
    required AzanTypeForEditMinState azanType,
  }) = _UpdateAzanTypeInMin;

  factory PrayCalculationSettingEvent.saveChanges() = _SaveChanges;
}
