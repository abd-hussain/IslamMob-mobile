import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:islam_app/domain/sealed/high_latitude_method.dart';

part 'high_latitude_setting.freezed.dart';

/// A model representing a high latitude calculation method setting for prayer times.
///
/// This immutable data class encapsulates information about different methods
/// used to calculate prayer times in high latitude regions where standard
/// astronomical calculations may not work properly. In areas far from the
/// equator (typically above 48° latitude), certain prayer times like Fajr
/// and Isha may not occur naturally due to extended daylight or darkness.
///
/// High latitude calculation methods include:
/// - **Angle-based method**: Uses specific angles for twilight calculations
/// - **Middle of Night**: Divides the night into portions
/// - **One Seventh**: Uses 1/7 of the night for calculations
/// - **Twilight Angle**: Applies fixed twilight angles
///
/// These methods are essential for Muslims living in northern countries
/// (like Scandinavia, northern Canada, Alaska) or southern regions with
/// extreme seasonal variations in daylight hours.
@freezed
class HighLatitudeSetting with _$HighLatitudeSetting {
  /// Creates a [HighLatitudeSetting] instance for high latitude prayer calculations.
  ///
  /// Parameters:
  /// - [name]: The localized display name of the high latitude calculation method
  /// - [method]: The specific high latitude calculation method state/type
  /// - [isSelected]: Whether this method is currently selected by the user
  ///
  /// The high latitude methods are crucial for maintaining regular prayer
  /// schedules in regions where the sun may not set or rise for extended
  /// periods, or where twilight periods are extremely short or long.
  ///
  /// Example:
  /// ```dart
  /// final setting = HighLatitudeSetting(
  ///   name: 'Middle of Night',
  ///   method: PrayHightLatitudeCaluclationState.middleOfNight(),
  ///   isSelected: true,
  /// );
  /// ```
  factory HighLatitudeSetting({
    required String name,
    required PrayHightLatitudeCaluclationState method,
    required bool isSelected,
  }) = _HighLatitudeSetting;
}
