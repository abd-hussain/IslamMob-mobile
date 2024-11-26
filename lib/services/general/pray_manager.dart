import 'package:islam_mob_adhan/adhan.dart';
import 'package:intl/intl.dart';
import 'package:islam_app/models/app_model/pray_timing.dart';
import 'package:islam_app/screens/home_tab/widgets/home_header_view/bloc/home_header_bloc.dart';
//TODO: PrayManager refactored

class PrayManager {
  final Coordinates coordinates;
  final Duration utcOffset;
  final CalculationMethod calculationMethod;
  final HighLatitudeRule? highLatitudeRule;
  final Madhab madhab;
  final DateComponents? specificDate; // Optional for specific date calculations

  PrayManager({
    required this.coordinates,
    required this.utcOffset,
    this.calculationMethod = CalculationMethod.jordan,
    this.madhab = Madhab.shafi,
    this.highLatitudeRule,
    this.specificDate,
  });

  //TODO: All of this calculation is wrong، Time is not equil other app

  PrayTimingDateTimeModel getAllPrayTimeAsDateTime() {
    final date = specificDate ?? DateComponents.from(DateTime.now());
    final params = calculationMethod.getParameters();
    params.madhab = madhab;
    // params.highLatitudeRule = highLatitudeRule;

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

  PrayTimingModel getAllPrayTime() {
    final date = specificDate ?? DateComponents.from(DateTime.now());
    final params = calculationMethod.getParameters()..madhab = madhab;
    final prayerTimes =
        PrayerTimes(coordinates, date, params, utcOffset: utcOffset);
    final sunnahTimes = SunnahTimes(prayerTimes);

    return PrayTimingModel(
      fajir: DateFormat('hh:mm').format(prayerTimes.fajr),
      sunrise: DateFormat('hh:mm').format(prayerTimes.sunrise),
      dhuhr: DateFormat('hh:mm').format(prayerTimes.dhuhr),
      asr: DateFormat('hh:mm').format(prayerTimes.asr),
      maghrib: DateFormat('hh:mm').format(prayerTimes.maghrib),
      isha: DateFormat('hh:mm').format(prayerTimes.isha),
      middleOfTheNight:
          DateFormat('hh:mm').format(sunnahTimes.middleOfTheNight),
      lastThirdOfTheNight:
          DateFormat('hh:mm').format(sunnahTimes.lastThirdOfTheNight),
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

  SalahTimeState getNextPrayerType() {
    final now = DateTime.now();
    final date = specificDate ?? DateComponents.from(now);
    final params = calculationMethod.getParameters()..madhab = madhab;
    final prayerTimes = PrayerTimes(coordinates, date, params,
        utcOffset: const Duration(hours: 0));

    // Retrieve all prayer times
    final fajir = prayerTimes.fajr;
    final dhuhr = prayerTimes.dhuhr;
    final asr = prayerTimes.asr;
    final maghrib = prayerTimes.maghrib;
    final isha = prayerTimes.isha;

    // Create a list of prayer times
    final List<Map<String, Object>> prayerTimesList = [
      {'name': const SalahTimeStateFajir(), 'time': fajir},
      {'name': const SalahTimeStateZhur(), 'time': dhuhr},
      {'name': const SalahTimeStateAsr(), 'time': asr},
      {'name': const SalahTimeStateMaghrib(), 'time': maghrib},
      {'name': const SalahTimeStateIsha(), 'time': isha},
    ];

    // Find the next prayer time
    for (var prayer in prayerTimesList) {
      final prayerTime = (prayer['time'] as DateTime).toUtc();
      if (prayerTime.isAfter(now)) {
        final prayerName = prayer['name'] as SalahTimeState;
        return prayerName;
      }
    }

    // If all prayer times are in the past, return Fajr of the next day
    return const SalahTimeStateFajir();
  }
}
