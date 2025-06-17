import 'package:freezed_annotation/freezed_annotation.dart';

part 'notification_sound.freezed.dart';

@freezed
class NotificationSound with _$NotificationSound {
  factory NotificationSound({
    required String name,
    required String soundFileName,
  }) = _NotificationSound;
}
