import 'package:adhan/adhan.dart';
import 'package:intl/intl.dart';
import 'package:islam_app/models/app_model/pray_timing.dart';
import 'package:islam_app/screens/home_tab/widgets/home_header_view/bloc/home_header_bloc.dart';

class PrayManager {
  final Coordinates coordinates;
  final Duration utcOffset;
  final CalculationMethod calculationMethod;
  final Madhab madhab;
  final DateComponents? specificDate; // Optional for specific date calculations

  PrayManager({
    required this.coordinates,
    required this.utcOffset,
    this.calculationMethod = CalculationMethod.umm_al_qura,
    this.madhab = Madhab.shafi,
    this.specificDate,
  });

  PrayTimingModel getAllPrayTime() {
    final date = specificDate ?? DateComponents.from(DateTime.now());
    final params = calculationMethod.getParameters()..madhab = madhab;
    final prayerTimes =
        PrayerTimes(coordinates, date, params, utcOffset: utcOffset);
    final sunnahTimes = SunnahTimes(prayerTimes);

    return PrayTimingModel(
      fajir: DateFormat.jm().format(prayerTimes.fajr),
      sunrise: DateFormat.jm().format(prayerTimes.sunrise),
      dhuhr: DateFormat.jm().format(prayerTimes.dhuhr),
      asr: DateFormat.jm().format(prayerTimes.asr),
      maghrib: DateFormat.jm().format(prayerTimes.maghrib),
      isha: DateFormat.jm().format(prayerTimes.isha),
      middleOfTheNight: DateFormat.jm().format(sunnahTimes.middleOfTheNight),
      lastThirdOfTheNight:
          DateFormat.jm().format(sunnahTimes.lastThirdOfTheNight),
    );
  }

  DateTime getNextPrayerTime() {
    final now = DateTime.now();
    final date = specificDate ?? DateComponents.from(now);
    final params = calculationMethod.getParameters()..madhab = madhab;
    final prayerTimes =
        PrayerTimes(coordinates, date, params, utcOffset: utcOffset);

    // Get the next prayer
    final nextPrayer = prayerTimes.nextPrayerByDateTime(now);

    // Return the DateTime of the next prayer
    final nextPrayerTime = prayerTimes.timeForPrayer(nextPrayer);
    if (nextPrayerTime != null) {
      return nextPrayerTime;
    }

    // If no next prayer today, calculate for the next day
    final nextDay = DateComponents.from(now.add(const Duration(days: 1)));
    final nextDayPrayerTimes =
        PrayerTimes(coordinates, nextDay, params, utcOffset: utcOffset);
    return nextDayPrayerTimes.fajr; // Fajr is the first prayer of the next day
  }

  SalahTimeState getNextPrayer() {
    final now = DateTime.now();
    final date = specificDate ?? DateComponents.from(now);
    final params = calculationMethod.getParameters()..madhab = madhab;
    final prayerTimes =
        PrayerTimes(coordinates, date, params, utcOffset: utcOffset);

    final nextPrayer = prayerTimes.nextPrayerByDateTime(now);

    switch (nextPrayer) {
      case Prayer.dhuhr:
        return const SalahTimeStateZhur();
      case Prayer.asr:
        return const SalahTimeStateAsr();
      case Prayer.sunrise:
        return const SalahTimeStateSunrise();
      case Prayer.maghrib:
        return const SalahTimeStateMaghrib();
      case Prayer.isha:
        return const SalahTimeStateIsha();
      default:
        return const SalahTimeStateFajir();
    }
  }

  double getQiblaDirection() {
    final qibla = Qibla(coordinates);
    return qibla.direction;
  }
}
