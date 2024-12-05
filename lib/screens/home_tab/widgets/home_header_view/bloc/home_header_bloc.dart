import 'dart:async';

import 'package:islam_app/screens/home_tab/bloc/home_tab_bloc.dart';
import 'package:islam_mob_adhan/adhan.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:islam_app/my_app/locator.dart';
import 'package:islam_app/utils/constants/database_constant.dart';
import 'package:islam_app/utils/day_time.dart';
import 'package:islam_app/services/general/pray_manager.dart';

part 'home_header_event.dart';
part 'home_header_state.dart';
part 'home_header_bloc.freezed.dart';

class HomeHeaderBloc extends Bloc<HomeHeaderEvent, HomeHeaderState> {
  HomeHeaderBloc() : super(const HomeHeaderState()) {
    on<_UpdateSalahTypeAndTime>(_updateSalahTypeAndTime);
    _prepareNextSalahTypeAndTime();
  }

  /// Local Hive box instance for storing/retrieving user settings.
  final Box _box = Hive.box(DatabaseBoxConstant.userInfo);

  /// Prepare the next Salah type and time by adding the appropriate event.
  void _prepareNextSalahTypeAndTime() {
    final prayManager = PrayManager(
      coordinates: _getCoordinates(),
      utcOffset: _getDifferenceFromUTC(),
      calculationMethod: _getSelectedCalculationMethod(),
      madhab: _getMadhab(),
    );

    if (prayManager.getNextPrayerType() == const SalahTimeState.none()) {
      final tommorrow = DateTime.now().add(const Duration(days: 1));
      final nextDayPrayManager = PrayManager(
        coordinates: _getCoordinates(),
        utcOffset: _getDifferenceFromUTC(),
        calculationMethod: _getSelectedCalculationMethod(),
        madhab: _getMadhab(),
        specificDate:
            DateComponents(tommorrow.year, tommorrow.month, tommorrow.day),
      );

      add(
        HomeHeaderEvent.updateSalahTypeAndTime(
          nextPrayType: const SalahTimeState.fajir(),
          nextPrayDateTime: nextDayPrayManager.getAllPrayTimeAsDateTime().fajir,
        ),
      );
    } else {
      add(
        HomeHeaderEvent.updateSalahTypeAndTime(
          nextPrayType: prayManager.getNextPrayerType(),
          nextPrayDateTime: prayManager.getNextPrayerTime(),
        ),
      );
    }
  }

  /// Retrieve the selected calculation method from the Hive box.
  CalculationMethod _getSelectedCalculationMethod() {
    final String selectedCalculationMethod = _box.get(
      DatabaseFieldPrayCalculationConstant.selectedCalculationMethod,
      defaultValue: "",
    );

    return CalculationMethod.values.firstWhere(
      (method) => method.name == selectedCalculationMethod,
      orElse: () => CalculationMethod.jordan,
    );
  }

  /// Retrieve the selected Madhab from the Hive box.
  Madhab _getMadhab() {
    final String selectedMadhab = _box.get(
      DatabaseFieldPrayCalculationConstant.selectedMadhab,
      defaultValue: "shafi",
    );
    return selectedMadhab == "shafi" ? Madhab.shafi : Madhab.hanafi;
  }

  /// Retrieve the selected coordinates (latitude and longitude) from the Hive box.
  Coordinates _getCoordinates() {
    final String selectedLatitude = _box.get(
      DatabaseFieldConstant.selectedLatitude,
      defaultValue: "0.0",
    );
    final String selectedLongitude = _box.get(
      DatabaseFieldConstant.selectedLongitude,
      defaultValue: "0.0",
    );
    return Coordinates(
      double.tryParse(selectedLatitude) ?? 0.0,
      double.tryParse(selectedLongitude) ?? 0.0,
    );
  }

  /// Retrieve the UTC offset, either from Hive or the device's timezone.
  Duration _getDifferenceFromUTC() {
    final String selectedDifferenceWithUTCHour = _box.get(
      DatabaseFieldConstant.selectedDifferenceWithUTCHour,
      defaultValue: "",
    );
    final String selectedDifferenceWithUTCMin = _box.get(
      DatabaseFieldConstant.selectedDifferenceWithUTCMin,
      defaultValue: "",
    );

    if (selectedDifferenceWithUTCHour.isEmpty) {
      return DateTime.now().timeZoneOffset;
    } else {
      return Duration(
          hours: int.tryParse(selectedDifferenceWithUTCHour) ?? 0,
          minutes: int.tryParse(selectedDifferenceWithUTCMin) ?? 0);
    }
  }

  /// Returns the current selected country from the Hive box.
  String currentCountry() {
    return _box.get(DatabaseFieldConstant.selectedCountry, defaultValue: "");
  }

  /// Returns the current selected city from the Hive box.
  String currentCity() {
    return _box.get(DatabaseFieldConstant.selectedCity, defaultValue: "");
  }

  /// Returns the current selected sub-city from the Hive box.
  String currentSubCity() {
    return _box.get(DatabaseFieldConstant.selectedSubCity, defaultValue: "");
  }

  /// Determines if the next Salah time is AM or PM.
  String knowTimingAMorPM() {
    return locator<DayTime>().getAmPm(state.nextPrayDateTime?.hour);
  }

  /// Formats the next Salah time in 12-hour format.
  String getNextSalahTime() {
    final hour =
        locator<DayTime>().convertTo12HourFormat(state.nextPrayDateTime?.hour);
    final minute =
        (state.nextPrayDateTime?.minute ?? 0).toString().padLeft(2, '0');
    return "$hour:$minute";
  }

  /// Event handler to update the next Salah type and time in the state.
  FutureOr<void> _updateSalahTypeAndTime(
    _UpdateSalahTypeAndTime event,
    Emitter<HomeHeaderState> emit,
  ) {
    emit(
      state.copyWith(
        nextPrayType: event.nextPrayType,
        nextPrayDateTime: event.nextPrayDateTime,
      ),
    );
  }
}
