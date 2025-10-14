part of 'pray_calculation_setting_bloc.dart';

/// Represents the state for prayer calculation settings.
///
/// This state class holds all the configuration data for prayer time calculations
/// including prayer times, manual time adjustments, timezone settings, madhab
/// selection, calculation methods, and high latitude calculation options.
/// It uses Freezed for immutability and code generation.
@freezed
abstract class PrayCalculationSettingState with _$PrayCalculationSettingState {
  /// Creates a [PrayCalculationSettingState] with optional parameters.
  ///
  /// All parameters are optional and have default values where applicable.
  /// Prayer times are nullable and default to null, while manual adjustments
  /// default to 0 minutes. The timezone defaults to UTC+3, madhab defaults
  /// to Hanafi, calculation method defaults to Jordan Awqaf, and high latitude
  /// calculation defaults to none.
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
    @Default(0) int editFajirTimeManual,
    @Default(0) int editSunriseTimeManual,
    @Default(0) int editDuhirTimeManual,
    @Default(0) int editAsrTimeManual,
    @Default(0) int editMagrebTimeManual,
    @Default(0) int editIshaTimeManual,
    @Default(0) int editMidNightTimeManual,
    @Default(0) int editLast3thTimeTimeManual,
    @Default(Duration(hours: 3)) Duration timeZone,
    @Default(MadhabState.hanafi()) MadhabState madhab,
    @Default(PrayCalculationMethodState.jordanAwqaf())
    PrayCalculationMethodState calculationMethod,
    @Default(PrayHightLatitudeCaluclationState.none())
    PrayHightLatitudeCaluclationState hightLatitudeCaluclation,
  }) = _PrayCalculationSettingState;
}
