import 'package:flutter/material.dart';
import 'package:hijri/hijri_calendar.dart';
import 'package:intl/intl.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class TimingUseCase {
  /// Returns the appropriate image path based on the current time.
  String getCurrentImageForTime() {
    final currentHour = DateTime.now().hour;
    return (currentHour > 8 && currentHour < 18)
        ? "assets/images/days/sun.png"
        : "assets/images/days/moon.png";
  }

  // /// Formats a [DateTime] object to `dd/MM/yyyy`.
  String formatDate(DateTime date) => DateFormat('dd/MM/yyyy').format(date);

  /// Formats a [HijriCalendar] object to `dd/MM/yyyy`.
  String formatHijriDate(HijriCalendar date) => date.toFormat("dd/MM/yyyy");

  /// Gets a [DateTime] object by adding a specified number of days.
  DateTime getDateWithDayOffset({required int dayOffset}) =>
      DateTime.now().add(Duration(days: dayOffset));

  /// Gets a [HijriCalendar] object by adding a specified number of days.
  HijriCalendar getHijriDateWithDayOffset({required int dayOffset}) {
    final hijriDate = HijriCalendar.now();

    // Convert the Hijri date to a DateTime for manipulation
    final gregorianDate = HijriCalendar()
        .hijriToGregorian(hijriDate.hYear, hijriDate.hMonth, hijriDate.hDay);

    // Add the day offset to the Gregorian date
    final updatedGregorianDate = gregorianDate.add(Duration(days: dayOffset));

    // Convert back to Hijri calendar
    final updatedHijriDate = HijriCalendar.fromDate(updatedGregorianDate);

    return updatedHijriDate;
  }

  /// Gets the localized name of the day for a given [date].
  String getDayName({required BuildContext context, required DateTime date}) {
    final dayName = DateFormat('EEEE').format(date);

    final localizations = AppLocalizations.of(context)!;
    switch (dayName) {
      case "Sunday":
        return localizations.sunday;
      case "Monday":
        return localizations.monday;
      case "Tuesday":
        return localizations.tuesday;
      case "Wednesday":
        return localizations.wednesday;
      case "Thursday":
        return localizations.thursday;
      case "Friday":
        return localizations.friday;
      case "Saturday":
        return localizations.saturday;
      default:
        return localizations.sunday; // Fallback
    }
  }

  /// Converts an hour from 24-hour format to 12-hour format as a string.
  String convertTo12HourFormat(int? hour) {
    if (hour == null) return "00";

    if (hour == 0) return "12"; // Midnight
    if (hour <= 12) return hour.toString().padLeft(2, '0'); // AM
    return (hour - 12).toString().padLeft(2, '0'); // PM
  }

  /// Determines if a given hour is AM or PM.
  String getAmPm(int? hour) {
    if (hour == null || hour < 12) return "AM";
    return "PM";
  }
}
