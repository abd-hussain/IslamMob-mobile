import 'package:hijri/hijri_calendar.dart';

class HijriUsecase {
  static String getThisMonthHijriDateName() {
    final hijriDate = HijriCalendar.now();
    return hijriDate.getLongMonthName();
  }

  static HijriCalendar getHijriDateForThisDate(DateTime date) {
    return HijriCalendar.fromDate(date);
  }

  static HijriCalendar getHijriDateFromMonthName(String monthName) {
    final hijriDateNow = HijriCalendar.fromDate(DateTime.now());
    hijriDateNow.hMonth = getMonthNames().indexOf(monthName) + 1;
    return hijriDateNow;
  }

  static int getLastDayNumberForThisMonth(HijriCalendar date) {
    return date.lengthOfMonth;
  }

  static List<String> getMonthNames() {
    return [
      'Muharram',
      'Safar',
      'Rabi\' Al-Awwal',
      'Rabi\' Al-Thani',
      'Jumada Al-Awwal',
      'Jumada Al-Thani',
      'Rajab',
      'Sha\'aban',
      'Ramadan',
      'Shawwal',
      'Dhu Al-Qi\'dah',
      'Dhu Al-Hijjah',
    ];
  }
}
