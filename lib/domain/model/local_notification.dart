import 'package:freezed_annotation/freezed_annotation.dart';

part 'local_notification.freezed.dart';

/// A model representing a local notification for Islamic prayer times and reminders.
///
/// This immutable data class encapsulates all the information needed to
/// display and manage local notifications related to Islamic prayers and
/// religious reminders. It includes:
/// - Current prayer status messages
/// - Descriptive content for the notification
/// - Time-related information and countdowns
/// - Audio settings for notification sounds
/// - Notification type classification
///
/// The model is used throughout the app's notification system to provide
/// timely reminders for prayer times, countdown notifications, and other
/// Islamic observances. It supports both immediate notifications (for current
/// prayer times) and scheduled notifications (for upcoming prayers).
@freezed
abstract class LocalNotification with _$LocalNotification {
  /// Creates a [LocalNotification] instance for Islamic prayer and reminder notifications.
  ///
  /// Parameters:
  /// - [rightNowMessage]: The immediate status message (e.g., "Fajr time now")
  /// - [description]: Detailed description of the notification content
  /// - [remeningTimeMessage]: Message showing remaining time until next prayer
  /// - [nextSalahTime]: The time of the next prayer (formatted string)
  /// - [soundFileName]: Optional custom sound file for this notification
  /// - [isItForCountdown]: Whether this notification is for countdown purposes
  ///
  /// The [rightNowMessage] is displayed when a prayer time has arrived,
  /// providing immediate notification to the user. The [description] offers
  /// additional context or instructions related to the prayer or reminder.
  ///
  /// The [remeningTimeMessage] helps users track time until the next prayer,
  /// supporting the Islamic practice of being mindful of prayer times
  /// throughout the day. The [nextSalahTime] provides the specific time
  /// for planning purposes.
  ///
  /// The [soundFileName] allows for customized notification sounds, which
  /// can include traditional Islamic call to prayer (Adhan) or other
  /// appropriate audio files. When null, the system default sound is used.
  ///
  /// The [isItForCountdown] flag distinguishes between immediate prayer
  /// notifications and countdown/reminder notifications, allowing for
  /// different handling and display logic.
  ///
  /// Example:
  /// ```dart
  /// final prayerNotification = LocalNotification(
  ///   rightNowMessage: 'Fajr prayer time has arrived',
  ///   description: 'It is time for the dawn prayer (Fajr)',
  ///   remeningTimeMessage: 'Next prayer (Zuhr) in 6 hours 30 minutes',
  ///   nextSalahTime: '12:30 PM',
  ///   soundFileName: 'adhan_fajr.mp3',
  ///   isItForCountdown: false,
  /// );
  /// ```
  factory LocalNotification({
    required String rightNowMessage,
    required String description,
    required String remeningTimeMessage,
    required String nextSalahTime,
    required String? soundFileName,
    required bool isItForCountdown,
  }) = _LocalNotification;
}
