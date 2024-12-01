import 'package:islam_app/screens/home_tab/bloc/home_tab_bloc.dart';
import 'package:islam_mob_adhan/adhan.dart';
import 'package:islam_app/models/app_model/pray_timing.dart';

/// A class for managing Islamic prayer times.
class PrayManager {
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
  final DateComponents? specificDate;

  /// Constructor for initializing the PrayManager.
  PrayManager({
    required this.coordinates,
    required this.utcOffset,
    this.calculationMethod = CalculationMethod.jordan,
    this.madhab = Madhab.shafi,
    this.highLatitudeRule,
    this.specificDate,
  });

  /// Returns all prayer times as `PrayTimingDateTimeModel`.
  PrayTimingDateTimeModel getAllPrayTimeAsDateTime() {
    final date = specificDate ?? DateComponents.from(DateTime.now());
    final params = calculationMethod.getParameters();
    // Set madhab and high latitude rule if provided
    params.madhab = madhab;
    if (highLatitudeRule != null) {
      params.highLatitudeRule = highLatitudeRule!;
    }

    final prayerTimes =
        PrayerTimes(coordinates, date, params, utcOffset: utcOffset);
    final sunnahTimes = SunnahTimes(prayerTimes);

    return PrayTimingDateTimeModel(
      fajir: prayerTimes.fajr,
      sunrise: prayerTimes.sunrise,
      dhuhr: prayerTimes.dhuhr,
      asr: prayerTimes.asr,
      maghrib: prayerTimes.maghrib,
      isha: prayerTimes.isha,
      middleOfTheNight: sunnahTimes.middleOfTheNight,
      lastThirdOfTheNight: sunnahTimes.lastThirdOfTheNight,
    );
  }

  /// Returns the `DateTime` for the next prayer.
  DateTime? getNextPrayerTime() {
    final date = specificDate ?? DateComponents.from(DateTime.now());
    final params = calculationMethod.getParameters();

    // Set madhab and high latitude rule if provided
    params.madhab = madhab;
    if (highLatitudeRule != null) {
      params.highLatitudeRule = highLatitudeRule!;
    }

    final prayerTimes =
        PrayerTimes(coordinates, date, params, utcOffset: utcOffset);
    final currentTimeInUTC = DateTime.now().toUtc().add(utcOffset);

    // Get the next prayer
    final nextPrayer =
        prayerTimes.nextPrayerByDateTime(currentTimeInUTC: currentTimeInUTC);
    return prayerTimes.timeForPrayer(nextPrayer);
  }

  /// Returns the type of the next prayer as `SalahTimeState`.
  SalahTimeState getNextPrayerType() {
    final date = specificDate ?? DateComponents.from(DateTime.now());
    final params = calculationMethod.getParameters();

    // Set madhab and high latitude rule if provided
    params.madhab = madhab;
    if (highLatitudeRule != null) {
      params.highLatitudeRule = highLatitudeRule!;
    }

    final prayerTimes =
        PrayerTimes(coordinates, date, params, utcOffset: utcOffset);

    final currentTimeInUTC = DateTime.now().toUtc().add(utcOffset);

    // Get the next prayer
    final nextPrayer =
        prayerTimes.nextPrayerByDateTime(currentTimeInUTC: currentTimeInUTC);
    switch (nextPrayer) {
      case Prayer.fajr:
        return const SalahTimeStateFajir();
      case Prayer.sunrise:
        return const SalahTimeStateSunrise();
      case Prayer.dhuhr:
        return const SalahTimeStateZhur();
      case Prayer.asr:
        return const SalahTimeStateAsr();
      case Prayer.maghrib:
        return const SalahTimeStateMaghrib();
      case Prayer.isha:
        return const SalahTimeStateIsha();
      case Prayer.none:
        return const SalahTimeStateNone();
    }
  }
}
