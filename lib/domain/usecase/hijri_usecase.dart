import 'package:hijri/hijri_calendar.dart';

/// Use case for managing Hijri (Islamic) calendar operations and conversions.
///
/// This class provides comprehensive functionality for working with the Islamic
/// lunar calendar system, which is fundamental to Islamic religious observances.
/// The Hijri calendar is used for:
/// - **Islamic holidays** like Eid al-Fitr and Eid al-Adha
/// - **Religious months** such as Ramadan and Dhul Hijjah
/// - **Historical Islamic events** and commemorations
/// - **Prayer time calculations** and religious scheduling
/// - **Islamic date displays** in the app interface
///
/// The Hijri calendar is approximately 11 days shorter than the Gregorian
/// calendar each year, making accurate conversion essential for Islamic
/// applications. This use case handles all necessary conversions and
/// provides localized month names for proper Islamic date representation.
class HijriUsecase {
  /// Gets the name of the current Hijri month.
  ///
  /// This method returns the full name of the current Islamic month,
  /// which is essential for displaying Islamic dates and helping users
  /// understand the current position in the Islamic calendar year.
  ///
  /// Returns the long-form name of the current Hijri month (e.g., "Ramadan",
  /// "Dhul Hijjah", "Muharram"). This is useful for displaying the current
  /// Islamic month in the app's interface and calendar views.
  ///
  /// Example:
  /// ```dart
  /// final currentMonth = HijriUsecase.getThisMonthHijriDateName();
  /// print('Current Islamic month: $currentMonth'); // e.g., "Ramadan"
  /// ```
  static String getThisMonthHijriDateName() {
    final hijriDate = HijriCalendar.now();
    return hijriDate.getLongMonthName();
  }

  /// Converts a Gregorian date to its corresponding Hijri date.
  ///
  /// This method performs accurate conversion from the Gregorian (Western)
  /// calendar to the Islamic lunar calendar. This is essential for:
  /// - Displaying Islamic dates alongside Gregorian dates
  /// - Calculating Islamic holidays and observances
  /// - Showing prayer calendar with both date systems
  /// - Historical Islamic event references
  ///
  /// Parameters:
  /// - [date]: The Gregorian DateTime to convert to Hijri
  ///
  /// Returns a [HijriCalendar] object representing the equivalent Islamic date.
  ///
  /// Example:
  /// ```dart
  /// final gregorianDate = DateTime(2024, 3, 15);
  /// final hijriDate = HijriUsecase.getHijriDateForThisDate(gregorianDate);
  /// print('Hijri date: ${hijriDate.hDay}/${hijriDate.hMonth}/${hijriDate.hYear}');
  /// ```
  static HijriCalendar getHijriDateForThisDate(DateTime date) {
    return HijriCalendar.fromDate(date);
  }

  /// Creates a Hijri date object from a month name.
  ///
  /// This method constructs a Hijri calendar object for the current year
  /// but with the specified month. It's useful for navigating between
  /// Islamic months and creating date objects for specific Islamic months.
  ///
  /// Parameters:
  /// - [monthName]: The name of the Islamic month (e.g., "Ramadan", "Muharram")
  ///
  /// Returns a [HijriCalendar] object set to the specified month in the current year.
  /// The day will be set to the current day, and the year remains the current Hijri year.
  ///
  /// Example:
  /// ```dart
  /// final ramadanDate = HijriUsecase.getHijriDateFromMonthName('Ramadan');
  /// // Returns Hijri date for Ramadan in the current Islamic year
  /// ```
  static HijriCalendar getHijriDateFromMonthName(String monthName) {
    final hijriDateNow = HijriCalendar.fromDate(DateTime.now());
    hijriDateNow.hMonth = getMonthNames().indexOf(monthName) + 1;
    return hijriDateNow;
  }

  /// Gets the number of days in the specified Hijri month.
  ///
  /// This method returns the total number of days in a given Islamic month.
  /// Islamic months alternate between 29 and 30 days, and this information
  /// is crucial for:
  /// - Calendar display and navigation
  /// - Calculating month boundaries for religious observances
  /// - Proper date validation in Islamic contexts
  /// - Ramadan and other religious month planning
  ///
  /// Parameters:
  /// - [date]: A HijriCalendar object representing the month to query
  ///
  /// Returns the number of days in the specified Islamic month (29 or 30).
  ///
  /// Example:
  /// ```dart
  /// final ramadanDate = HijriCalendar.now();
  /// final daysInMonth = HijriUsecase.getLastDayNumberForThisMonth(ramadanDate);
  /// print('Days in this Islamic month: $daysInMonth');
  /// ```
  static int getLastDayNumberForThisMonth(HijriCalendar date) {
    return date.lengthOfMonth;
  }

  /// Returns the complete list of Islamic month names in order.
  ///
  /// This method provides the standard names of all twelve Islamic months
  /// in their traditional order. These names are essential for:
  /// - Displaying Islamic calendar interfaces
  /// - Month selection in date pickers
  /// - Educational content about the Islamic calendar
  /// - Proper localization of Islamic dates
  ///
  /// The months are returned in chronological order starting with Muharram
  /// (the first month of the Islamic year) and ending with Dhul Hijjah
  /// (the month of Hajj pilgrimage).
  ///
  /// Returns a list of strings containing all twelve Islamic month names:
  /// 1. Muharram (Sacred month)
  /// 2. Safar
  /// 3. Rabi' Al-Awwal (Month of Prophet's birth)
  /// 4. Rabi' Al-Thani
  /// 5. Jumada Al-Awwal
  /// 6. Jumada Al-Thani
  /// 7. Rajab (Sacred month)
  /// 8. Sha'aban
  /// 9. Ramadan (Fasting month)
  /// 10. Shawwal (Month of Eid al-Fitr)
  /// 11. Dhu Al-Qi'dah (Sacred month)
  /// 12. Dhu Al-Hijjah (Month of Hajj and Eid al-Adha)
  ///
  /// Example:
  /// ```dart
  /// final months = HijriUsecase.getMonthNames();
  /// print('Fasting month: ${months[8]}'); // "Ramadan"
  /// print('Hajj month: ${months[11]}'); // "Dhu Al-Hijjah"
  /// ```
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
