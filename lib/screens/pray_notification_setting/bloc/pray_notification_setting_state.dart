part of 'pray_notification_setting_bloc.dart';

@freezed
class PrayNotificationSettingState with _$PrayNotificationSettingState {
  const factory PrayNotificationSettingState({
    @Default(false) bool allowAllNotifications,
    @Default(false) bool nextPrayNotification,
    @Default(false) bool allNotificationForToday,
    @Default(false) bool allNotificationForThreeDay,
    @Default(false) bool allNotificationForWeekDay,
    @Default(false) bool fajirNotification,
    @Default(false) bool duhirNotification,
    @Default(false) bool asrNotification,
    @Default(false) bool magriebNotification,
    @Default(false) bool ishaNotification,
    @Default(false) bool adkarNotification,
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
