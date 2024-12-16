import 'dart:async';

import 'package:islam_app/domain/usecase/pray_manager/pray_usecase.dart';
import 'package:islam_app/domain/usecase/timing_usecase.dart';
import 'package:islam_app/presentation/home_tab/bloc/home/home_tab_bloc.dart';
import 'package:islam_mob_adhan/adhan.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:islam_app/my_app/locator.dart';
import 'package:islam_app/core/constants/database_constant.dart';

part 'home_header_event.dart';
part 'home_header_state.dart';
part 'home_header_bloc.freezed.dart';

class HomeHeaderBloc extends Bloc<HomeHeaderEvent, HomeHeaderState> {
  final TimingUsecase timingUsecase = locator<TimingUsecase>();
  HomeHeaderBloc() : super(const HomeHeaderState()) {
    on<_UpdateSalahTypeAndTime>(_updateSalahTypeAndTime);
    _prepareNextSalahTypeAndTime();
  }

  /// Local Hive box instance for storing/retrieving user settings.
  final Box _box = Hive.box(DatabaseBoxConstant.userInfo);

  PrayUsecase prayUsecase = PrayUsecase();

  /// Prepare the next Salah type and time by adding the appropriate event.
  void _prepareNextSalahTypeAndTime() {
    if (prayUsecase.getNextPrayType() == const SalahTimeState.none()) {
      final tommorrow = DateTime.now().add(const Duration(days: 1));
      prayUsecase = PrayUsecase(
          specificDate:
              DateComponents(tommorrow.year, tommorrow.month, tommorrow.day));
      add(
        HomeHeaderEvent.updateSalahTypeAndTime(
          nextPrayType: const SalahTimeState.fajir(),
          nextPrayDateTime:
              prayUsecase.getAllPrayTimeAsDateTimeForToday().fajir,
        ),
      );
    } else {
      add(
        HomeHeaderEvent.updateSalahTypeAndTime(
          nextPrayType: prayUsecase.getNextPrayType(),
          nextPrayDateTime: prayUsecase.getNextPrayTime(),
        ),
      );
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
    return timingUsecase.getAmPm(state.nextPrayDateTime?.hour);
  }

  /// Formats the next Salah time in 12-hour format.
  String getNextSalahTime() {
    final hour =
        timingUsecase.convertTo12HourFormat(state.nextPrayDateTime?.hour);
    final minute =
        (state.nextPrayDateTime?.minute ?? 0).toString().padLeft(2, '0');
    return "$hour:$minute";
  }

  /// Event handler to update the next Salah type and time in the state.
  FutureOr<void> _updateSalahTypeAndTime(
      _UpdateSalahTypeAndTime event, Emitter<HomeHeaderState> emit) {
    emit(
      state.copyWith(
        nextPrayType: event.nextPrayType,
        nextPrayDateTime: event.nextPrayDateTime,
      ),
    );
  }
}
