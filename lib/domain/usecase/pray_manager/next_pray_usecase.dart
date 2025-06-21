import 'package:islam_app/domain/repository/pray_manager.dart';
import 'package:islam_app/domain/sealed/salah_time_state.dart';
import 'package:islam_mob_adhan/adhan.dart';

/// Use case for determining the next Islamic prayer time and type.
///
/// This class provides functionality to identify the next upcoming prayer
/// in the Islamic daily prayer schedule. It works with the prayer manager
/// to calculate and return both the time and type of the next prayer,
/// which is essential for:
/// - **Prayer reminders** and notifications
/// - **Countdown displays** showing time until next prayer
/// - **Prayer schedule navigation** in the app interface
/// - **Islamic time awareness** throughout the day
///
/// The use case handles the five daily prayers (Fajr, Dhuhr, Asr, Maghrib, Isha)
/// plus sunrise time, providing accurate next prayer information based on
/// the user's location and selected calculation method.
class NextPrayUsecase {
  /// The prayer manager repository for calculating prayer times.
  final PrayManagerRepository prayManager;

  /// Creates a [NextPrayUsecase] with the specified prayer manager.
  ///
  /// Parameters:
  /// - [prayManager]: The prayer manager repository for prayer time calculations
  NextPrayUsecase(this.prayManager);

  /// Returns the DateTime of the next upcoming prayer.
  ///
  /// This method calculates and returns the exact time when the next prayer
  /// is scheduled to begin. The time is based on the user's location,
  /// selected calculation method, and current date/time.
  ///
  /// Returns null if no next prayer time can be determined (which should
  /// be rare in normal circumstances).
  ///
  /// Example:
  /// ```dart
  /// final nextTime = nextPrayUsecase.nextPrayerTime();
  /// if (nextTime != null) {
  ///   print('Next prayer at: ${nextTime.toString()}');
  /// }
  /// ```
  DateTime? nextPrayerTime() {
    return prayManager.getNextPrayerWithTime().values.first;
  }

  /// Returns the type/name of the next upcoming prayer.
  ///
  /// This method identifies which prayer is coming next in the Islamic
  /// daily schedule and returns the corresponding prayer type. The method
  /// maps from the internal Prayer enum to the app's SalahTimeState system.
  ///
  /// The possible return values are:
  /// - Fajr (Dawn prayer)
  /// - Sunrise (end of Fajr time)
  /// - Dhuhr (Noon prayer)
  /// - Asr (Afternoon prayer)
  /// - Maghrib (Sunset prayer)
  /// - Isha (Night prayer)
  /// - None (if no prayer is determined)
  ///
  /// Returns a [SalahTimeState] representing the next prayer type.
  ///
  /// Example:
  /// ```dart
  /// final nextType = nextPrayUsecase.nextPrayerType();
  /// print('Next prayer: ${nextType.toString()}');
  /// ```
  SalahTimeState nextPrayerType() {
    final nextPrayer = prayManager.getNextPrayerWithTime().keys.first;

    switch (nextPrayer) {
      case Prayer.fajr:
        return const SalahTimeStateFajir();
      case Prayer.sunrise:
        return const SalahTimeStateSunrise();
      case Prayer.dhuhr:
        return const SalahTimeStateZhur();
      case Prayer.asr:
        return const SalahTimeStateAsr();
      case Prayer.maghrib:
        return const SalahTimeStateMaghrib();
      case Prayer.isha:
        return const SalahTimeStateIsha();
      case Prayer.none:
        return const SalahTimeStateNone();
    }
  }
}
