class DateComponents {
  final int year;
  final int month;
  final int day;
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
