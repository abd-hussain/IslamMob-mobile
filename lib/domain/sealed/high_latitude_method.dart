import 'package:freezed_annotation/freezed_annotation.dart';

part 'freezed/high_latitude_method.freezed.dart';

/// A sealed class representing different high latitude calculation methods for prayer times.
///
/// In high latitude regions (typically above 48° latitude), standard astronomical
/// calculations for prayer times may not work properly due to extended daylight
/// or darkness periods. This sealed class defines various methods to handle
/// prayer time calculations in such regions:
///
/// - **None**: No special high latitude adjustment (standard calculation)
/// - **Angle-based method**: Uses specific twilight angles for calculations
/// - **Midnight**: Divides the night period for Fajr and Isha calculations
/// - **Seventh part of the night**: Uses 1/7 of the night duration
///
/// These methods are essential for Muslims living in northern countries like
/// Scandinavia, northern Canada, Alaska, or similar southern regions where
/// the sun may not set or rise for extended periods during certain seasons.
@freezed
sealed class PrayHightLatitudeCaluclationState
    with _$PrayHightLatitudeCaluclationState {
  const factory PrayHightLatitudeCaluclationState.none() =
      PrayHightLatitudeCaluclationStateNone;
  const factory PrayHightLatitudeCaluclationState.angleBasedMethod() =
      PrayHightLatitudeCaluclationStateAngleBasedMethod;
  const factory PrayHightLatitudeCaluclationState.midnight() =
      PrayHightLatitudeCaluclationStateMidnight;
  const factory PrayHightLatitudeCaluclationState.seventhPartOfTheNight() =
      PrayHightLatitudeCaluclationStateSeventhPartOfTheNight;
}
