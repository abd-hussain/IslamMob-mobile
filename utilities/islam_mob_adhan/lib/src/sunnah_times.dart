import 'prayer_times.dart';
import 'data/calendar_util.dart';
import 'data/date_components.dart';

/// Represents Sunnah times, including the midpoint of the night and the last third of the night.
class SunnahTimes {
  /// The midpoint of the night, calculated as the halfway point between Maghrib and Fajr.
  late final DateTime middleOfTheNight;

  /// The beginning of the last third of the night, a recommended time for Qiyam.
  late final DateTime lastThirdOfTheNight;

  /// Constructs [SunnahTimes] using a [PrayerTimes] instance.
  ///
  /// - [prayerTimes]: An instance of [PrayerTimes] for calculating Sunnah times.
  SunnahTimes(PrayerTimes prayerTimes) {
    // Resolve the current date and the next day's date for the given prayer times.
    final currentDate =
        CalendarUtil.resolveTimeByDateComponents(prayerTimes.dateComponents);
    final tomorrowDate = currentDate.add(const Duration(days: 1));

    // Calculate PrayerTimes for the next day.
    final tomorrowPrayerTimes = PrayerTimes(
      prayerTimes.coordinates,
      DateComponents.from(tomorrowDate),
      prayerTimes.calculationParameters,
      utcOffset: prayerTimes.utcOffset,
    );

    // Calculate the duration of the night in seconds.
    final nightDurationInSeconds =
        (tomorrowPrayerTimes.fajr.millisecondsSinceEpoch -
                prayerTimes.maghrib.millisecondsSinceEpoch) ~/
            1000;

    // Calculate the middle of the night.
    middleOfTheNight = CalendarUtil.roundedMinute(
      prayerTimes.maghrib.add(Duration(seconds: nightDurationInSeconds ~/ 2)),
    );

    // Calculate the beginning of the last third of the night.
    lastThirdOfTheNight = CalendarUtil.roundedMinute(
      prayerTimes.maghrib
          .add(Duration(seconds: (nightDurationInSeconds * 2 ~/ 3))),
    );
  }
}
