part of 'pray_notification_setting_bloc.dart';

/// Events for the Prayer Notification Setting BLoC.
///
/// This class defines all possible events that can be dispatched to the
/// [PrayNotificationSettingBloc] to manage prayer notification preferences
/// and settings configuration.
@freezed
class PrayNotificationSettingEvent with _$PrayNotificationSettingEvent {
  /// Initializes the prayer notification settings.
  ///
  /// This event loads the current notification preferences from persistent
  /// storage and sets up the initial state for all prayer notification types.
  const factory PrayNotificationSettingEvent.initialPrayNotificationSettings() =
      _InitialPrayNotificationSettings;

  /// Changes the notification setting for a specific prayer type.
  ///
  /// This event updates the enabled/disabled state for a particular prayer
  /// notification. The change is applied immediately to the state but may
  /// require saving to persist the changes.
  ///
  /// [status] - true to enable the notification, false to disable it
  /// [type] - the specific prayer notification type to modify
  const factory PrayNotificationSettingEvent.changePrayNotificationSettings({
    required bool status,
    DateTime? date,
    required PrayNotificationTypeState type,
  }) = _ChangePrayNotificationSettings;

  /// Saves all current prayer notification settings to persistent storage.
  ///
  /// This event commits all current notification preferences to the database
  /// and may trigger system-level notification scheduling updates.
  ///
  /// [context] - the build context needed for accessing system services
  const factory PrayNotificationSettingEvent.savePrayNotificationSettings({
    required BuildContext context,
  }) = _SavePrayNotificationSettings;
}
