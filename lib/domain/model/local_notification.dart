import 'package:freezed_annotation/freezed_annotation.dart';
part 'local_notification.freezed.dart';

@freezed
class LocalNotification with _$LocalNotification {
  factory LocalNotification({
    required String rightNowMessage,
    required String remeningTimeMessage,
    required String nextSalahTime,
    required String? soundFileName,
    required bool isItForCountdown,
  }) = _LocalNotification;
}
