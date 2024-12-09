import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:islam_app/domain/model/calender.dart';
import 'package:islam_app/domain/repository/pray_manager.dart';
import 'package:islam_app/core/constants/database_constant.dart';
import 'package:islam_mob_adhan/adhan.dart';

part 'calender_event.dart';
part 'calender_state.dart';
part 'calender_bloc.freezed.dart';

class CalenderBloc extends Bloc<CalenderEvent, CalenderState> {
  final Box _box = Hive.box(DatabaseBoxConstant.userInfo);

  CalenderBloc() : super(const CalenderState()) {
    on<_UpdateCalenderList>(_updateCalenderList);

    _initialize();
  }

  void _initialize() {
    _prepareSalahTiming();
  }

  void _prepareSalahTiming() {
    final prayManager = PrayManagerRepository(
        coordinates: _retrieveCoordinates(),
        utcOffset: _getDifferenceFromUTC(),
        calculationMethod: _getSelectedCalculationMethod(),
        madhab: _getMadhab(),
        highLatitudeRule: _retrieveHighLatitudeRule());

    final List<CalenderModel> calenderData =
        prayManager.getAllPrayTimeAsDateTimeForMonth(
            fromDate: DateTime.now().subtract(const Duration(days: 15)),
            toDate: DateTime.now().add(const Duration(days: 15)));

    add(CalenderEvent.updateCalenderList(
        list: calenderData, status: const CalenderProcessStateSuccss()));
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

  /// Retrieve the selected Madhab from the Hive box.
  Madhab _getMadhab() {
    final String selectedMadhab = _box.get(
      DatabaseFieldPrayCalculationConstant.selectedMadhab,
      defaultValue: "shafi",
    );
    return selectedMadhab == "shafi" ? Madhab.shafi : Madhab.hanafi;
  }

  dynamic _retrieveHighLatitudeRule() {
    // final String selectedHighLatitude = _box.get(
    //   DatabaseFieldPrayCalculationConstant.selectedHighLatitude,
    //   defaultValue: "",
    // );
    return null;
    // return selectedHighLatitude == "" ? Madhab.shafi : Madhab.hanafi; //TODO
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

  FutureOr<void> _updateCalenderList(
      _UpdateCalenderList event, Emitter<CalenderState> emit) {
    emit(state.copyWith(list: event.list, status: event.status));
  }
}
