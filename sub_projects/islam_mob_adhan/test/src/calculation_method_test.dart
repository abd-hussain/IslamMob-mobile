import 'package:dart_numerics/dart_numerics.dart';
import 'package:islam_mob_adhan/adhan.dart';
import 'package:test/test.dart';

void main() {
  test('Test CalculationMethod Equality Support', () {
    const karachiMethod1 = CalculationMethod.karachi;
    const karachiMethod2 = CalculationMethod.karachi;
    const egyptianMethod1 = CalculationMethod.egyptian;

    expect(karachiMethod1 == karachiMethod2, isTrue);
    expect(karachiMethod1 == egyptianMethod1, isFalse);
  });

  test('Test CalculationMethod.getParameters', () {
    CalculationParameters params;

    params = CalculationMethod.muslimWorldLeague.getParameters();
    expect(almostEqualD(params.fajrAngle, 18, 0.000001), isTrue);
    expect(almostEqualD(params.ishaAngle ?? 0, 17, 0.000001), isTrue);
    expect(params.ishaInterval, 0);
    expect(params.method, CalculationMethod.muslimWorldLeague);

    params = CalculationMethod.egyptian.getParameters();
    expect(almostEqualD(params.fajrAngle, 19.5, 0.000001), isTrue);
    expect(almostEqualD(params.ishaAngle ?? 0, 17.5, 0.000001), isTrue);
    expect(params.ishaInterval, 0);
    expect(params.method, CalculationMethod.egyptian);

    params = CalculationMethod.other.getParameters();
    expect(almostEqualD(params.fajrAngle, 0, 0.000001), isTrue);
    expect(almostEqualD(params.ishaAngle ?? 0, 0, 0.000001), isTrue);
    expect(params.ishaInterval, 0);
    expect(params.method, CalculationMethod.other);

//     CalculationMethod calculationMethod;
//     expect(() => calculationMethod.getParameters(), throwsFormatException);
  });
}
