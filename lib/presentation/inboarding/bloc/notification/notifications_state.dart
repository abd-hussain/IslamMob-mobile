part of 'notifications_bloc.dart';

/// State for the Notifications Setup BLoC.
///
/// This immutable state class manages the state of notification configuration
/// during the Islamic app onboarding process. The state tracks:
/// - **Permission status** for notification access and setup progress
/// - **Configuration state** for Islamic prayer time reminder setup
/// - **Token management** for push notification delivery
///
/// The state enables Islamic prayer time reminders by maintaining notification
/// permission information essential for delivering timely alerts to help
/// Muslims maintain their spiritual obligations throughout the day.
@freezed
class NotificationsState with _$NotificationsState {
  /// Creates a [NotificationsState] with notification permission information.
  ///
  /// Parameters:
  /// - [status]: The current notification permission status.
  ///   Defaults to NotificationsProcessState.idl(). Tracks the progress
  ///   of notification permission requests and setup for Islamic prayer
  ///   time reminders and spiritual notifications.
  ///
  /// The state provides essential information for notification-based Islamic
  /// prayer time reminders and onboarding progress tracking.
  ///
  /// Example:
  /// ```dart
  /// final state = NotificationsState(
  ///   status: NotificationsProcessState.havePermission(),
  /// );
  /// ```
  const factory NotificationsState({
    @Default(NotificationsProcessState.idl()) NotificationsProcessState status,
  }) = _NotificationsState;
}

/// Sealed class representing different states of the notification permission process.
///
/// This sealed class defines all possible states during notification permission
/// requests for Islamic prayer time reminders, providing clear status tracking
/// for permission handling and notification setup progress.
@freezed
sealed class NotificationsProcessState with _$NotificationsProcessState {
  /// Idle state when notification permission request has not started.
  const factory NotificationsProcessState.idl() = NotificationsProcessStateIdl;
  const factory NotificationsProcessState.loading() =
      NotificationsProcessStateLoading;
  const factory NotificationsProcessState.noPermission() =
      NotificationsProcessStateNoPermission;
  const factory NotificationsProcessState.havePermission() =
      NotificationsProcessStateHavePermission;
}
