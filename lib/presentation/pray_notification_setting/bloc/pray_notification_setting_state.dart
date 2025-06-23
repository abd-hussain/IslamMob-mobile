part of 'pray_notification_setting_bloc.dart';

/// State class for the prayer notification settings BLoC.
///
/// This class represents the current state of all prayer notification settings,
/// including individual prayer notifications, special notifications, and
/// the overall loading status of the settings screen.
@freezed
class PrayNotificationSettingState with _$PrayNotificationSettingState {
  /// Creates a [PrayNotificationSettingState] with the given parameters.
  ///
  /// All notification settings default to their respective values:
  /// - General notification settings default to false
  /// - Individual prayer notifications default to true
  /// - Special notifications default to true
  /// - Loading status defaults to loading state
  const factory PrayNotificationSettingState({
    /// Whether all notifications are enabled for today only.
    @Default("") String allNotificationForToday,

    /// Whether Fajr prayer notifications are enabled.
    @Default(true) bool fajir,

    /// Whether Dhuhr prayer notifications are enabled.
    @Default(true) bool duhir,

    /// Whether Asr prayer notifications are enabled.
    @Default(true) bool asr,

    /// Whether Maghrib prayer notifications are enabled.
    @Default(true) bool magrieb,

    /// Whether Isha prayer notifications are enabled.
    @Default(true) bool isha,

    /// Whether sunrise time notifications are enabled.
    @Default(true) bool sunriseTime,

    /// Whether Friday Al-Kahf notifications are enabled.
    @Default(true) bool jom3aAlkahf,

    /// Whether Friday prayer notifications are enabled.
    @Default(true) bool jom3aDo3aa,

    /// Whether night prayer (Qiyam al-Layl) notifications are enabled.
    @Default(true) bool qeyamAlLayel,

    /// Whether 15-minute before prayer notifications are enabled.
    @Default(true) bool before15Min,

    /// The current loading/processing status of the settings.
    @Default(PrayNotificationSettingProcessState.loading()) loadingStatus,
  }) = _PrayNotificationSettingState;
}

/// Sealed class representing the processing state of prayer notification settings.
///
/// This class defines the different states that the prayer notification
/// settings screen can be in during loading, saving, and error handling.
@freezed
sealed class PrayNotificationSettingProcessState
    with _$PrayNotificationSettingProcessState {
  /// State indicating that settings are currently being loaded.
  const factory PrayNotificationSettingProcessState.loading() =
      PrayNotificationSettingProcessStateLoading;

  /// State indicating that an error occurred during processing.
  const factory PrayNotificationSettingProcessState.error() =
      PrayNotificationSettingProcessStateError;

  /// State indicating that the operation completed successfully.
  const factory PrayNotificationSettingProcessState.success() =
      PrayNotificationSettingProcessStateSuccess;

  /// State indicating that settings have been successfully saved.
  const factory PrayNotificationSettingProcessState.settingSaved() =
      PrayNotificationSettingProcessStateSettingSaved;
}
