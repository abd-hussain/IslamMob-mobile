import 'package:freezed_annotation/freezed_annotation.dart';

part 'freezed/pray_calculation_method.freezed.dart';

/// A sealed class representing different Islamic prayer time calculation methods.
///
/// This sealed class defines various calculation methods used by Islamic organizations
/// and countries worldwide to determine accurate prayer times. Each method has specific
/// parameters for calculating prayer times based on astronomical calculations:
///
/// **International Methods:**
/// - **Jafari**: Ithna Ashari (Shia) calculation method
/// - **Karachi**: University of Islamic Sciences, Karachi
/// - **Islamic Society of North America (ISNA)**: North American method
/// - **Muslim World League**: Widely used international standard
/// - **Umm Al-Qura**: University of Umm Al-Qura, Makkah, Saudi Arabia
/// - **Egypt**: Egyptian General Authority of Survey
/// - **Tehran**: Institute of Geophysics, University of Tehran
///
/// **Regional Methods:**
/// - **Gulf Region**: Used in Gulf countries
/// - **Kuwait, Qatar, Dubai**: Country-specific methods
/// - **Singapore, France, Turkey, Russia**: Regional adaptations
/// - **JAKIM**: Malaysia's Islamic authority method
/// - **Tunisia, Algeria, Morocco**: North African methods
/// - **KEMENAG**: Indonesia's Ministry of Religious Affairs
/// - **Comunidade Islamica Lisboa**: Portugal's Islamic community
/// - **Jordan Awqaf**: Jordan's Ministry of Awqaf
///
/// The choice of calculation method affects prayer times and should be selected
/// based on the user's location and local Islamic authority recommendations.
@freezed
sealed class PrayCalculationMethodState with _$PrayCalculationMethodState {
  const factory PrayCalculationMethodState.jafari() =
      PrayCalculationMethodStateJafari;
  const factory PrayCalculationMethodState.karachi() =
      PrayCalculationMethodStateKarachi;
  const factory PrayCalculationMethodState.islamicSocietyOfNorthAmerica() =
      PrayCalculationMethodStateIslamicSocietyOfNorthAmerica;
  const factory PrayCalculationMethodState.muslimWorldLeague() =
      PrayCalculationMethodStateMuslimWorldLeague;
  const factory PrayCalculationMethodState.ummAlQura() =
      PrayCalculationMethodStateUmmAlQura;
  const factory PrayCalculationMethodState.egypt() =
      PrayCalculationMethodStateEgypt;
  const factory PrayCalculationMethodState.tehran() =
      PrayCalculationMethodStateTehran;
  const factory PrayCalculationMethodState.gulfRegion() =
      PrayCalculationMethodStateGulfRegion;
  const factory PrayCalculationMethodState.kuwait() =
      PrayCalculationMethodStateKuwait;
  const factory PrayCalculationMethodState.qatar() =
      PrayCalculationMethodStateQatar;
  const factory PrayCalculationMethodState.singapore() =
      PrayCalculationMethodStateSingapore;
  const factory PrayCalculationMethodState.france() =
      PrayCalculationMethodStateFrance;
  const factory PrayCalculationMethodState.turkey() =
      PrayCalculationMethodStateTurkey;
  const factory PrayCalculationMethodState.russia() =
      PrayCalculationMethodStateRussia;
  const factory PrayCalculationMethodState.dubai() =
      PrayCalculationMethodStateDubai;
  const factory PrayCalculationMethodState.jAKIM() =
      PrayCalculationMethodStateJAKIM;
  const factory PrayCalculationMethodState.tunisia() =
      PrayCalculationMethodStateTunisia;
  const factory PrayCalculationMethodState.algeria() =
      PrayCalculationMethodStateAlgeria;
  const factory PrayCalculationMethodState.kEMENAG() =
      PrayCalculationMethodStateKEMENAG;
  const factory PrayCalculationMethodState.morocco() =
      PrayCalculationMethodStateMorocco;
  const factory PrayCalculationMethodState.comunidadeIslamicaLisboa() =
      PrayCalculationMethodStateComunidadeIslamicaLisboa;
  const factory PrayCalculationMethodState.jordanAwqaf() =
      PrayCalculationMethodStateJordanAwqaf;
}
