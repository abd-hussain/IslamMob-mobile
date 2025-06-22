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

  /// Calculates Sunnah (recommended) prayer times based on the given prayer times.
  ///
  /// This method returns additional Islamic times that are recommended for
  /// voluntary prayers and spiritual practices, including:
  /// - Middle of the night (ideal for Tahajjud prayer)
  /// - Last third of the night (blessed time for supplications)
  /// - Other spiritually significant times
  ///
  /// These times are based on authentic Islamic traditions and help Muslims
  /// engage in additional voluntary worship beyond the five obligatory prayers.
  ///
  /// Parameters:
  /// - [prayerTimes]: The calculated prayer times to derive Sunnah times from
  ///
  /// Returns a [SunnahTimes] object containing the recommended prayer times.
  SunnahTimes getSunnahTimes(PrayerTimes prayerTimes) {
    return SunnahTimes(prayerTimes);
  }

  /// Calculates and returns the five daily prayer times.
  ///
  /// This method performs the core Islamic prayer time calculations based on
  /// the configured parameters including location, calculation method, madhab,
  /// and date. It handles:
  /// - Astronomical calculations for sun positions
  /// - Application of the selected calculation method parameters
  /// - Madhab-specific adjustments for Asr prayer timing
  /// - High latitude rule applications when necessary
  /// - UTC offset adjustments for local time zones
  ///
  /// The calculation uses either the specified date or the current date,
  /// ensuring accurate prayer times for any given day and location.
  ///
  /// Returns a [PrayerTimes] object containing all five daily prayer times
  /// (Fajr, Sunrise, Dhuhr, Asr, Maghrib, Isha) adjusted for the local timezone.
  PrayerTimes getPrayerTimes() {
    final date = specificDate ?? DateComponents.from(DateTime.now());
    final params = calculationMethod.getParameters();

    // Set madhab and high latitude rule if provided
    params.madhab = madhab;
    if (highLatitudeRule != null) {
      params.highLatitudeRule = highLatitudeRule;
    }

    return PrayerTimes(coordinates, date, params, utcOffset: utcOffset);
  }

  /// Returns both the next `Prayer` and its `DateTime`.
  Map<Prayer, DateTime?> getNextPrayerWithTime() {
    final prayerTimes = getPrayerTimes();
    final currentTimeInUTC = DateTime.now().toUtc().add(utcOffset);
    // Get the next prayer and its time
    final nextPrayer =
        prayerTimes.nextPrayerByDateTime(currentTimeInUTC: currentTimeInUTC);

    final nextPrayerTime = prayerTimes.timeForPrayer(nextPrayer);

    // Return both as a map
    return {nextPrayer: nextPrayerTime};
  }
}
