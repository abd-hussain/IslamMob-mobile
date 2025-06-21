part of 'notifications_bloc.dart';

/// Events for the Notifications Setup BLoC.
///
/// This sealed class defines all possible events for managing notification
/// configuration during the Islamic app onboarding process. These events handle:
/// - **Status updates** for notification permission and setup progress
/// - **Token management** for push notification delivery configuration
/// - **Permission handling** for Islamic prayer time reminder access
///
/// The events support Islamic practice by enabling notification setup for
/// prayer time reminders, helping Muslims maintain their spiritual obligations
/// with timely alerts throughout the day.
@freezed
class NotificationsEvent with _$NotificationsEvent {
  /// Event to update the notification permission status during onboarding.
  ///
  /// This event tracks the progress of notification permission requests,
  /// including user responses and system permission states for Islamic
  /// prayer time reminder functionality.
  ///
  /// Parameters:
  /// - [status]: The current notification permission status
  const factory NotificationsEvent.changeNotificationStatus({
    required NotificationsProcessState status,
  }) = _ChangeNotificationStatus;

  /// Event to configure the notification token for push notifications.
  ///
  /// This event sets up the device token required for delivering Islamic
  /// prayer time reminders and spiritual notifications to the user's device.
  ///
  /// Parameters:
  /// - [token]: The device notification token for push notification delivery
  const factory NotificationsEvent.setupToken({required String token}) =
      _SetupToken;
}
