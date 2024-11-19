part of 'pray_calculation_setting_bloc.dart';

@freezed
class PrayCalculationSettingState with _$PrayCalculationSettingState {
  const factory PrayCalculationSettingState({
    @Default("") String fajirTime,
    @Default("") String sunriseTime,
    @Default("") String duherTime,
    @Default("") String asrTime,
    @Default("") String megribTime,
    @Default("") String ishaTime,
    @Default("") String midleNighTime,
    @Default("") String last3thTime,
    @Default(MathhabState.hanafi()) MathhabState mathhab,
  }) = _PrayCalculationSettingState;
}

@freezed
sealed class MathhabState with _$MathhabState {
  const factory MathhabState.hanafi() = MathhabStateHanafi;
  const factory MathhabState.shaafei() = MathhabStateShaafei;
}
