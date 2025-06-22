import 'package:islam_app/domain/sealed/high_latitude_method.dart';
import 'package:islam_app/domain/sealed/madhab.dart';
import 'package:islam_app/domain/sealed/pray_calculation_method.dart';
import 'package:islam_mob_adhan/adhan.dart';

/// Parser for converting prayer calculation settings between different formats.
///
/// This class provides functionality to parse and convert prayer calculation
/// settings stored in the database or configuration files into the appropriate
/// enum types used by the prayer calculation engine. It handles:
/// - **Madhab conversion** between string representations and enum types
/// - **Calculation method mapping** from state strings to calculation enums
/// - **High latitude rule parsing** for extreme geographical locations
/// - **Bidirectional conversion** between app states and calculation engine types
///
/// The parser ensures compatibility between:
/// - App's sealed class state system for UI and business logic
/// - Prayer calculation library's enum system for astronomical calculations
/// - Database storage format for persistence
/// - Configuration file formats for settings
///
/// This abstraction layer allows the app to maintain clean separation between
/// UI state management and the underlying prayer calculation engine while
/// providing reliable conversion between different representation formats.
class PrayDBParser {
  static final Map<String, Madhab> _madhabMap = {
    "MadhabState.hanafi()": Madhab.hanafi,
    "MadhabState.shafi()": Madhab.shafi,
  };

  static final Map<String, MadhabState> _madhabStateMap = {
    "MadhabState.hanafi()": const MadhabState.hanafi(),
    "MadhabState.shafi()": const MadhabState.shafi(),
  };

  static final Map<String, HighLatitudeRule?> _highLatitudeRuleMap = {
    "PrayHightLatitudeCaluclationState.midnight()":
        HighLatitudeRule.middleOfTheNight,
    "PrayHightLatitudeCaluclationState.seventhPartOfTheNight()":
        HighLatitudeRule.seventhOfTheNight,
    "PrayHightLatitudeCaluclationState.angleBasedMethod()":
        HighLatitudeRule.twilightAngle,
  };

  static final Map<String, PrayHightLatitudeCaluclationState>
  _highLatitudeRuleStateMap = {
    "PrayHightLatitudeCaluclationState.midnight()":
        const PrayHightLatitudeCaluclationState.midnight(),
    "PrayHightLatitudeCaluclationState.seventhPartOfTheNight()":
        const PrayHightLatitudeCaluclationState.seventhPartOfTheNight(),
    "PrayHightLatitudeCaluclationState.angleBasedMethod()":
        const PrayHightLatitudeCaluclationState.angleBasedMethod(),
  };

  static final Map<String, CalculationMethod> _calculationMethodMap = {
    "PrayCalculationMethodState.jordanAwqaf()": CalculationMethod.jordan,
    "PrayCalculationMethodState.jafari()": CalculationMethod.jafari,
    "PrayCalculationMethodState.karachi()": CalculationMethod.karachi,
    "PrayCalculationMethodState.islamicSocietyOfNorthAmerica()":
        CalculationMethod.northAmerica,
    "PrayCalculationMethodState.muslimWorldLeague()":
        CalculationMethod.muslimWorldLeague,
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
    "PrayCalculationMethodState.comunidadeIslamicaLisboa()":
        CalculationMethod.portugal,
  };

  static final Map<String, PrayCalculationMethodState>
  _calculationMethodStateMap = {
    "PrayCalculationMethodState.jordanAwqaf()":
        const PrayCalculationMethodState.jordanAwqaf(),
    "PrayCalculationMethodState.jafari()":
        const PrayCalculationMethodState.jafari(),
    "PrayCalculationMethodState.karachi()":
        const PrayCalculationMethodState.karachi(),
    "PrayCalculationMethodState.islamicSocietyOfNorthAmerica()":
        const PrayCalculationMethodState.islamicSocietyOfNorthAmerica(),
    "PrayCalculationMethodState.muslimWorldLeague()":
        const PrayCalculationMethodState.muslimWorldLeague(),
    "PrayCalculationMethodState.ummAlQura()":
        const PrayCalculationMethodState.ummAlQura(),
    "PrayCalculationMethodState.egypt()":
        const PrayCalculationMethodState.egypt(),
    "PrayCalculationMethodState.tehran()":
        const PrayCalculationMethodState.tehran(),
    "PrayCalculationMethodState.gulfRegion()":
        const PrayCalculationMethodState.gulfRegion(),
    "PrayCalculationMethodState.kuwait()":
        const PrayCalculationMethodState.kuwait(),
    "PrayCalculationMethodState.qatar()":
        const PrayCalculationMethodState.qatar(),
    "PrayCalculationMethodState.singapore()":
        const PrayCalculationMethodState.singapore(),
    "PrayCalculationMethodState.france()":
        const PrayCalculationMethodState.france(),
    "PrayCalculationMethodState.turkey()":
        const PrayCalculationMethodState.turkey(),
    "PrayCalculationMethodState.russia()":
        const PrayCalculationMethodState.russia(),
    "PrayCalculationMethodState.dubai()":
        const PrayCalculationMethodState.dubai(),
    "PrayCalculationMethodState.jAKIM()":
        const PrayCalculationMethodState.jAKIM(),
    "PrayCalculationMethodState.tunisia()":
        const PrayCalculationMethodState.tunisia(),
    "PrayCalculationMethodState.algeria()":
        const PrayCalculationMethodState.algeria(),
    "PrayCalculationMethodState.kEMENAG()":
        const PrayCalculationMethodState.kEMENAG(),
    "PrayCalculationMethodState.morocco()":
        const PrayCalculationMethodState.morocco(),
    "PrayCalculationMethodState.comunidadeIslamicaLisboa()":
        const PrayCalculationMethodState.comunidadeIslamicaLisboa(),
  };

