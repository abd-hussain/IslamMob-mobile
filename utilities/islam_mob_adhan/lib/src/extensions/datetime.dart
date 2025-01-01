extension AdhanDateTimeExtensions on DateTime {
  /// Creates a copy of this [DateTime] with specified fields replaced by new values.
  ///
  /// - [year], [month], [day], [hour], [minute], [second], [millisecond], [microsecond]:
  ///   Optional parameters to override the respective components of the original [DateTime].
  /// - Returns: A new [DateTime] instance with updated fields.
  DateTime copyWith({
    int? year,
    int? month,
    int? day,
    int? hour,
    int? minute,
    int? second,
    int? millisecond,
    int? microsecond,
  }) {
    return isUtc
        ? DateTime.utc(
            year ?? this.year,
            month ?? this.month,
            day ?? this.day,
            hour ?? this.hour,
            minute ?? this.minute,
            second ?? this.second,
            millisecond ?? this.millisecond,
            microsecond ?? this.microsecond,
          )
        : DateTime(
            year ?? this.year,
            month ?? this.month,
            day ?? this.day,
            hour ?? this.hour,
            minute ?? this.minute,
            second ?? this.second,
            millisecond ?? this.millisecond,
            microsecond ?? this.microsecond,
          );
  }

  /// Gets the day of the year for this [DateTime].
  ///
  /// For example, January 1st returns 1, and December 31st returns 365 (or 366 in a leap year).
  int get dayOfYear {
    final startOfYear = DateTime(year);
    return difference(startOfYear).inDays + 1;
  }
}
