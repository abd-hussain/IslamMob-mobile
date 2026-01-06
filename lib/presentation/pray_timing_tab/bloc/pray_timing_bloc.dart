import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:islam_app/domain/sealed/salah_time_state.dart';
import 'package:islam_app/domain/usecase/pray_manager/pray_usecase.dart';
import 'package:islam_app/domain/usecase/setup_local_notification_when_app_open_usecase.dart';
import 'package:islam_app/my_app/locator.dart';

part 'pray_timing_event.dart';
part 'pray_timing_state.dart';
part 'pray_timing_bloc.freezed.dart';

class PrayTimingBloc extends Bloc<PrayTimingEvent, PrayTimingState> {
  /// Scroll controller for managing app bar expansion and scroll behavior.
  final ScrollController scrollController = ScrollController();

  /// Prayer use case instance for calculating Islamic prayer times and next prayer.
  final PrayUsecase prayUsecase = PrayUsecase();

  PrayTimingBloc() : super(const PrayTimingState()) {
    on<_Initialize>(_initialize);
    on<_UpdateExpandedStatus>(_handleExpandedStatusUpdate);
    on<_UpdateNextPrayType>(_handleNextPrayTypeUpdate);
  }

  FutureOr<void> _initialize(
    _Initialize event,
    Emitter<PrayTimingState> emit,
  ) async {
    scrollController.addListener(_scrollListener);
    initializePrayerTimings();

    // Store context locally to avoid using it across async gaps
    final context = event.context;

    // Check if the widget is still mounted before using the context
    if (context.mounted) {
      await locator<SetupLocalNotificationWhenAppOpenUseCase>().call(
        context: context,
      );
    }
  }

  /// Listens to scroll changes and updates the expanded status.
  void _scrollListener() {
    const double expandedHeight = 250;
    final bool isExpanded =
        scrollController.hasClients && scrollController.offset < expandedHeight;

    if (isExpanded != state.isBarExpanded) {
      add(PrayTimingEvent.updateExpandedStatus(isExpanded));
    }
  }

  /// Initializes prayer timings and sets the next prayer type.
  void initializePrayerTimings() {
    final nextPrayType = prayUsecase.getNextPrayType();
    add(PrayTimingEvent.updateNextPrayType(nextPrayType));
  }

  FutureOr<void> _handleExpandedStatusUpdate(
    _UpdateExpandedStatus event,
    Emitter<PrayTimingState> emit,
  ) {
    emit(state.copyWith(isBarExpanded: event.status));
  }

  FutureOr<void> _handleNextPrayTypeUpdate(
    _UpdateNextPrayType event,
    Emitter<PrayTimingState> emit,
  ) async {
    emit(
      state.copyWith(
        nextPrayType: event.nextPrayType,
        loadingStatus: const PrayTimingProcessState.done(),
      ),
    );
  }

  @override
  Future<void> close() {
    scrollController.removeListener(_scrollListener);
    scrollController.dispose();
    return super.close();
  }
}
