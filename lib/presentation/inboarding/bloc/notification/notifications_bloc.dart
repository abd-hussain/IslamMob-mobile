import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'notifications_event.dart';
part 'notifications_state.dart';
part 'notifications_bloc.freezed.dart';

class NotificationsBloc extends Bloc<NotificationsEvent, NotificationsState> {
  NotificationsBloc() : super(const NotificationsState()) {
    on<_ChangeNotificationStatus>(_changeNotificationStatus);
  }

  FutureOr<void> _changeNotificationStatus(
      _ChangeNotificationStatus event, Emitter<NotificationsState> emit) {
    emit(state.copyWith(status: event.status));
  }
}
