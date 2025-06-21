/// Enum representing Islamic prayers in chronological order.
/// Represents the different Islamic prayer times and related periods.
enum Prayer {
  /// The dawn prayer, performed before sunrise.
  fajr,

  /// The time of sunrise, marking the end of Fajr prayer time.
  sunrise,

  /// The midday prayer, performed after the sun passes its zenith.
  dhuhr,

  /// The afternoon prayer, performed in the late afternoon.
  asr,

  /// The sunset prayer, performed just after sunset.
  maghrib,

  /// The night prayer, performed after twilight has disappeared.
  isha,

  /// Represents no specific prayer time or an undefined state.
  none
}
