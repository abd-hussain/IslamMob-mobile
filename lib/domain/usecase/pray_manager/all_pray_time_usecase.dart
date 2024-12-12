import 'package:hijri/hijri_calendar.dart';
import 'package:intl/intl.dart';
import 'package:islam_app/domain/model/calender.dart';
import 'package:islam_app/domain/model/pray_timing.dart';
import 'package:islam_app/domain/repository/pray_manager.dart';
import 'package:islam_mob_adhan/adhan.dart';

class AllPrayTimeUsecase {
  final PrayManagerRepository prayManager;
  AllPrayTimeUsecase(this.prayManager);

  PrayTimingDateTimeModel getAllPrayTimeAsDateTimeForToday() {
    final prayerTimes = prayManager.getPrayerTimes();
    final sunnahTimes = prayManager.getSunnahTimes(prayerTimes);

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
      prayManager.specificDate = DateComponents.from(currentDate);
      final prayerTimes = prayManager.getPrayerTimes();

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
            isToday: _isToday(prayerTimes.isha)),
      );
    }

    return monthlyPrayerTimes;
  }

  bool _isToday(DateTime dateTime) {
    final now = DateTime.now();
    return dateTime.year == now.year &&
        dateTime.month == now.month &&
        dateTime.day == now.day;
  }
}
