part of 'pray_notification_setting_bloc.dart';

@freezed
class PrayNotificationSettingEvent with _$PrayNotificationSettingEvent {
  const factory PrayNotificationSettingEvent.updateAllowAllNotifications({
    required bool status,
  }) = _UpdateAllowAllNotifications;

  const factory PrayNotificationSettingEvent.updateNextPrayNotification({
    required bool status,
  }) = _UpdateNextPrayNotification;

  const factory PrayNotificationSettingEvent.updateAllNotificationForToday({
    required bool status,
  }) = _UpdateAllNotificationForToday;

  const factory PrayNotificationSettingEvent.updateAllNotificationForThreeDay({
    required bool status,
  }) = _UpdateAllNotificationForThreeDay;

  const factory PrayNotificationSettingEvent.updateAllNotificationForWeekDay({
    required bool status,
  }) = _UpdateAllNotificationForWeekDay;

  const factory PrayNotificationSettingEvent.updateFajirNotification({
    required bool status,
  }) = _UpdateFajirNotification;

  const factory PrayNotificationSettingEvent.updateDuhirNotification({
    required bool status,
  }) = _UpdateDuhirNotification;

  const factory PrayNotificationSettingEvent.updateAsrNotification({
    required bool status,
  }) = _UpdateAsrNotification;

  const factory PrayNotificationSettingEvent.updateMagriebNotification({
    required bool status,
  }) = _UpdateMagriebNotification;

  const factory PrayNotificationSettingEvent.updateIshaNotification({
    required bool status,
  }) = _UpdateIshaNotification;

  const factory PrayNotificationSettingEvent.updateAdkarNotification({
    required bool status,
  }) = _UpdateAdkarNotification;

  const factory PrayNotificationSettingEvent.updateApplicationNotification({
    required bool status,
  }) = _UpdateApplicationNotification;

  const factory PrayNotificationSettingEvent.updateLoadingStatus({
    required bool status,
  }) = _UpdateLoadingStatus;
}
