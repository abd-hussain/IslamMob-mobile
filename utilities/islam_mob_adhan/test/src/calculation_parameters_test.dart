import 'package:dart_numerics/dart_numerics.dart';
import 'package:islam_mob_adhan/adhan.dart';
import 'package:test/test.dart';

void main() {
  test('Test CalculationParameters.nightPortions', () {
    CalculationParameters parameters;

    parameters = CalculationParameters(fajrAngle: 18, ishaAngle: 18)
      ..highLatitudeRule = HighLatitudeRule.middleOfTheNight;
    expect(almostEqualD(parameters.nightPortions().fajr, 0.5, 0.001), isTrue);
    expect(almostEqualD(parameters.nightPortions().isha, 0.5, 0.001), isTrue);

    parameters = CalculationParameters(fajrAngle: 18, ishaAngle: 18)
      ..highLatitudeRule = HighLatitudeRule.seventhOfTheNight;
    expect(almostEqualD(parameters.nightPortions().fajr, 1.0 / 7.0, 0.001), isTrue);
    expect(almostEqualD(parameters.nightPortions().isha, 1.0 / 7.0, 0.001), isTrue);

    parameters = CalculationParameters(fajrAngle: 10, ishaAngle: 15)..highLatitudeRule = HighLatitudeRule.twilightAngle;
    expect(almostEqualD(parameters.nightPortions().fajr, 10.0 / 60.0, 0.001), isTrue);
    expect(almostEqualD(parameters.nightPortions().isha, 15.0 / 60.0, 0.001), isTrue);

    parameters.highLatitudeRule = null;
    expect(() => parameters.nightPortions(), throwsFormatException);
  });
}
