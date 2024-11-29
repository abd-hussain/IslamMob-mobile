class CalendricalHelper {
  /// Calculates the Julian Day for a given Gregorian date.
  ///
  /// - [year]: The year of the date.
  /// - [month]: The month of the date.
  /// - [day]: The day of the date.
  /// - [hours]: Optional fractional hours (defaults to 0.0).
  /// - Returns: The Julian Day as a `double`.
  static double julianDay(int year, int month, int day, {double hours = 0.0}) {
    // Adjust for January and February as months 13 and 14 of the previous year
    final adjustedYear = month > 2 ? year : year - 1;
    final adjustedMonth = month > 2 ? month : month + 12;
    final fractionalDay = day + (hours / 24);

    // Century and leap year adjustment
    final century = adjustedYear ~/ 100;
    final leapYearAdjustment = 2 - century + (century ~/ 4);

    final julianDayNumber = (365.25 * (adjustedYear + 4716)).toInt();
    final monthDays = (30.6001 * (adjustedMonth + 1)).toInt();

    return julianDayNumber +
        monthDays +
        fractionalDay +
        leapYearAdjustment -
        1524.5;
  }

  /// Calculates the Julian Day for a given [DateTime].
  ///
  /// - [date]: The date to convert.
  /// - Returns: The Julian Day as a `double`.
  static double julianDayByDate(DateTime date) {
    final fractionalHours = date.hour + (date.minute / 60.0);
    return julianDay(date.year, date.month, date.day, hours: fractionalHours);
  }

  /// Calculates the Julian Century from the epoch for a given Julian Day.
  ///
  /// - [jd]: The Julian Day.
  /// - Returns: The Julian Century as a `double`.
  static double julianCentury(double jd) {
    return (jd - 2451545.0) / 36525;
  }
}
