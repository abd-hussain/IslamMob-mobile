part of 'pray_notification_setting_bloc.dart';

@freezed
class PrayNotificationSettingEvent with _$PrayNotificationSettingEvent {
  const factory PrayNotificationSettingEvent.quickNotificationSettings({
    required bool status,
    required QuickNotificationType type,
  }) = _QuickNotificationSettings;

  const factory PrayNotificationSettingEvent.prayNotificationSettings({
    required bool status,
    required PrayNotificationType type,
  }) = _PrayNotificationSettings;

  const factory PrayNotificationSettingEvent.pushNotificationSetting({
    required bool status,
  }) = _PushNotificationSetting;
}
