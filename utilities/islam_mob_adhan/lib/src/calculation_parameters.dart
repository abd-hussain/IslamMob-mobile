import 'calculation_method.dart';
import 'high_latitude_rule.dart';
import 'madhab.dart';
import 'prayer_adjustments.dart';

/// Parameters used for customizing PrayerTime calculations.
///
/// For convenience, you can use [CalculationMethod.getParameters] to obtain
/// pre-configured parameters based on one of the available [CalculationMethod].
class CalculationParameters {
  /// The method used for prayer time calculations.
  CalculationMethod method;

  /// The sun angle used for calculating Fajr.
  final double fajrAngle;

  /// The sun angle used for calculating Maghrib (optional).
  double? maghribAngle;

  /// The sun angle used for calculating Isha (optional).
  double? ishaAngle;

  /// Interval in minutes after Maghrib for calculating Isha.
  ///
  /// If set, Isha time will be computed as Maghrib time + [ishaInterval].
  final int ishaInterval;

  /// The madhab (school of thought) used for calculating Asr.
  Madhab madhab;

  /// Rules for handling Fajr and Isha times in high latitude areas.
  HighLatitudeRule? highLatitudeRule;

  /// Adjustments to prayer times, allowing addition or subtraction of minutes.
  final PrayerAdjustments adjustments;

  /// Adjustments specific to the chosen calculation method.
  PrayerAdjustments methodAdjustments;

  /// Constructs a [CalculationParameters] instance.
  ///
  /// - [method]: The calculation method (defaults to [CalculationMethod.other]).
  /// - [fajrAngle]: Required sun angle for Fajr.
  /// - [maghribAngle]: Optional sun angle for Maghrib.
  /// - [ishaAngle]: Optional sun angle for Isha.
  /// - [ishaInterval]: Minutes after Maghrib for calculating Isha (defaults to 0).
  /// - [madhab]: School of thought for Asr calculation (defaults to [Madhab.shafi]).
  /// - [highLatitudeRule]: Rule for handling Fajr and Isha in high latitude areas
  ///   (defaults to [HighLatitudeRule.middleOfTheNight]).
  /// - [adjustments]: Optional prayer time adjustments (defaults to no adjustments).
  /// - [methodAdjustments]: Optional method-specific adjustments (defaults to no adjustments).
  CalculationParameters({
    this.method = CalculationMethod.other,
    required this.fajrAngle,
    this.maghribAngle,
    this.ishaAngle,
    this.ishaInterval = 0,
    this.madhab = Madhab.shafi,
    this.highLatitudeRule = HighLatitudeRule.middleOfTheNight,
    PrayerAdjustments? adjustments,
    PrayerAdjustments? methodAdjustments,
  })  : adjustments = adjustments ?? const PrayerAdjustments(),
        methodAdjustments = methodAdjustments ?? const PrayerAdjustments();

  /// Creates a new instance with updated method adjustments.
  ///
  /// - [adjustments]: The new method adjustments.
  /// - Returns: A new instance of [CalculationParameters] with the updated adjustments.
  CalculationParameters withMethodAdjustments(PrayerAdjustments adjustments) {
    return CalculationParameters(
      method: method,
      fajrAngle: fajrAngle,
      maghribAngle: maghribAngle,
      ishaAngle: ishaAngle,
      ishaInterval: ishaInterval,
      madhab: madhab,
      highLatitudeRule: highLatitudeRule,
      adjustments: this.adjustments,
      methodAdjustments: adjustments,
    );
  }

  /// Calculates the night portions for Fajr and Isha based on the high latitude rule.
  ///
  /// - Returns: A [NightPortions] object containing the Fajr and Isha portions of the night.
  /// - Throws: A [FormatException] if the required angle for Isha is not defined
  ///   or if an invalid high latitude rule is used.
  NightPortions nightPortions() {
    switch (highLatitudeRule) {
      case HighLatitudeRule.middleOfTheNight:
        return const NightPortions(1.0 / 2.0, 1.0 / 2.0);

      case HighLatitudeRule.seventhOfTheNight:
        return const NightPortions(1.0 / 7.0, 1.0 / 7.0);

      case HighLatitudeRule.twilightAngle:
        if (ishaAngle == null) {
          throw const FormatException('Isha angle is not defined.');
        }
        return NightPortions(fajrAngle / 60.0, ishaAngle! / 60.0);

      default:
        throw const FormatException('Invalid high latitude rule.');
    }
  }
}

/// Represents the portions of the night allocated for Fajr and Isha calculations.
class NightPortions {
  /// Portion of the night allocated for Fajr.
  final double fajr;

  /// Portion of the night allocated for Isha.
  final double isha;

  /// Creates a [NightPortions] instance with specified portions for Fajr and Isha.
  const NightPortions(this.fajr, this.isha);
}
