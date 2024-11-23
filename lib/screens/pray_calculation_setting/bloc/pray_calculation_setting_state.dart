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
    @Default("") String applicationTime,
    @Default("") String deviceTime,
    @Default(false) bool buttonsStatus,
    @Default("UTC +03:00") String timeZone,
    @Default(0) int editFajirTimeManual,
    @Default(0) int editSunriseTimeManual,
    @Default(0) int editDuhirTimeManual,
    @Default(0) int editAsrTimeManual,
    @Default(0) int editMagrebTimeManual,
    @Default(0) int editIshaTimeManual,
    @Default(0) int editMidNightTimeManual,
    @Default(0) int editLast3thTimeTimeManual,
    @Default(MathhabState.hanafi()) MathhabState mathhab,
    @Default(CalculationMethodState.jordanAwqaf())
    CalculationMethodState calculationMethod,
    @Default(HightLatitudeCaluclationState.none())
    HightLatitudeCaluclationState hightLatitudeCaluclation,
  }) = _PrayCalculationSettingState;
}

@freezed
sealed class HightLatitudeCaluclationState
    with _$HightLatitudeCaluclationState {
  const factory HightLatitudeCaluclationState.none() =
      HightLatitudeCaluclationStateNone;
  const factory HightLatitudeCaluclationState.angleBasedMethod() =
      HightLatitudeCaluclationStateAngleBasedMethod;
  const factory HightLatitudeCaluclationState.midnight() =
      HightLatitudeCaluclationStateMidnight;
  const factory HightLatitudeCaluclationState.seventhPartOfTheNight() =
      HightLatitudeCaluclationStateSeventhPartOfTheNight;
}

@freezed
sealed class MathhabState with _$MathhabState {
  const factory MathhabState.hanafi() = MathhabStateHanafi;
  const factory MathhabState.shaafei() = MathhabStateShaafei;
}

@freezed
sealed class CalculationMethodState with _$CalculationMethodState {
  const factory CalculationMethodState.jafari() = CalculationMethodStateJafari;
  const factory CalculationMethodState.karachi() =
      CalculationMethodStateKarachi;
  const factory CalculationMethodState.islamicSocietyOfNorthAmerica() =
      CalculationMethodStateIslamicSocietyOfNorthAmerica;
  const factory CalculationMethodState.muslimWorldLeague() =
      CalculationMethodStateMuslimWorldLeague;
  const factory CalculationMethodState.ummAlQura() =
      CalculationMethodStateUmmAlQura;
  const factory CalculationMethodState.egypt() = CalculationMethodStateEgypt;
  const factory CalculationMethodState.tehran() = CalculationMethodStateTehran;
  const factory CalculationMethodState.gulfRegion() =
      CalculationMethodStateGulfRegion;
  const factory CalculationMethodState.kuwait() = CalculationMethodStateKuwait;
  const factory CalculationMethodState.qatar() = CalculationMethodStateQatar;
  const factory CalculationMethodState.singapore() =
      CalculationMethodStateSingapore;
  const factory CalculationMethodState.france() = CalculationMethodStateFrance;
  const factory CalculationMethodState.turkey() = CalculationMethodStateTurkey;
  const factory CalculationMethodState.russia() = CalculationMethodStateRussia;
  const factory CalculationMethodState.dubai() = CalculationMethodStateDubai;
  const factory CalculationMethodState.jAKIM() = CalculationMethodStateJAKIM;
  const factory CalculationMethodState.tunisia() =
      CalculationMethodStateTunisia;
  const factory CalculationMethodState.algeria() =
      CalculationMethodStateAlgeria;
  const factory CalculationMethodState.kEMENAG() =
      CalculationMethodStateKEMENAG;
  const factory CalculationMethodState.morocco() =
      CalculationMethodStateMorocco;
  const factory CalculationMethodState.comunidadeIslamicaLisboa() =
      CalculationMethodStateComunidadeIslamicaLisboa;
  const factory CalculationMethodState.jordanAwqaf() =
      CalculationMethodStateJordanAwqaf;
  const factory CalculationMethodState.custom() = CalculationMethodStateCustom;
}
