import 'package:freezed_annotation/freezed_annotation.dart';

part 'notification_type_sealed.freezed.dart';

/// Represents different types of prayer notification states.
///
/// This sealed class defines various notification types for Islamic prayers
/// and related reminders, including individual prayer times, bulk notifications,
/// and special occasions like Friday prayers and night prayers.
@freezed
sealed class PrayNotificationTypeState with _$PrayNotificationTypeState {
  const factory PrayNotificationTypeState.allNotificationForToday() =
      AllNotificationForToday;
  const factory PrayNotificationTypeState.allNotificationForWeekDay() =
      AllNotificationForWeekDay;
  const factory PrayNotificationTypeState.fajir() = Fajir;
  const factory PrayNotificationTypeState.duhir() = Duhir;
  const factory PrayNotificationTypeState.asr() = Asr;
  const factory PrayNotificationTypeState.magrieb() = Magrieb;
  const factory PrayNotificationTypeState.isha() = Isha;
  const factory PrayNotificationTypeState.sunriseTime() = SunriseTime;
  const factory PrayNotificationTypeState.jom3aAlkahf() = Jom3aAlkahf;
  const factory PrayNotificationTypeState.jom3aDo3aa() = Jom3aDo3aa;
  const factory PrayNotificationTypeState.qeyamAlLayel() = QeyamAlLayel;
  const factory PrayNotificationTypeState.before15Min() = Before15Min;
}
