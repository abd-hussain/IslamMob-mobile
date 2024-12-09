import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:islam_app/domain/repository/pray_manager.dart';
import 'package:islam_app/core/constants/database_constant.dart';
import 'package:islam_mob_adhan/adhan.dart';

part 'home_tab_event.dart';
part 'home_tab_state.dart';
part 'home_tab_bloc.freezed.dart';

class HomeTabBloc extends Bloc<HomeTabEvent, HomeTabState> {
  final ScrollController scrollController = ScrollController();
  final Box _box = Hive.box(DatabaseBoxConstant.userInfo);

  HomeTabBloc() : super(const HomeTabState()) {
    on<_UpdateExpandedStatus>(_handleExpandedStatusUpdate);
    on<_UpdateShowingNotificationView>(_handleNotificationViewUpdate);
    on<_UpdateNextPrayType>(_handleNextPrayTypeUpdate);

    _initializeBloc();
  }

  /// Initializes the Bloc listeners and data.
  void _initializeBloc() {
    _initializePrayerTimings();
    _initializeNotificationViewHandler();
    scrollController.addListener(_scrollListener);
  }

  /// Initializes prayer timings and sets the next prayer type.
  void _initializePrayerTimings() {
    final prayManager = PrayManagerRepository(
      coordinates: _retrieveCoordinates(),
      utcOffset: _retrieveUtcOffset(),
      calculationMethod: _retrieveCalculationMethod(),
      madhab: _retrieveMadhab(),
    );
    add(HomeTabEvent.updateNextPrayType(prayManager.getNextPrayerType()));
  }

  /// Checks if the notification view should be displayed.
  void _initializeNotificationViewHandler() {
    final String token =
        _box.get(DatabaseFieldConstant.notificationToken, defaultValue: "");
    if (token.isEmpty) {
      add(HomeTabEvent.updateShowingNotificationView(true));
    }
  }

  /// Retrieves the selected calculation method from the Hive box.
  CalculationMethod _retrieveCalculationMethod() {
    final String selectedMethod = _box.get(
      DatabaseFieldPrayCalculationConstant.selectedCalculationMethod,
      defaultValue: "",
    );

    return CalculationMethod.values.firstWhere(
      (method) => method.name == selectedMethod,
      orElse: () => CalculationMethod.jordan,
    );
  }

  /// Retrieves the UTC offset, either from Hive or the device's timezone.
  Duration _retrieveUtcOffset() {
    final String hourOffset = _box.get(
        DatabaseFieldConstant.selectedDifferenceWithUTCHour,
        defaultValue: "");
    final String minuteOffset = _box.get(
        DatabaseFieldConstant.selectedDifferenceWithUTCMin,
        defaultValue: "");

    if (hourOffset.isEmpty) {
      return DateTime.now().timeZoneOffset;
    } else {
      return Duration(
        hours: int.tryParse(hourOffset) ?? 0,
        minutes: int.tryParse(minuteOffset) ?? 0,
      );
    }
  }

  /// Retrieves the selected coordinates (latitude and longitude) from the Hive box.
  Coordinates _retrieveCoordinates() {
    final String latitude =
        _box.get(DatabaseFieldConstant.selectedLatitude, defaultValue: "0.0");
    final String longitude =
        _box.get(DatabaseFieldConstant.selectedLongitude, defaultValue: "0.0");

    return Coordinates(
      double.tryParse(latitude) ?? 0.0,
      double.tryParse(longitude) ?? 0.0,
    );
  }

  /// Retrieves the selected Madhab from the Hive box.
  Madhab _retrieveMadhab() {
    final String madhab = _box.get(
        DatabaseFieldPrayCalculationConstant.selectedMadhab,
        defaultValue: "shafi");
    return madhab == "shafi" ? Madhab.shafi : Madhab.hanafi;
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
