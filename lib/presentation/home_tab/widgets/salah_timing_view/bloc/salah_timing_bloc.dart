import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:islam_app/domain/model/pray_timing.dart';
import 'package:islam_app/presentation/home_tab/bloc/home_tab_bloc.dart';
import 'package:islam_app/core/constants/database_constant.dart';
import 'package:islam_app/domain/repository/pray_manager.dart';
import 'package:islam_mob_adhan/adhan.dart';

part 'salah_timing_event.dart';
part 'salah_timing_state.dart';
part 'salah_timing_bloc.freezed.dart';

class SalahTimingBloc extends Bloc<SalahTimingEvent, SalahTimingState> {
  SalahTimingBloc() : super(const SalahTimingState()) {
    on<_UpdateSalahTimingForTheWeek>(_onUpdateSalahTimingForTheWeek);
    on<_UpdateCurrentSalahType>(_onUpdateCurrentSalahType);
    _initializePrayerTimings();
  }

  final Box _userInfoBox = Hive.box(DatabaseBoxConstant.userInfo);

  /// Initializes prayer timings for the week and updates the current Salah type.
  void _initializePrayerTimings() {
    final List<PrayTimingDateTimeModel> weeklyPrayerTimings =
        _generateWeeklyPrayerTimings();

    // Identify today's next prayer type.
    _updateTodaySalahType();

    // Update the prayer timings for the week.
    add(SalahTimingEvent.updateSalahTimingForTheWeek(weeklyPrayerTimings));
  }

  /// Generates prayer timings for the current week (-3 to +4 days).
  List<PrayTimingDateTimeModel> _generateWeeklyPrayerTimings() {
    final List<PrayTimingDateTimeModel> prayerTimings = [];

    for (int offset = -3; offset <= 4; offset++) {
      final DateTime date = DateTime.now().add(Duration(days: offset));
      final PrayManagerRepository prayManager = _createPrayManagerForDate(date);
      final PrayTimingDateTimeModel timings =
          prayManager.getAllPrayTimeAsDateTimeForToday();

      prayerTimings.add(timings);
    }

    return prayerTimings;
  }

  /// Updates the current Salah type for today.
  void _updateTodaySalahType() {
    final DateTime today = DateTime.now();
    final PrayManagerRepository todayPrayManager =
        _createPrayManagerForDate(today);
    final SalahTimeState nextSalahType = todayPrayManager.getNextPrayerType();

    add(SalahTimingEvent.updateCurrentSalahType(status: nextSalahType));
  }

  /// Creates a [PrayManagerRepository] instance for a specific date.
  PrayManagerRepository _createPrayManagerForDate(DateTime date) {
    return PrayManagerRepository(
      coordinates: _getCoordinates(),
      utcOffset: _getUtcOffset(),
      calculationMethod: _getCalculationMethod(),
      madhab: _getMadhab(),
      specificDate: DateComponents(date.year, date.month, date.day),
    );
  }

  /// Retrieves the coordinates (latitude and longitude) from the Hive box.
  Coordinates _getCoordinates() {
    final String latitude = _userInfoBox
        .get(DatabaseFieldConstant.selectedLatitude, defaultValue: "0.0");
    final String longitude = _userInfoBox
        .get(DatabaseFieldConstant.selectedLongitude, defaultValue: "0.0");

    return Coordinates(
      double.tryParse(latitude) ?? 0.0,
      double.tryParse(longitude) ?? 0.0,
    );
  }

  /// Retrieves the selected calculation method from the Hive box.
  CalculationMethod _getCalculationMethod() {
    final String selectedMethod = _userInfoBox.get(
        DatabaseFieldPrayCalculationConstant.selectedCalculationMethod,
        defaultValue: "");

    return CalculationMethod.values.firstWhere(
      (method) => method.name == selectedMethod,
      orElse: () => CalculationMethod.jordan,
    );
  }

  /// Retrieves the UTC offset, either from Hive or the device's timezone.
  Duration _getUtcOffset() {
    final String offsetHours = _userInfoBox.get(
        DatabaseFieldConstant.selectedDifferenceWithUTCHour,
        defaultValue: "");
    final String offsetMinutes = _userInfoBox.get(
        DatabaseFieldConstant.selectedDifferenceWithUTCMin,
        defaultValue: "");

    if (offsetHours.isEmpty) {
      return DateTime.now().timeZoneOffset;
    } else {
      return Duration(
        hours: int.tryParse(offsetHours) ?? 0,
        minutes: int.tryParse(offsetMinutes) ?? 0,
      );
    }
  }

  /// Retrieves the selected Madhab from the Hive box.
  Madhab _getMadhab() {
    final String madhab = _userInfoBox.get(
        DatabaseFieldPrayCalculationConstant.selectedMadhab,
        defaultValue: "shafi");
    return madhab == "shafi" ? Madhab.shafi : Madhab.hanafi;
  }

  /// Event handler for updating the current Salah type.
  FutureOr<void> _onUpdateCurrentSalahType(
      _UpdateCurrentSalahType event, Emitter<SalahTimingState> emit) {
    emit(state.copyWith(currentSalahType: event.status));
  }

  /// Event handler for updating the prayer timings for the week.
  FutureOr<void> _onUpdateSalahTimingForTheWeek(
      _UpdateSalahTimingForTheWeek event, Emitter<SalahTimingState> emit) {
    emit(state.copyWith(prayTimeForWeek: event.prayTimeForWeek));
  }
}
