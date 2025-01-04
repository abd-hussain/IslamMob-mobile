import 'package:islam_mob_adhan/adhan.dart';

/// A class for managing Islamic prayer times.
class PrayManagerRepository {
  /// Geographical coordinates for prayer time calculation.
  final Coordinates coordinates;

  /// UTC offset for adjusting prayer times.
  final Duration utcOffset;

  /// Calculation method for prayer times.
  final CalculationMethod calculationMethod;

  /// High latitude rule for locations near the poles.
  final HighLatitudeRule? highLatitudeRule;

  /// Madhab (school of thought) for calculating Asr time.
  final Madhab madhab;

  /// Specific date for calculating prayer times (optional).
  DateComponents? specificDate;

  /// Constructor for initializing the PrayManager.
  PrayManagerRepository({
    required this.coordinates,
    required this.utcOffset,
    this.calculationMethod = CalculationMethod.jordan,
    this.madhab = Madhab.shafi,
    this.highLatitudeRule,
    this.specificDate,
  });

  SunnahTimes getSunnahTimes(PrayerTimes prayerTimes) {
    return SunnahTimes(prayerTimes);
  }

  PrayerTimes getPrayerTimes() {
    final date = specificDate ?? DateComponents.from(DateTime.now());
    final params = calculationMethod.getParameters();

    // Set madhab and high latitude rule if provided
    params.madhab = madhab;
    if (highLatitudeRule != null) {
      params.highLatitudeRule = highLatitudeRule!;
    }

    return PrayerTimes(coordinates, date, params, utcOffset: utcOffset);
  }

  /// Returns both the next `Prayer` and its `DateTime`.
  Map<Prayer, DateTime?> getNextPrayerWithTime() {
    final prayerTimes = getPrayerTimes();
    final currentTimeInUTC = DateTime.now().toUtc().add(utcOffset);

    // Get the next prayer and its time
    final nextPrayer = prayerTimes.nextPrayerByDateTime(currentTimeInUTC: currentTimeInUTC);
    final nextPrayerTime = prayerTimes.timeForPrayer(nextPrayer);

    // Return both as a map
    return {nextPrayer: nextPrayerTime};
  }
}
