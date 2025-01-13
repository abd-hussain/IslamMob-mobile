part of 'pray_notification_setting_bloc.dart';

@freezed
class PrayNotificationSettingEvent with _$PrayNotificationSettingEvent {
  const factory PrayNotificationSettingEvent.initialPrayNotificationSettings() =
      _InitialPrayNotificationSettings;

  const factory PrayNotificationSettingEvent.changePrayNotificationSettings({
    required bool status,
    required PrayNotificationType type,
    required BuildContext context,
  }) = _ChangePrayNotificationSettings;
}
