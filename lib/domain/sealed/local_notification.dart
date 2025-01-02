import 'package:freezed_annotation/freezed_annotation.dart';
part 'local_notification.freezed.dart';

@freezed
sealed class NotificationTypeState with _$NotificationTypeState {
  const factory NotificationTypeState.fajir() = NotificationTypeStateFajir;
  const factory NotificationTypeState.sunrise() = NotificationTypeStateSunrise;
  const factory NotificationTypeState.zuhr() = NotificationTypeStateZuhr;
  const factory NotificationTypeState.asr() = NotificationTypeStateAsr;
  const factory NotificationTypeState.maghrib() = NotificationTypeStateMaghrib;
  const factory NotificationTypeState.isha() = NotificationTypeStateIsha;
  const factory NotificationTypeState.before15Minutes() =
      NotificationTypeStateBefore15Minutes;
}
