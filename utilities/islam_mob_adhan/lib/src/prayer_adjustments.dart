/// Represents adjustment values for prayer times, in minutes.
///
/// These values are added (or subtracted) from the calculated prayer times
/// before returning the final results.
class PrayerAdjustments {
  /// Fajr adjustment in minutes.
  final int fajr;

  /// Sunrise adjustment in minutes.
  final int sunrise;

  /// Dhuhr adjustment in minutes.
  final int dhuhr;

  /// Asr adjustment in minutes.
  final int asr;

  /// Maghrib adjustment in minutes.
  final int maghrib;

  /// Isha adjustment in minutes.
  final int isha;

  /// Creates a [PrayerAdjustments] instance with specified adjustments for prayer times.
  ///
  /// - [fajr]: Adjustment for Fajr time in minutes (default is 0).
  /// - [sunrise]: Adjustment for Sunrise time in minutes (default is 0).
  /// - [dhuhr]: Adjustment for Dhuhr time in minutes (default is 0).
  /// - [asr]: Adjustment for Asr time in minutes (default is 0).
  /// - [maghrib]: Adjustment for Maghrib time in minutes (default is 0).
  /// - [isha]: Adjustment for Isha time in minutes (default is 0).
  const PrayerAdjustments({
    this.fajr = 0,
    this.sunrise = 0,
    this.dhuhr = 0,
    this.asr = 0,
    this.maghrib = 0,
    this.isha = 0,
  });

  /// Creates a copy of this [PrayerAdjustments] with updated values.
  ///
  /// Only the specified fields will be updated; the rest will retain their original values.
  PrayerAdjustments copyWith({
    int? fajr,
    int? sunrise,
    int? dhuhr,
    int? asr,
    int? maghrib,
    int? isha,
  }) {
    return PrayerAdjustments(
      fajr: fajr ?? this.fajr,
      sunrise: sunrise ?? this.sunrise,
      dhuhr: dhuhr ?? this.dhuhr,
      asr: asr ?? this.asr,
      maghrib: maghrib ?? this.maghrib,
      isha: isha ?? this.isha,
    );
  }
}
