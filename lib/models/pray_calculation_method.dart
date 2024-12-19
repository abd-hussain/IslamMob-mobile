import 'package:freezed_annotation/freezed_annotation.dart';

part 'pray_calculation_method.freezed.dart';

@freezed
sealed class PrayCalculationMethodState with _$PrayCalculationMethodState {
  const factory PrayCalculationMethodState.jafari() = PrayCalculationMethodStateJafari;
  const factory PrayCalculationMethodState.karachi() = PrayCalculationMethodStateKarachi;
  const factory PrayCalculationMethodState.islamicSocietyOfNorthAmerica() =
      PrayCalculationMethodStateIslamicSocietyOfNorthAmerica;
  const factory PrayCalculationMethodState.muslimWorldLeague() = PrayCalculationMethodStateMuslimWorldLeague;
  const factory PrayCalculationMethodState.ummAlQura() = PrayCalculationMethodStateUmmAlQura;
  const factory PrayCalculationMethodState.egypt() = PrayCalculationMethodStateEgypt;
  const factory PrayCalculationMethodState.tehran() = PrayCalculationMethodStateTehran;
  const factory PrayCalculationMethodState.gulfRegion() = PrayCalculationMethodStateGulfRegion;
  const factory PrayCalculationMethodState.kuwait() = PrayCalculationMethodStateKuwait;
  const factory PrayCalculationMethodState.qatar() = PrayCalculationMethodStateQatar;
  const factory PrayCalculationMethodState.singapore() = PrayCalculationMethodStateSingapore;
  const factory PrayCalculationMethodState.france() = PrayCalculationMethodStateFrance;
  const factory PrayCalculationMethodState.turkey() = PrayCalculationMethodStateTurkey;
  const factory PrayCalculationMethodState.russia() = PrayCalculationMethodStateRussia;
  const factory PrayCalculationMethodState.dubai() = PrayCalculationMethodStateDubai;
  const factory PrayCalculationMethodState.jAKIM() = PrayCalculationMethodStateJAKIM;
  const factory PrayCalculationMethodState.tunisia() = PrayCalculationMethodStateTunisia;
  const factory PrayCalculationMethodState.algeria() = PrayCalculationMethodStateAlgeria;
  const factory PrayCalculationMethodState.kEMENAG() = PrayCalculationMethodStateKEMENAG;
  const factory PrayCalculationMethodState.morocco() = PrayCalculationMethodStateMorocco;
  const factory PrayCalculationMethodState.comunidadeIslamicaLisboa() =
      PrayCalculationMethodStateComunidadeIslamicaLisboa;
  const factory PrayCalculationMethodState.jordanAwqaf() = PrayCalculationMethodStateJordanAwqaf;
}
