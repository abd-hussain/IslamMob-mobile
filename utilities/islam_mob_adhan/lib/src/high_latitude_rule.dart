/// Rules for calculating Fajr and Isha times in places with high latitudes.
enum HighLatitudeRule {
  /// Fajr will not be earlier than the middle of the night,
  /// and Isha will not be later than the middle of the night.
  middleOfTheNight,

  /// Fajr will not be earlier than the beginning of the last seventh of the night,
  /// and Isha will not be later than the end of the first seventh of the night.
  seventhOfTheNight,

  /// Similar to [HighLatitudeRule.seventhOfTheNight], but instead of 1/7th,
  /// the fraction of the night used is determined by the angles:
  /// - Fajr: `fajrAngle / 60`
  /// - Isha: `ishaAngle / 60`.
  twilightAngle,
}
