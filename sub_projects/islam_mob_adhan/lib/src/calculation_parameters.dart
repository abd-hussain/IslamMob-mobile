import 'calculation_method.dart';
import 'high_latitude_rule.dart';
import 'madhab.dart';
import 'prayer_adjustments.dart';

/// Parameters used for PrayerTime calculation customization
///
/// Note that, for many cases, you can use [CalculationMethod.getParameters] to get a
/// pre-computed set of calculation parameters depending on one of the available
/// [CalculationMethod].
class CalculationParameters {
  /// The method used to do the calculation
  CalculationMethod method;

  /// The angle of the sun used to calculate fajr
  double fajrAngle;

  /// The angle of the sun used to calculate Maghrib
  double? maghribAngle;

  /// The angle of the sun used to calculate isha
  double? ishaAngle;

  /// Minutes after Maghrib (if set, the time for Isha will be Maghrib plus IshaInterval)
  int ishaInterval;

  /// The madhab used to calculate Asr
  Madhab madhab;

  /// Rules for placing bounds on Fajr and Isha for high latitude areas
  HighLatitudeRule highLatitudeRule;

  /// Used to optionally add or subtract a set amount of time from each prayer time
  PrayerAdjustments adjustments;

  /// Used for method adjustments
  PrayerAdjustments methodAdjustments;

  CalculationParameters(
      {this.method = CalculationMethod.other,
      required this.fajrAngle,
      this.maghribAngle,
      this.ishaAngle,
      this.ishaInterval = 0,
      this.madhab = Madhab.shafi,
      this.highLatitudeRule = HighLatitudeRule.middleOfTheNight,
      PrayerAdjustments? adjustments,
      PrayerAdjustments? methodAdjustments})
      : adjustments = adjustments ?? PrayerAdjustments(),
        methodAdjustments = methodAdjustments ?? PrayerAdjustments();

  /// Set the method adjustments for the current calculation parameters
  /// [adjustments] the prayer adjustments
  /// return this calculation parameters instance
  CalculationParameters withMethodAdjustments(PrayerAdjustments adjustments) {
    methodAdjustments = adjustments;
    return this;
  }

  NightPortions nightPortions() {
    switch (highLatitudeRule) {
      case HighLatitudeRule.middleOfTheNight:
        {
          return NightPortions(1.0 / 2.0, 1.0 / 2.0);
        }
      case HighLatitudeRule.seventhOfTheNight:
        {
          return NightPortions(1.0 / 7.0, 1.0 / 7.0);
        }
      case HighLatitudeRule.twilightAngle:
        {
          if (ishaAngle == null) {
            throw const FormatException('ishaAngle\'s value isn\'t define');
          }
          return NightPortions(fajrAngle / 60.0, ishaAngle! / 60.0);
        }
      default:
        {
          throw const FormatException('Invalid high latitude rule');
        }
    }
  }
}

class NightPortions {
  final double fajr;
  final double isha;

  NightPortions(this.fajr, this.isha);
}
