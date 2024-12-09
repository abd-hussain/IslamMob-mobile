import 'package:hijri/hijri_calendar.dart';
import 'package:intl/intl.dart';
import 'package:islam_app/domain/model/calender.dart';
import 'package:islam_app/presentation/home_tab/bloc/home_tab_bloc.dart';
import 'package:islam_mob_adhan/adhan.dart';
import 'package:islam_app/domain/model/pray_timing.dart';

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
  final DateComponents? specificDate;

  /// Constructor for initializing the PrayManager.
  PrayManagerRepository({
    required this.coordinates,
    required this.utcOffset,
    this.calculationMethod = CalculationMethod.jordan,
    this.madhab = Madhab.shafi,
    this.highLatitudeRule,
    this.specificDate,
  });

  /// Returns all prayer times as `PrayTimingDateTimeModel`.
  PrayTimingDateTimeModel getAllPrayTimeAsDateTimeForToday() {
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

  List<CalenderModel> getAllPrayTimeAsDateTimeForMonth(
      {required DateTime fromDate, required DateTime toDate}) {
    final List<CalenderModel> monthlyPrayerTimes = [];

    // Ensure the `fromDate` is before or equal to `toDate`
    if (fromDate.isAfter(toDate)) {
      throw ArgumentError("fromDate must be before or equal to toDate");
    }

    // Loop through each day in the range
    for (DateTime currentDate = fromDate;
        !currentDate.isAfter(toDate);
        currentDate = currentDate.add(const Duration(days: 1))) {
      final dateComponents = DateComponents.from(currentDate);

      // Get prayer parameters
      final params = calculationMethod.getParameters();
      params.madhab = madhab;
      if (highLatitudeRule != null) {
        params.highLatitudeRule = highLatitudeRule!;
      }

      // Calculate prayer times for the day
      final prayerTimes = PrayerTimes(coordinates, dateComponents, params,
          utcOffset: utcOffset);
      final hijriDate = HijriCalendar.fromDate(prayerTimes.isha);

      // Add the day's prayer times to the list
      monthlyPrayerTimes.add(
        CalenderModel(
            ishaTime: DateFormat('hh:mm').format(prayerTimes.isha),
            magribTime: DateFormat('hh:mm').format(prayerTimes.maghrib),
            asrTime: DateFormat('hh:mm').format(prayerTimes.asr),
            zhurTime: DateFormat('hh:mm').format(prayerTimes.dhuhr),
            sunriseTime: DateFormat('hh:mm').format(prayerTimes.sunrise),
            fajirTime: DateFormat('hh:mm').format(prayerTimes.fajr),
            dayName: DateFormat('EEEE').format(prayerTimes.isha),
            dateHijri: DateFormat('MM/dd').format(prayerTimes.isha),
            dateMilady: "${hijriDate.hMonth}/${hijriDate.hDay}",
            isToday: isToday(prayerTimes.isha)),
      );
    }

    return monthlyPrayerTimes;
  }

  bool isToday(DateTime dateTime) {
    final now = DateTime.now();
    return dateTime.year == now.year &&
        dateTime.month == now.month &&
        dateTime.day == now.day;
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
