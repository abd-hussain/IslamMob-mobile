import 'package:islam_mob_adhan/adhan.dart';
import 'package:intl/intl.dart';
import 'package:islam_app/models/app_model/pray_timing.dart';
import 'package:islam_app/screens/home_tab/widgets/home_header_view/bloc/home_header_bloc.dart';

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

  /// Returns all prayer times as formatted strings in `PrayTimingModel`.
  PrayTimingModel getAllPrayTimeAsFormatedString() {
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

    return PrayTimingModel(
      fajir: DateFormat('hh:mm a').format(prayerTimes.fajr),
      sunrise: DateFormat('hh:mm a').format(prayerTimes.sunrise),
      dhuhr: DateFormat('hh:mm a').format(prayerTimes.dhuhr),
      asr: DateFormat('hh:mm a').format(prayerTimes.asr),
      maghrib: DateFormat('hh:mm a').format(prayerTimes.maghrib),
      isha: DateFormat('hh:mm a').format(prayerTimes.isha),
      middleOfTheNight:
          DateFormat('hh:mm a').format(sunnahTimes.middleOfTheNight),
      lastThirdOfTheNight:
          DateFormat('hh:mm a').format(sunnahTimes.lastThirdOfTheNight),
    );
  }

  /// Returns the `DateTime` for the next prayer.
  DateTime getNextPrayerTime() {
    final now = DateTime.now();
    final date = specificDate ?? DateComponents.from(now);
    final params = calculationMethod.getParameters();

    // Set madhab and high latitude rule if provided
    params.madhab = madhab;
    if (highLatitudeRule != null) {
      params.highLatitudeRule = highLatitudeRule!;
    }

    final prayerTimes =
        PrayerTimes(coordinates, date, params, utcOffset: utcOffset);

    // Get the next prayer
    final nextPrayer = prayerTimes.nextPrayerByDateTime(now);
    return prayerTimes.timeForPrayer(nextPrayer);
  }

  /// Returns the type of the next prayer as `SalahTimeState`.
  SalahTimeState getNextPrayerType() {
    final now = DateTime.now();
    final date = specificDate ?? DateComponents.from(now);
    final params = calculationMethod.getParameters();

    // Set madhab and high latitude rule if provided
    params.madhab = madhab;
    if (highLatitudeRule != null) {
      params.highLatitudeRule = highLatitudeRule!;
    }

    final prayerTimes = PrayerTimes(coordinates, date, params,
        utcOffset: const Duration(hours: 0));

    // Create a map of prayer times with their corresponding states.
    final prayerTimesList = [
      {'name': const SalahTimeStateFajir(), 'time': prayerTimes.fajr},
      {'name': const SalahTimeStateZhur(), 'time': prayerTimes.dhuhr},
      {'name': const SalahTimeStateAsr(), 'time': prayerTimes.asr},
      {'name': const SalahTimeStateMaghrib(), 'time': prayerTimes.maghrib},
      {'name': const SalahTimeStateIsha(), 'time': prayerTimes.isha},
    ];

    // Find the next prayer type.
    for (var prayer in prayerTimesList) {
      final prayerTime = (prayer['time'] as DateTime).toUtc();
      if (prayerTime.isAfter(now.toUtc())) {
        return prayer['name'] as SalahTimeState;
      }
    }

    // If all prayers are in the past, return Fajr for the next day.
    return const SalahTimeStateFajir();
  }
}