  /// Parses a madhab string into the prayer calculation library's Madhab enum.
  ///
  /// Converts string representations of Islamic schools of jurisprudence into
  /// the enum format required by the prayer calculation engine. Defaults to
  /// Shafi'i madhab if the input string is not recognized.
  ///
  /// Parameters:
  /// - [madhab]: String representation of the madhab (e.g., "MadhabState.hanafi()")
  ///
  /// Returns the corresponding [Madhab] enum value for prayer calculations.
  static Madhab parseMadhab(String madhab) =>
      _madhabMap[madhab] ?? Madhab.shafi;

  /// Parses a madhab string into the app's MadhabState sealed class.
  ///
  /// Converts string representations into the app's state management format
  /// for madhab selection. Defaults to Shafi'i madhab if the input string
  /// is not recognized.
  ///
  /// Parameters:
  /// - [madhab]: String representation of the madhab state
  ///
  /// Returns the corresponding [MadhabState] for app state management.
  static MadhabState parseMadhabState(String madhab) =>
      _madhabStateMap[madhab] ?? const MadhabState.shafi();

  /// Parses a high latitude rule string into the calculation library's enum.
  ///
  /// Converts string representations of high latitude adjustment methods into
  /// the enum format required by the prayer calculation engine. Returns null
  /// if the input string is not recognized or represents no adjustment.
  ///
  /// Parameters:
  /// - [highLatitudeRule]: String representation of the high latitude rule
  ///
  /// Returns the corresponding [HighLatitudeRule] enum or null.
  static HighLatitudeRule? parseHighLatitudeRule(String highLatitudeRule) =>
      _highLatitudeRuleMap[highLatitudeRule];

  /// Parses a high latitude rule string into the app's state format.
  ///
  /// Converts string representations into the app's state management format
  /// for high latitude rule selection. Defaults to no adjustment if the
  /// input string is not recognized.
  ///
  /// Parameters:
  /// - [highLatitudeRule]: String representation of the high latitude rule state
  ///
  /// Returns the corresponding [PrayHightLatitudeCaluclationState] for app state.
  static PrayHightLatitudeCaluclationState parseHighLatitudeRuleState(
    String highLatitudeRule,
  ) =>
      _highLatitudeRuleStateMap[highLatitudeRule] ??
      const PrayHightLatitudeCaluclationState.none();

  /// Parses a calculation method string into the prayer library's enum.
  ///
  /// Converts string representations of prayer calculation methods into the
  /// enum format required by the prayer calculation engine. Defaults to
  /// Jordan Awqaf method if the input string is not recognized.
  ///
  /// Parameters:
  /// - [calculationMethod]: String representation of the calculation method
  ///
  /// Returns the corresponding [CalculationMethod] enum for prayer calculations.
  static CalculationMethod parseCalculationMethod(String calculationMethod) =>
      _calculationMethodMap[calculationMethod] ?? CalculationMethod.jordan;

  /// Parses a calculation method string into the app's state format.
  ///
  /// Converts string representations into the app's state management format
  /// for calculation method selection. Defaults to Jordan Awqaf method if
  /// the input string is not recognized.
  ///
  /// Parameters:
  /// - [calculationMethod]: String representation of the calculation method state
  ///
  /// Returns the corresponding [PrayCalculationMethodState] for app state.
  static PrayCalculationMethodState parseCalculationMethodState(
    String calculationMethod,
  ) =>
      _calculationMethodStateMap[calculationMethod] ??
      const PrayCalculationMethodState.jordanAwqaf();
}
