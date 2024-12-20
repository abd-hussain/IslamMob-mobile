import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:islam_app/domain/usecase/setup_user_setting_usecase.dart';

part 'notifications_event.dart';
part 'notifications_state.dart';
part 'notifications_bloc.freezed.dart';

class NotificationsBloc extends Bloc<NotificationsEvent, NotificationsState> {
  final SetupUserSettingUseCase setupUserSettingUseCase =
      SetupUserSettingUseCase();

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
    setupUserSettingUseCase.setNotificationToken(event.token);
  }
}
