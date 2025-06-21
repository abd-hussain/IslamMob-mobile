import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:islam_app/domain/sealed/salah_time_state.dart';
import 'package:islam_app/domain/usecase/pray_manager/pray_usecase.dart';
import 'package:location_manager/location_manager.dart';
import 'package:permission_handler/permission_handler.dart';

part 'home_tab_bloc.freezed.dart';
part 'home_tab_event.dart';
part 'home_tab_state.dart';

/// BLoC for managing the Home tab functionality and Islamic prayer information.
///
/// This BLoC handles the business logic for the main home screen of the
/// Islamic application, which serves as the central hub for prayer times
/// and Islamic features. It manages:
/// - **Prayer time display** with next prayer calculations and countdowns
/// - **Permission management** for location and notification access
/// - **App bar expansion** based on scroll position for better UX
/// - **Islamic content visibility** including prayer reminders and guidance
///
/// The home tab is the primary interface where Muslims access prayer times,
/// Islamic reminders, and navigate to other Islamic features. This BLoC
/// ensures proper state management for all home screen functionality while
/// maintaining accurate prayer time information and user permissions.
class HomeTabBloc extends Bloc<HomeTabEvent, HomeTabState> {
  /// Scroll controller for managing app bar expansion and scroll behavior.
  final ScrollController scrollController = ScrollController();

  /// Creates a [HomeTabBloc] with initial state and event handlers.
  ///
  /// Initializes the BLoC with empty home state and sets up event handlers for:
  /// - App bar expansion status updates
  /// - Permission view visibility management
  /// - Next prayer type updates and calculations
  /// - Scroll-based UI state changes
  HomeTabBloc() : super(const HomeTabState()) {
    on<_UpdateExpandedStatus>(_handleExpandedStatusUpdate);
    on<_UpdateShowingNotificationView>(_handleNotificationViewUpdate);
    on<_UpdateShowingLocationView>(_handleLocationViewUpdate);
    on<_UpdateNextPrayType>(_handleNextPrayTypeUpdate);
    _initializeBloc();
  }

  /// Prayer use case instance for calculating Islamic prayer times and next prayer.
  final PrayUsecase prayUsecase = PrayUsecase();

  /// Initializes the Bloc listeners and data.
  Future<void> _initializeBloc() async {
    _initializePrayerTimings();
    await _fetchPermissions();
    scrollController.addListener(_scrollListener);
  }

  /// Initializes prayer timings and sets the next prayer type.
  void _initializePrayerTimings() {
    add(HomeTabEvent.updateNextPrayType(prayUsecase.getNextPrayType()));
  }

  Future<void> _fetchPermissions() async {
    final bool locationStatus =
        await LocationManagerBase().checkLocationPermission();
    final PermissionStatus notificationStatus =
        await Permission.notification.status;

    if (locationStatus) {
      add(HomeTabEvent.updateShowingLocationView(false));
    } else {
      add(HomeTabEvent.updateShowingLocationView(true));
    }

    if (notificationStatus.isGranted) {
      add(HomeTabEvent.updateShowingNotificationView(false));
    } else {
      add(HomeTabEvent.updateShowingNotificationView(true));
    }
  }

  /// Listens to scroll changes and updates the expanded status.
  void _scrollListener() {
    const double expandedHeight = 250;
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

  /// Handles showing or hiding the location view.
  FutureOr<void> _handleLocationViewUpdate(
      _UpdateShowingLocationView event, Emitter<HomeTabState> emit) {
    emit(state.copyWith(showAllowLocationView: event.status));
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
