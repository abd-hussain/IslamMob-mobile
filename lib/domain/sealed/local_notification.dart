import 'package:freezed_annotation/freezed_annotation.dart';

part 'freezed/local_notification.freezed.dart';

/// A sealed class representing different types of Islamic prayer and reminder notifications.
///
/// This sealed class defines all the notification types supported by the Islam Mob app
/// for prayer times and Islamic reminders:
///
/// **Daily Prayer Notifications:**
/// - **Fajr**: Dawn prayer notification
/// - **Sunrise**: Sunrise time notification (end of Fajr time)
/// - **Zuhr**: Noon prayer notification
/// - **Asr**: Afternoon prayer notification
/// - **Maghrib**: Sunset prayer notification
/// - **Isha**: Night prayer notification
///
/// **Special Notifications:**
/// - **Before 15 Minutes**: Reminder notification 15 minutes before prayer
/// - **Midnight**: Islamic midnight time notification
/// - **Jumu'ah Surah Al-Kahf Reminder**: Friday reminder to read Surah Al-Kahf
/// - **Jumu'ah Last Hour for Dua**: Friday's blessed hour for supplications
/// - **App Reminders**: General reminders to open and use the app
///
/// Each notification type can have customized sounds, messages, and timing
/// to help Muslims maintain their prayer schedule and Islamic observances.
@freezed
sealed class NotificationTypeState with _$NotificationTypeState {
  const factory NotificationTypeState.fajir() = NotificationTypeStateFajir;
  const factory NotificationTypeState.sunrise() = NotificationTypeStateSunrise;
  const factory NotificationTypeState.zuhr() = NotificationTypeStateZuhr;
  const factory NotificationTypeState.asr() = NotificationTypeStateAsr;
  const factory NotificationTypeState.maghrib() = NotificationTypeStateMaghrib;
  const factory NotificationTypeState.isha() = NotificationTypeStateIsha;
  const factory NotificationTypeState.before15Minutes() =
      NotificationTypeStateBefore15Minutes;
  const factory NotificationTypeState.jom3aLastHourForDoaa() =
      NotificationTypeStateJom3aLastHourForDoaa;
  const factory NotificationTypeState.jom3aSoratAlKahfReminder() =
      NotificationTypeReminderjom3aSoratAlKahfReminder;
  const factory NotificationTypeState.midnight() =
      NotificationTypeStateMidnight;
  const factory NotificationTypeState.reminderToOpenTheApp1() =
      NotificationTypeReminderToOpenTheApp1;
  const factory NotificationTypeState.reminderToOpenTheApp2() =
      NotificationTypeReminderToOpenTheApp2;
}
