import 'package:freezed_annotation/freezed_annotation.dart';

part 'choose_location.freezed.dart';

/// A model representing a selectable location for prayer time calculations.
///
/// This immutable data class encapsulates location information needed for
/// accurate Islamic prayer time calculations. It includes:
/// - Visual representation through country flags
/// - Human-readable location identification
/// - Precise geographical coordinates for astronomical calculations
///
/// The model is used in location selection interfaces where users can choose
/// their location from a predefined list of countries or cities. The geographical
/// coordinates are essential for calculating accurate prayer times based on
/// the sun's position relative to the user's location.
///
/// This is particularly important in Islamic practice as prayer times are
/// determined by specific solar positions (dawn, noon, afternoon shadow,
/// sunset, and twilight) which vary based on geographical location and date.
@freezed
class ChooseLocation with _$ChooseLocation {
  /// Creates a [ChooseLocation] instance representing a selectable location.
  ///
  /// Parameters:
  /// - [flag]: The country flag code or emoji for visual representation
  /// - [countryName]: The human-readable name of the country or city
  /// - [latitude]: The geographical latitude coordinate in decimal degrees
  /// - [longitude]: The geographical longitude coordinate in decimal degrees
  ///
  /// The latitude and longitude coordinates should be precise enough for
  /// accurate prayer time calculations. These coordinates are used in
  /// astronomical calculations to determine the sun's position relative
  /// to the location throughout the day.
  ///
  /// Example:
  /// ```dart
  /// final location = ChooseLocation(
  ///   flag: '🇸🇦',
  ///   countryName: 'Saudi Arabia - Makkah',
  ///   latitude: 21.4225,
  ///   longitude: 39.8262,
  /// );
  /// ```
  factory ChooseLocation({
    required String flag,
    required String countryName,
    required double latitude,
    required double longitude,
  }) = _ChooseLocation;
}
