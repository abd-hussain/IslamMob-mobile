import 'package:freezed_annotation/freezed_annotation.dart';

part 'pray_timing.freezed.dart';

/// A model representing Islamic prayer times as formatted strings.
///
/// This immutable data class encapsulates all the Islamic prayer times and
/// significant night times as user-readable string representations. It includes:
///
/// **The Five Daily Prayers:**
/// - **Fajr**: Dawn prayer time
/// - **Dhuhr**: Noon prayer time
/// - **Asr**: Afternoon prayer time
/// - **Maghrib**: Sunset prayer time
/// - **Isha**: Night prayer time
///
/// **Additional Islamic Times:**
/// - **Sunrise**: End of Fajr prayer time
/// - **Middle of the Night**: Significant time for voluntary prayers
/// - **Last Third of the Night**: Blessed time for supplications and Tahajjud prayer
///
/// All times are formatted as strings for display purposes in the user interface.
@freezed
class PrayTimingModel with _$PrayTimingModel {
  /// Creates a [PrayTimingModel] with formatted prayer time strings.
  ///
  /// All parameters represent prayer times formatted for display (e.g., "5:30 AM", "17:45").
  /// The formatting should be consistent with the user's locale and time preferences.
  ///
  /// Example:
  /// ```dart
  /// final prayerTimes = PrayTimingModel(
  ///   fajir: '5:30 AM',
  ///   sunrise: '6:45 AM',
  ///   dhuhr: '12:15 PM',
  ///   asr: '3:30 PM',
  ///   maghrib: '6:45 PM',
  ///   isha: '8:00 PM',
  ///   middleOfTheNight: '12:30 AM',
  ///   lastThirdOfTheNight: '3:45 AM',
  /// );
  /// ```
  factory PrayTimingModel({
    required String fajir,
    required String sunrise,
    required String dhuhr,
    required String asr,
    required String maghrib,
    required String isha,
    required String middleOfTheNight,
    required String lastThirdOfTheNight,
  }) = _PrayTimingModel;
}

/// A model representing Islamic prayer times as DateTime objects.
///
/// This immutable data class encapsulates all the Islamic prayer times and
/// significant night times as precise DateTime objects for calculations,
/// scheduling, and programmatic use.
///
/// This model is used for:
/// - Scheduling notifications and alarms
/// - Calculating time differences and countdowns
/// - Comparing with current time for prayer status
/// - Backend calculations and data processing
///
/// The DateTime objects provide precise timing information that can be
/// used for accurate prayer time management and Islamic time calculations.
@freezed
class PrayTimingDateTimeModel with _$PrayTimingDateTimeModel {
  /// Creates a [PrayTimingDateTimeModel] with precise DateTime prayer times.
  ///
  /// All parameters represent exact prayer times as DateTime objects.
  /// These should be calculated based on the user's location and selected
  /// calculation method for maximum accuracy.
  ///
  /// Example:
  /// ```dart
  /// final prayerTimes = PrayTimingDateTimeModel(
  ///   fajir: DateTime(2024, 3, 15, 5, 30),
  ///   sunrise: DateTime(2024, 3, 15, 6, 45),
  ///   dhuhr: DateTime(2024, 3, 15, 12, 15),
  ///   asr: DateTime(2024, 3, 15, 15, 30),
  ///   maghrib: DateTime(2024, 3, 15, 18, 45),
  ///   isha: DateTime(2024, 3, 15, 20, 0),
  ///   middleOfTheNight: DateTime(2024, 3, 16, 0, 30),
  ///   lastThirdOfTheNight: DateTime(2024, 3, 16, 3, 45),
  /// );
  /// ```
  factory PrayTimingDateTimeModel({
    required DateTime fajir,
    required DateTime sunrise,
    required DateTime dhuhr,
    required DateTime asr,
    required DateTime maghrib,
    required DateTime isha,
    required DateTime middleOfTheNight,
    required DateTime lastThirdOfTheNight,
  }) = _PrayTimingDateTimeModel;
}
