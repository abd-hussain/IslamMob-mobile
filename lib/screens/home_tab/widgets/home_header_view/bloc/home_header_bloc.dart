import 'dart:async';

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
  final Box _box = Hive.box(DatabaseBoxConstant.userInfo);

  void _prepareNextSalahTypeAndTime() {
    //TODO: handle PrayManager
    final prayManager = PrayManager(
      coordinates: Coordinates(_getLatitude(), _getLongitude()),
      utcOffset: const Duration(hours: 3),
      calculationMethod: CalculationMethod.jordan,
      madhab: Madhab.shafi,
    );

    add(
      HomeHeaderEvent.updateSalahTypeAndTime(
        nextPrayType: prayManager.getNextPrayerType(),
        nextPrayDateTime: prayManager.getNextPrayerTime(),
      ),
    );
  }

  double _getLatitude() {
    return double.parse(
        _box.get(DatabaseFieldConstant.selectedLatitude, defaultValue: "0.0"));
  }

  double _getLongitude() {
    return double.parse(
        _box.get(DatabaseFieldConstant.selectedLongitude, defaultValue: "0.0"));
  }

  String currentCountry() {
    return _box.get(DatabaseFieldConstant.selectedCountry);
  }

  String currentCity() {
    return _box.get(DatabaseFieldConstant.selectedCity);
  }

  String currentSubCity() {
    return _box.get(DatabaseFieldConstant.selectedSubCity);
  }

  String knowTimingAMorPM() {
    return locator<DayTime>().getAmPm(state.nextPrayDateTime?.hour);
  }

  String getNextSalahTime() {
    return "${locator<DayTime>().convertTo12HourFormat(state.nextPrayDateTime?.hour)}:${(state.nextPrayDateTime?.minute ?? "00").toString().padLeft(2, '0')}";
  }

  FutureOr<void> _updateSalahTypeAndTime(
      _UpdateSalahTypeAndTime event, Emitter<HomeHeaderState> emit) {
    emit(state.copyWith(
        nextPrayType: event.nextPrayType,
        nextPrayDateTime: event.nextPrayDateTime));
  }
}
