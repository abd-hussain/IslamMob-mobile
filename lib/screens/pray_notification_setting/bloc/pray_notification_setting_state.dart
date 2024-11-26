part of 'pray_notification_setting_bloc.dart';

@freezed
class PrayNotificationSettingState with _$PrayNotificationSettingState {
  const factory PrayNotificationSettingState({
    @Default(false) bool allowAllNotifications,
    @Default(false) bool allNotificationForToday,
    @Default(false) bool allNotificationForThreeDay,
    @Default(false) bool allNotificationForWeekDay,
    @Default(true) bool fajirNotification,
    @Default(true) bool duhirNotification,
    @Default(true) bool asrNotification,
    @Default(true) bool magriebNotification,
    @Default(true) bool ishaNotification,
    @Default(true) bool adkarNotification,
    @Default(false) bool applicationNotification,
    @Default(PrayNotificationSettingProcessState.idl()) loadingStatus,
  }) = _PrayNotificationSettingState;
}

@freezed
sealed class PrayNotificationSettingProcessState
    with _$PrayNotificationSettingProcessState {
  const factory PrayNotificationSettingProcessState.idl() =
      PrayNotificationSettingProcessStateIdl;
  const factory PrayNotificationSettingProcessState.loading() =
      PrayNotificationSettingProcessStateLoading;
  const factory PrayNotificationSettingProcessState.error() =
      PrayNotificationSettingProcessStateError;
  const factory PrayNotificationSettingProcessState.success() =
      PrayNotificationSettingProcessStateSuccess;
}
