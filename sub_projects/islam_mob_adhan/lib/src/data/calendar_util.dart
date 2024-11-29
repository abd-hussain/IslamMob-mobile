import 'date_components.dart';

class CalendarUtil {
  /// Determines if a given year is a leap year.
  ///
  /// A year is a leap year if it is divisible by 4, except for years divisible by 100
  /// but not divisible by 400.
  ///
  /// - [year]: The year to check.
  /// - Returns: `true` if the year is a leap year, otherwise `false`.
  static bool isLeapYear(int year) =>
      year % 4 == 0 && (year % 100 != 0 || year % 400 == 0);

  /// Rounds the seconds of a [DateTime] to the nearest minute.
  ///
  /// The resulting [DateTime] has its seconds set to 0, and the minutes adjusted
  /// based on whether the seconds are closer to 0 or 60.
  ///
  /// - [when]: The original date and time.
  /// - Returns: A new [DateTime] instance with rounded minutes and seconds set to 0.
  static DateTime roundedMinute(DateTime when) {
    final roundedMinutes = when.minute + (when.second / 60).round();
    return when.copyWith(minute: roundedMinutes, second: 0);
  }

  /// Converts a [DateComponents] to a UTC [DateTime] at midnight.
  ///
  /// - [components]: The date components (year, month, day).
  /// - Returns: A UTC [DateTime] set to 00:00:00.
  static DateTime resolveTimeByDateComponents(DateComponents components) =>
      resolveTime(components.year, components.month, components.day);

  /// Creates a UTC [DateTime] at midnight for the given date components.
  ///
  /// - [year]: The year.
  /// - [month]: The month.
  /// - [day]: The day.
  /// - Returns: A UTC [DateTime] set to 00:00:00.
  static DateTime resolveTime(int year, int month, int day) =>
      DateTime.utc(year, month, day);
}
