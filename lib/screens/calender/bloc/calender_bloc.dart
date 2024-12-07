import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:islam_app/models/app_model/calender.dart';
import 'package:islam_app/utils/constants/database_constant.dart';

part 'calender_event.dart';
part 'calender_state.dart';
part 'calender_bloc.freezed.dart';

class CalenderBloc extends Bloc<CalenderEvent, CalenderState> {
  final Box _box = Hive.box(DatabaseBoxConstant.userInfo);

  CalenderBloc() : super(const CalenderState()) {
    on<_UpdateCalenderList>(_updateCalenderList);

    // _initialize();
    _getCalenderData();
  }

  // Map<String, dynamic> _getDefaultSettings() => {
  //       DatabaseFieldPrayCalculationConstant.selectedCalculationMethod: "",
  //       DatabaseFieldPrayCalculationConstant.selectedMadhab: "",
  //       DatabaseFieldPrayCalculationConstant.selectedTimeZone: "UTC +03:00",
  //       DatabaseFieldPrayCalculationConstant.selectedTimeFajirMin: 0,
  //       DatabaseFieldPrayCalculationConstant.selectedTimeSunriseMin: 0,
  //       DatabaseFieldPrayCalculationConstant.selectedTimeZhurMin: 0,
  //       DatabaseFieldPrayCalculationConstant.selectedTimeAsrMin: 0,
  //       DatabaseFieldPrayCalculationConstant.selectedTimeMaghribMin: 0,
  //       DatabaseFieldPrayCalculationConstant.selectedTimeIshaMin: 0,
  //       DatabaseFieldPrayCalculationConstant.selectedTimeMidnightMin: 0,
  //       DatabaseFieldPrayCalculationConstant.selectedTimeLast3thOfNightMin: 0,
  //       DatabaseFieldPrayCalculationConstant.selectedHighLatitude: "",
  //     };

  // void _initialize() {
  //   final initialSettings = _getDefaultSettings();
  //   initialSettings.forEach((key, defaultValue) {
  //     _applySetting(key, _box.get(key, defaultValue: defaultValue));
  //   });
  //   _prepareSalahTiming();
  // }

  // void _prepareSalahTiming() {
  //   final prayManager = PrayManager(
  //       coordinates: _retrieveCoordinates(),
  //       utcOffset: _retrieveUtcOffset(),
  //       calculationMethod: _retrieveCalculationMethod(),
  //       madhab: _retrieveMadhab(),
  //       highLatitudeRule: _retrieveHighLatitudeRule());
  // }

  /// Retrieves the selected coordinates (latitude and longitude) from the Hive box.
  // Coordinates _retrieveCoordinates() {
  //   final String latitude = _box.get(DatabaseFieldConstant.selectedLatitude, defaultValue: "0.0");
  //   final String longitude = _box.get(DatabaseFieldConstant.selectedLongitude, defaultValue: "0.0");

  //   return Coordinates(
  //     double.tryParse(latitude) ?? 0.0,
  //     double.tryParse(longitude) ?? 0.0,
  //   );
  // }

  void _getCalenderData() {
    // TODO Sample data
    final List<CalenderModel> calenderData = List.generate(
      30,
      (index) => CalenderModel(
        dayName: "Day ${index + 1}",
        dateHijri: "${index + 1}/1/1445",
        dateMilady: "${index + 1}/1/2024",
        fajirTime: "04:55",
        sunriseTime: "06:15",
        zhurTime: "11:45",
        asrTime: "03:15",
        magribTime: "05:45",
        ishaTime: "07:15",
      ),
    );

    add(CalenderEvent.updateCalenderList(
        list: calenderData, status: const CalenderProcessStateSuccss()));
  }

  FutureOr<void> _updateCalenderList(
      _UpdateCalenderList event, Emitter<CalenderState> emit) {
    emit(state.copyWith(list: event.list, status: event.status));
  }
}
