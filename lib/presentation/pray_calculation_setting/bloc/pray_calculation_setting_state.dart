part of 'pray_calculation_setting_bloc.dart';

@freezed
class PrayCalculationSettingState with _$PrayCalculationSettingState {
  const factory PrayCalculationSettingState({
    DateTime? fajirTime,
    DateTime? sunriseTime,
    DateTime? duherTime,
    DateTime? asrTime,
    DateTime? megribTime,
    DateTime? ishaTime,
    DateTime? midleNighTime,
    DateTime? last3thTime,
    DateTime? applicationTime,
    DateTime? deviceTime,
    @Default(false) bool buttonsStatus,
    @Default(Duration(hours: 3)) Duration timeZone,
    @Default(0) int editFajirTimeManual,
    @Default(0) int editSunriseTimeManual,
    @Default(0) int editDuhirTimeManual,
    @Default(0) int editAsrTimeManual,
    @Default(0) int editMagrebTimeManual,
    @Default(0) int editIshaTimeManual,
    @Default(0) int editMidNightTimeManual,
    @Default(0) int editLast3thTimeTimeManual,
    @Default(MathhabState.hanafi()) MathhabState mathhab,
    @Default(PrayCalculationMethodState.jordanAwqaf())
    PrayCalculationMethodState calculationMethod,
    @Default(PrayHightLatitudeCaluclationState.none())
    PrayHightLatitudeCaluclationState hightLatitudeCaluclation,
  }) = _PrayCalculationSettingState;
}
