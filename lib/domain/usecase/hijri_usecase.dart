import 'package:hijri/hijri_calendar.dart';

class HijriUsecase {
  static String getThisMonthHijriDateName() {
    final hijriDate = HijriCalendar.now();
    return hijriDate.getLongMonthName();
  }

  static HijriCalendar getHijriDateForThisDate(DateTime date) {
    return HijriCalendar.fromDate(date);
  }

  static int getLastDayNumberForThisMonth() {
    return HijriCalendar.now().lengthOfMonth;
  }
}
