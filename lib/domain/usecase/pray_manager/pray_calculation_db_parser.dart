import 'package:islam_app/models/high_latitude_method.dart';
import 'package:islam_app/models/madhab.dart';
import 'package:islam_app/models/pray_calculation_method.dart';
import 'package:islam_mob_adhan/adhan.dart';

class PrayDBParser {
  final Map<String, Madhab> _madhabMap = {
    "MadhabState.hanafi()": Madhab.hanafi,
    "MadhabState.shafi()": Madhab.shafi,
  };

  final Map<String, MadhabState> _madhabStateMap = {
    "MadhabState.hanafi()": const MadhabState.hanafi(),
    "MadhabState.shafi()": const MadhabState.shafi()
  };

  final Map<String, HighLatitudeRule?> _highLatitudeRuleMap = {
    "PrayHightLatitudeCaluclationState.midnight()": HighLatitudeRule.middleOfTheNight,
    "PrayHightLatitudeCaluclationState.seventhPartOfTheNight()": HighLatitudeRule.seventhOfTheNight,
    "PrayHightLatitudeCaluclationState.angleBasedMethod()": HighLatitudeRule.twilightAngle
  };

  final Map<String, PrayHightLatitudeCaluclationState> _highLatitudeRuleStateMap = {
    "PrayHightLatitudeCaluclationState.midnight()": const PrayHightLatitudeCaluclationState.midnight(),
    "PrayHightLatitudeCaluclationState.seventhPartOfTheNight()":
        const PrayHightLatitudeCaluclationState.seventhPartOfTheNight(),
    "PrayHightLatitudeCaluclationState.angleBasedMethod()": const PrayHightLatitudeCaluclationState.angleBasedMethod()
  };

  final Map<String, CalculationMethod> _calculationMethodMap = {
    "PrayCalculationMethodState.jordanAwqaf()": CalculationMethod.jordan,
    "PrayCalculationMethodState.jafari()": CalculationMethod.jafari,
    "PrayCalculationMethodState.karachi()": CalculationMethod.karachi,
    "PrayCalculationMethodState.islamicSocietyOfNorthAmerica()": CalculationMethod.northAmerica,
    "PrayCalculationMethodState.muslimWorldLeague()": CalculationMethod.muslimWorldLeague,
    "PrayCalculationMethodState.ummAlQura()": CalculationMethod.ummAlQura,
    "PrayCalculationMethodState.egypt()": CalculationMethod.egyptian,
    "PrayCalculationMethodState.tehran()": CalculationMethod.tehran,
    "PrayCalculationMethodState.gulfRegion()": CalculationMethod.gulfRegion,
    "PrayCalculationMethodState.kuwait()": CalculationMethod.kuwait,
    "PrayCalculationMethodState.qatar()": CalculationMethod.qatar,
    "PrayCalculationMethodState.singapore()": CalculationMethod.singapore,
    "PrayCalculationMethodState.france()": CalculationMethod.france,
    "PrayCalculationMethodState.turkey()": CalculationMethod.turkey,
    "PrayCalculationMethodState.russia()": CalculationMethod.russia,
    "PrayCalculationMethodState.dubai()": CalculationMethod.dubai,
    "PrayCalculationMethodState.jAKIM()": CalculationMethod.jakim,
    "PrayCalculationMethodState.tunisia()": CalculationMethod.tunisia,
    "PrayCalculationMethodState.algeria()": CalculationMethod.algeria,
    "PrayCalculationMethodState.kEMENAG()": CalculationMethod.kemenag,
    "PrayCalculationMethodState.morocco()": CalculationMethod.morocco,
    "PrayCalculationMethodState.comunidadeIslamicaLisboa()": CalculationMethod.portugal
  };

  final Map<String, PrayCalculationMethodState> _calculationMethodStateMap = {
    "PrayCalculationMethodState.jordanAwqaf()": const PrayCalculationMethodState.jordanAwqaf(),
    "PrayCalculationMethodState.jafari()": const PrayCalculationMethodState.jafari(),
    "PrayCalculationMethodState.karachi()": const PrayCalculationMethodState.karachi(),
    "PrayCalculationMethodState.islamicSocietyOfNorthAmerica()":
        const PrayCalculationMethodState.islamicSocietyOfNorthAmerica(),
    "PrayCalculationMethodState.muslimWorldLeague()": const PrayCalculationMethodState.muslimWorldLeague(),
    "PrayCalculationMethodState.ummAlQura()": const PrayCalculationMethodState.ummAlQura(),
    "PrayCalculationMethodState.egypt()": const PrayCalculationMethodState.egypt(),
    "PrayCalculationMethodState.tehran()": const PrayCalculationMethodState.tehran(),
    "PrayCalculationMethodState.gulfRegion()": const PrayCalculationMethodState.gulfRegion(),
    "PrayCalculationMethodState.kuwait()": const PrayCalculationMethodState.kuwait(),
    "PrayCalculationMethodState.qatar()": const PrayCalculationMethodState.qatar(),
    "PrayCalculationMethodState.singapore()": const PrayCalculationMethodState.singapore(),
    "PrayCalculationMethodState.france()": const PrayCalculationMethodState.france(),
    "PrayCalculationMethodState.turkey()": const PrayCalculationMethodState.turkey(),
    "PrayCalculationMethodState.russia()": const PrayCalculationMethodState.russia(),
    "PrayCalculationMethodState.dubai()": const PrayCalculationMethodState.dubai(),
    "PrayCalculationMethodState.jAKIM()": const PrayCalculationMethodState.jAKIM(),
    "PrayCalculationMethodState.tunisia()": const PrayCalculationMethodState.tunisia(),
    "PrayCalculationMethodState.algeria()": const PrayCalculationMethodState.algeria(),
    "PrayCalculationMethodState.kEMENAG()": const PrayCalculationMethodState.kEMENAG(),
    "PrayCalculationMethodState.morocco()": const PrayCalculationMethodState.morocco(),
    "PrayCalculationMethodState.comunidadeIslamicaLisboa()": const PrayCalculationMethodState.comunidadeIslamicaLisboa()
  };

  Madhab parseMadhab(String madhab) => _madhabMap[madhab] ?? Madhab.shafi;

  MadhabState parseMadhabState(String madhab) => _madhabStateMap[madhab] ?? const MadhabState.shafi();

  HighLatitudeRule? parseHighLatitudeRule(String highLatitudeRule) => _highLatitudeRuleMap[highLatitudeRule];
  PrayHightLatitudeCaluclationState parseHighLatitudeRuleState(String highLatitudeRule) =>
      _highLatitudeRuleStateMap[highLatitudeRule] ?? const PrayHightLatitudeCaluclationState.none();

  CalculationMethod parseCalculationMethod(String calculationMethod) =>
      _calculationMethodMap[calculationMethod] ?? CalculationMethod.jordan;

  PrayCalculationMethodState parseCalculationMethodState(String calculationMethod) =>
      _calculationMethodStateMap[calculationMethod] ?? const PrayCalculationMethodState.jordanAwqaf();
}
