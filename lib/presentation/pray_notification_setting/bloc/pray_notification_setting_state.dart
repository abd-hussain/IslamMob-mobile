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
    @Default(true) bool sunriseTime,
    @Default(true) bool jom3aAlkahf,
    @Default(true) bool jom3aDo3aa,
    @Default(true) bool qeyamAlLayel,
    @Default(true) bool before15Min,
    @Default(PrayNotificationSettingProcessState.loading()) loadingStatus,
  }) = _PrayNotificationSettingState;
}

@freezed
sealed class PrayNotificationSettingProcessState
    with _$PrayNotificationSettingProcessState {
  const factory PrayNotificationSettingProcessState.loading() =
      PrayNotificationSettingProcessStateLoading;
  const factory PrayNotificationSettingProcessState.error() =
      PrayNotificationSettingProcessStateError;
  const factory PrayNotificationSettingProcessState.success() =
      PrayNotificationSettingProcessStateSuccess;
  const factory PrayNotificationSettingProcessState.settingSaved() =
      PrayNotificationSettingProcessStateSettingSaved;
}
