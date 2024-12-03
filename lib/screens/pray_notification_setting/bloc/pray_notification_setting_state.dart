part of 'pray_notification_setting_bloc.dart';

@freezed
class PrayNotificationSettingState with _$PrayNotificationSettingState {
  const factory PrayNotificationSettingState({
    @Default(false) bool allNotificationForToday,
    @Default(false) bool allNotificationForThreeDay,
    @Default(false) bool allNotificationForWeekDay,
    @Default(true) bool fajir,
    @Default(true) bool duhir,
    @Default(true) bool asr,
    @Default(true) bool magrieb,
    @Default(true) bool isha,
    @Default(true) bool sunrise,
    @Default(true) bool before15Min,
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
