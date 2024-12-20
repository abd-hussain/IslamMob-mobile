part of 'notifications_bloc.dart';

@freezed
class NotificationsEvent with _$NotificationsEvent {
  const factory NotificationsEvent.changeNotificationStatus({
    required NotificationsProcessState status,
  }) = _ChangeNotificationStatus;

  const factory NotificationsEvent.setupToken({required String token}) =
      _SetupToken;
}
