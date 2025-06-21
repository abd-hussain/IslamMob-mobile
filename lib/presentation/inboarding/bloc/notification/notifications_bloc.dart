import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:islam_app/domain/usecase/setup_user_setting_usecase.dart';

part 'notifications_bloc.freezed.dart';
part 'notifications_event.dart';
part 'notifications_state.dart';

/// BLoC for managing notification setup during Islamic app onboarding.
///
/// This BLoC handles the business logic for notification configuration during
/// the onboarding process, which is essential for Islamic prayer time reminders
/// and spiritual notifications. It manages:
/// - **Notification permission** requesting access for prayer time alerts
/// - **Token management** for push notification delivery
/// - **Status tracking** for notification setup progress
/// - **Configuration storage** for persistent notification preferences
///
/// Notification access is crucial for Islamic practice as it enables prayer
/// time reminders, helping Muslims maintain their spiritual obligations
/// throughout the day with timely alerts for each of the five daily prayers.
class NotificationsBloc extends Bloc<NotificationsEvent, NotificationsState> {
  /// Creates a [NotificationsBloc] with initial state and event handlers.
  ///
  /// Initializes the BLoC with empty notification state and sets up event
  /// handlers for notification permission management and token configuration.
  NotificationsBloc() : super(const NotificationsState()) {
    on<_ChangeNotificationStatus>(_changeNotificationStatus);
    on<_SetupToken>(_setupToken);
  }

  FutureOr<void> _changeNotificationStatus(
      _ChangeNotificationStatus event, Emitter<NotificationsState> emit) {
    emit(state.copyWith(status: event.status));
  }

  FutureOr<void> _setupToken(
      _SetupToken event, Emitter<NotificationsState> emit) {
    SetupUserSettingUseCase.setNotificationToken(event.token);
  }
}
