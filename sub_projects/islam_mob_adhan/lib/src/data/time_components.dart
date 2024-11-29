class TimeComponents {
  final int hours;
  final int minutes;
  final int seconds;

  TimeComponents(this.hours, this.minutes, this.seconds);

  /// Creates a [TimeComponents] instance from a fractional double value.
  ///
  /// The [value] should represent time in hours, and must not be infinite or NaN.
  factory TimeComponents.fromDouble(double value) {
    if (value.isInfinite || value.isNaN) {
      throw ArgumentError('Value must not be infinite or NaN.');
    }

    final hours = value.floor();
    final minutes = ((value - hours) * 60).floor();
    final seconds = ((value - (hours + minutes / 60)) * 3600).floor();
    return TimeComponents(hours, minutes, seconds);
  }

  /// Combines this [TimeComponents] with a given [DateTime],
  /// creating a new [DateTime] instance with the time set to these components.
  DateTime applyToDate(DateTime date) {
    return date.copyWith(hour: hours, minute: minutes, second: seconds);
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TimeComponents &&
          runtimeType == other.runtimeType &&
          hours == other.hours &&
          minutes == other.minutes &&
          seconds == other.seconds;

  @override
  int get hashCode => Object.hash(hours, minutes, seconds);

  @override
  String toString() =>
      '${hours.toString().padLeft(2, '0')}:${minutes.toString().padLeft(2, '0')}:${seconds.toString().padLeft(2, '0')}';
}
