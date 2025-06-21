import 'package:azkar/azkar.dart';
import 'package:islam_app/domain/sealed/local_notification.dart';
import 'package:islam_app/domain/sealed/salah_time_state.dart';

/// Parser for converting between different Salah (prayer) time state representations.
///
/// This utility class provides conversion methods between the app's internal
/// prayer time state system and external library state formats. It handles:
/// - **Azkar state conversion** for post-prayer remembrance functionality
/// - **Notification type mapping** for prayer time alerts and reminders
/// - **State consistency** across different Islamic feature modules
/// - **Type safety** through sealed class pattern matching
///
/// The parser ensures proper integration between:
/// - Prayer time calculation system
/// - Azkar (Islamic remembrance) functionality
/// - Notification scheduling system
/// - UI state management
///
/// This abstraction layer maintains clean separation between different
/// Islamic feature modules while ensuring consistent prayer time handling
/// throughout the application.
class SalahTimeStateParser {
  /// Converts app prayer time state to Azkar library state format.
  ///
  /// This method maps the app's internal prayer time representation to the
  /// format required by the Azkar library for post-prayer remembrances.
  /// Each prayer time has corresponding azkar (remembrances) that should
  /// be recited after completing the prayer.
  ///
  /// The conversion ensures that:
  /// - Each prayer maps to its appropriate azkar category
  /// - Sunrise time is handled for timing-related azkar
  /// - None state provides fallback for undefined prayer times
  ///
  /// Parameters:
  /// - [prayType]: The app's internal prayer time state
  ///
  /// Returns the corresponding [AzkarSalahTimeState] for the Azkar library.
  ///
  /// Example:
  /// ```dart
  /// final fajrState = SalahTimeState.fajir();
  /// final azkarState = SalahTimeStateParser.getSalahTimeState(fajrState);
  /// // Returns AzkarSalahTimeState.fajir() for Fajr prayer azkar
  /// ```
  static AzkarSalahTimeState getSalahTimeState(SalahTimeState prayType) {
    switch (prayType) {
      case SalahTimeStateFajir():
        return const AzkarSalahTimeState.fajir();
      case SalahTimeStateSunrise():
        return const AzkarSalahTimeState.sunrise();
      case SalahTimeStateZhur():
        return const AzkarSalahTimeState.zhur();
      case SalahTimeStateAsr():
        return const AzkarSalahTimeState.asr();
      case SalahTimeStateMaghrib():
        return const AzkarSalahTimeState.maghrib();
      case SalahTimeStateIsha():
        return const AzkarSalahTimeState.isha();
      case SalahTimeStateNone():
        return const AzkarSalahTimeState.none();
    }
  }

  /// Converts prayer time state to notification type for scheduling alerts.
  ///
  /// This method maps the app's prayer time state to the appropriate
  /// notification type for scheduling prayer time alerts and reminders.
  /// It ensures that each prayer receives the correct notification
  /// configuration for Islamic prayer time management.
  ///
  /// The conversion handles:
  /// - All five daily prayers with their specific notification types
  /// - Sunrise time for timing-related notifications
  /// - Default 15-minute reminder for undefined states
  ///
  /// This is essential for the Islamic notification system to provide
  /// timely prayer reminders that help Muslims maintain their daily
  /// prayer obligations regardless of their location or schedule.
  ///
  /// Parameters:
  /// - [state]: The prayer time state to convert
  ///
  /// Returns the corresponding [NotificationTypeState] for scheduling
  /// prayer time notifications and reminders.
  ///
  /// Example:
  /// ```dart
  /// final maghribState = SalahTimeState.maghrib();
  /// final notificationType = SalahTimeStateParser.getNextSalahNotificationType(maghribState);
  /// // Returns NotificationTypeState.maghrib() for Maghrib prayer notifications
  /// ```
  static NotificationTypeState getNextSalahNotificationType(
      SalahTimeState state) {
    switch (state) {
      case SalahTimeStateFajir():
        return const NotificationTypeState.fajir();
      case SalahTimeStateSunrise():
        return const NotificationTypeState.sunrise();
      case SalahTimeStateZhur():
        return const NotificationTypeState.zuhr();
      case SalahTimeStateAsr():
        return const NotificationTypeState.asr();
      case SalahTimeStateMaghrib():
        return const NotificationTypeState.maghrib();
      case SalahTimeStateIsha():
        return const NotificationTypeState.isha();
      case SalahTimeStateNone():
        return const NotificationTypeState.before15Minutes();
    }
  }
}
