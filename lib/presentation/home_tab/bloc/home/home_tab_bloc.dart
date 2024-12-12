import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:islam_app/domain/usecase/pray_manager/pray_usecase.dart';

part 'home_tab_event.dart';
part 'home_tab_state.dart';
part 'home_tab_bloc.freezed.dart';

class HomeTabBloc extends Bloc<HomeTabEvent, HomeTabState> {
  final ScrollController scrollController = ScrollController();

  HomeTabBloc() : super(const HomeTabState()) {
    on<_UpdateExpandedStatus>(_handleExpandedStatusUpdate);
    on<_UpdateShowingNotificationView>(_handleNotificationViewUpdate);
    on<_UpdateNextPrayType>(_handleNextPrayTypeUpdate);
    _initializeBloc();
  }
  final PrayUsecase prayUsecase = PrayUsecase();

  /// Initializes the Bloc listeners and data.
  void _initializeBloc() {
    _initializePrayerTimings();
    scrollController.addListener(_scrollListener);
  }

  /// Initializes prayer timings and sets the next prayer type.
  void _initializePrayerTimings() {
    add(HomeTabEvent.updateNextPrayType(prayUsecase.getNextPrayType()));
  }

  /// Listens to scroll changes and updates the expanded status.
  void _scrollListener() {
    const double expandedHeight = 250.0;
    final bool isExpanded =
        scrollController.hasClients && scrollController.offset < expandedHeight;

    if (isExpanded != state.isBarExpanded) {
      add(HomeTabEvent.updateExpandedStatus(isExpanded));
    }
  }

  /// Handles updating the app bar's expanded status.
  FutureOr<void> _handleExpandedStatusUpdate(
      _UpdateExpandedStatus event, Emitter<HomeTabState> emit) {
    emit(state.copyWith(isBarExpanded: event.status));
  }

  /// Handles showing or hiding the notification view.
  FutureOr<void> _handleNotificationViewUpdate(
      _UpdateShowingNotificationView event, Emitter<HomeTabState> emit) {
    emit(state.copyWith(showAllowNotificationView: event.status));
  }

  /// Handles updating the next prayer type.
  FutureOr<void> _handleNextPrayTypeUpdate(
      _UpdateNextPrayType event, Emitter<HomeTabState> emit) {
    emit(state.copyWith(nextPrayType: event.nextPrayType));
  }

  @override
  Future<void> close() {
    scrollController.removeListener(_scrollListener);
    scrollController.dispose();
    return super.close();
  }
}
