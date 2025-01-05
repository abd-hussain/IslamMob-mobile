import 'package:islam_app/domain/repository/pray_manager.dart';
import 'package:islam_mob_adhan/adhan.dart';
import 'package:test/test.dart';

void main() {
  group('PrayManagerRepository', () {
    late PrayManagerRepository prayManager;
    late Coordinates coordinates;
    late Duration utcOffset;
    late CalculationMethod calculationMethod;
    late Madhab madhab;
    late HighLatitudeRule? highLatitudeRule;

    setUp(() {
      coordinates =
          Coordinates(31.963158, 35.930359); // Amman, Jordan coordinates
      utcOffset = const Duration(hours: 3);
      calculationMethod = CalculationMethod.muslimWorldLeague;
      madhab = Madhab.shafi;
      highLatitudeRule = HighLatitudeRule.middleOfTheNight;

      prayManager = PrayManagerRepository(
        coordinates: coordinates,
        utcOffset: utcOffset,
        calculationMethod: calculationMethod,
        madhab: madhab,
        highLatitudeRule: highLatitudeRule,
      );
    });

    test('should return correct prayer times', () {
      final prayerTimes = prayManager.getPrayerTimes();

      expect(prayerTimes.fajr, isNotNull);
      expect(prayerTimes.sunrise, isNotNull);
      expect(prayerTimes.dhuhr, isNotNull);
      expect(prayerTimes.asr, isNotNull);
      expect(prayerTimes.maghrib, isNotNull);
      expect(prayerTimes.isha, isNotNull);
    });

    test('should calculate Sunnah times correctly', () {
      final prayerTimes = prayManager.getPrayerTimes();
      final sunnahTimes = prayManager.getSunnahTimes(prayerTimes);

      expect(sunnahTimes.middleOfTheNight, isNotNull);
      expect(sunnahTimes.lastThirdOfTheNight, isNotNull);
    });

    test('should return the next prayer and its time', () {
      final nextPrayerWithTime = prayManager.getNextPrayerWithTime();

      expect(nextPrayerWithTime.keys.first, isA<Prayer>());
      expect(nextPrayerWithTime.values.first, isA<DateTime?>());
    });

    test('should allow specific date for prayer times calculation', () {
      final specificDate = DateComponents(2024, 12, 10);
      prayManager.specificDate = specificDate;

      final prayerTimes = prayManager.getPrayerTimes();

      expect(prayerTimes.fajr, isNotNull);
      expect(prayerTimes.sunrise, isNotNull);
      expect(prayerTimes.dhuhr, isNotNull);
      expect(prayerTimes.asr, isNotNull);
      expect(prayerTimes.maghrib, isNotNull);
      expect(prayerTimes.isha, isNotNull);
    });
  });
}
