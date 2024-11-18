import 'dart:async';

import 'package:adhan/adhan.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:islam_app/my_app/locator.dart';
import 'package:islam_app/utils/constants/database_constant.dart';
import 'package:islam_app/utils/day_time.dart';
import 'package:islam_app/utils/pray_manager.dart';

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
      coordinates: Coordinates(31.913932, 35.925581),
      utcOffset: const Duration(hours: 2),
      calculationMethod: CalculationMethod.umm_al_qura,
      madhab: Madhab.hanafi,
    );

    add(
      HomeHeaderEvent.updateSalahTypeAndTime(
        nextPrayType: prayManager.getNextPrayer(),
        nextPrayDateTime: DateTime(
          prayManager.getNextPrayerTime().year,
          prayManager.getNextPrayerTime().month,
          prayManager.getNextPrayerTime().day,
          prayManager.getNextPrayerTime().hour,
          prayManager.getNextPrayerTime().minute,
        ),
      ),
    );
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
    return locator<DayTime>().knowTimingAMorPM(state.nextPrayDateTime?.hour);
  }

  String getNextSalahTime() {
    return "${locator<DayTime>().convertingHoursFrom24To12(state.nextPrayDateTime?.hour)}:${(state.nextPrayDateTime?.minute ?? "00").toString().padLeft(2, '0')}";
  }

  FutureOr<void> _updateSalahTypeAndTime(
      _UpdateSalahTypeAndTime event, Emitter<HomeHeaderState> emit) {
    emit(state.copyWith(
        nextPrayType: event.nextPrayType,
        nextPrayDateTime: event.nextPrayDateTime));
  }
}
