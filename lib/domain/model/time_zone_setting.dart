import 'package:freezed_annotation/freezed_annotation.dart';

part 'time_zone_setting.freezed.dart';

/// A model representing a time zone setting option for prayer time calculations.
///
/// This immutable data class encapsulates time zone information needed for
/// accurate Islamic prayer time calculations. Prayer times are highly dependent
/// on geographical location and local time zones, making proper time zone
/// handling crucial for religious observance.
///
/// The model includes:
/// - **Human-readable identification** of the time zone
/// - **Precise time offset** from UTC for calculations
/// - **Selection state** for user interface management
///
/// Time zones are essential for prayer time accuracy because Islamic prayer
/// times are calculated based on the sun's position relative to a specific
/// location. Even small time zone errors can result in incorrect prayer times,
/// which could affect the validity of prayers in Islamic practice.
@freezed
abstract class TimeZoneSetting with _$TimeZoneSetting {
  /// Creates a [TimeZoneSetting] instance representing a time zone option.
  ///
  /// Parameters:
  /// - [name]: Human-readable name of the time zone (e.g., "GMT+3", "Eastern Time")
  /// - [duration]: The time offset from UTC as a Duration object
  /// - [isSelected]: Whether this time zone is currently selected by the user
  ///
  /// The [name] should be clear and recognizable to users, potentially including
  /// both the UTC offset and common regional names. The [duration] represents
  /// the exact offset from Coordinated Universal Time (UTC), which is used in
  /// prayer time calculations.
  ///
  /// The [isSelected] flag helps manage the user interface for time zone
  /// selection, ensuring users can see their current selection and make
  /// changes when necessary.
  ///
  /// Example:
  /// ```dart
  /// final easternTime = TimeZoneSetting(
  ///   name: 'Eastern Time (UTC-5)',
  ///   duration: Duration(hours: -5),
  ///   isSelected: true,
  /// );
  ///
  /// final arabiaTime = TimeZoneSetting(
  ///   name: 'Arabia Standard Time (UTC+3)',
  ///   duration: Duration(hours: 3),
  ///   isSelected: false,
  /// );
  /// ```
  factory TimeZoneSetting({
    required String name,
    required Duration duration,
    required bool isSelected,
  }) = _TimeZoneSetting;
}
