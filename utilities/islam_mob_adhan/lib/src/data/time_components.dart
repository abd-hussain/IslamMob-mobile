/// Represents time components broken down into hours, minutes, and seconds.
///
/// This class is used to represent time values in Islamic prayer time calculations,
/// providing a structured way to handle time components separately.
class TimeComponents {
  /// The hour component of the time (0-23).
  final int hours;

  /// The minute component of the time (0-59).
  final int minutes;

  /// The second component of the time (0-59).
  final int seconds;

  /// Creates a new [TimeComponents] instance with the specified time components.
  ///
  /// The [hours] should be in 24-hour format (0-23).
  /// The [minutes] and [seconds] should be in the range 0-59.
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
