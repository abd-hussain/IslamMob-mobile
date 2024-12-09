part of 'notifications_bloc.dart';

@freezed
class NotificationsState with _$NotificationsState {
  const factory NotificationsState({
    @Default(NotificationsProcessState.idl()) NotificationsProcessState status,
  }) = _NotificationsState;
}

@freezed
sealed class NotificationsProcessState with _$NotificationsProcessState {
  const factory NotificationsProcessState.idl() = NotificationsProcessStateIdl;
  const factory NotificationsProcessState.loading() =
      NotificationsProcessStateLoading;
  const factory NotificationsProcessState.noPermission() =
      NotificationsProcessStateNoPermission;
  const factory NotificationsProcessState.havePermission() =
      NotificationsProcessStateHavePermission;
}
