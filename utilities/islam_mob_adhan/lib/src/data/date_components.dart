/// A simple data class representing date components (year, month, day).
///
/// This class provides a lightweight way to represent a date without
/// time information, useful for Islamic calendar calculations and
/// prayer time computations.
class DateComponents {
  /// The year component of the date.
  final int year;

  /// The month component of the date (1-12).
  final int month;

  /// The day component of the date (1-31).
  final int day;

  /// Creates a new [DateComponents] with the specified [year], [month], and [day].
  DateComponents(this.year, this.month, this.day);

  /// Creates a [DateComponents] from a [DateTime] object.
  ///
  /// Returns a [DateComponents] corresponding to the default device timezone.
  factory DateComponents.from(DateTime date) =>
      DateComponents(date.year, date.month, date.day);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DateComponents &&
          runtimeType == other.runtimeType &&
          year == other.year &&
          month == other.month &&
          day == other.day;
  @override
  int get hashCode => Object.hash(year, month, day);
}
