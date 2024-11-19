import 'dart:async';

import 'package:adhan/adhan.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:islam_app/models/app_model/pray_timing.dart';
import 'package:islam_app/my_app/locator.dart';
import 'package:islam_app/screens/home_tab/widgets/home_header_view/bloc/home_header_bloc.dart';
import 'package:islam_app/utils/constants/database_constant.dart';
import 'package:islam_app/utils/day_time.dart';
import 'package:islam_app/utils/pray_manager.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

part 'salah_timing_event.dart';
part 'salah_timing_state.dart';
part 'salah_timing_bloc.freezed.dart';

class SalahTimingBloc extends Bloc<SalahTimingEvent, SalahTimingState> {
  SalahTimingBloc() : super(const SalahTimingState()) {
    on<_UpdateSalahTimingEvent>(_updateSalahTimingEvent);
    on<_UpdateCurrentSalahType>(_updateCurrentSalahType);

    _preparePrayerTimings();
  }
  final Box _box = Hive.box(DatabaseBoxConstant.userInfo);

  final defuiltSalahModel = PrayTimingModel(
    fajir: "00:00",
    dhuhr: "00:00",
    asr: "00:00",
    maghrib: "00:00",
    isha: "00:00",
    sunrise: "00:00",
    middleOfTheNight: "00:00",
    lastThirdOfTheNight: "00:00",
  );

  PrayManager _getPrayManagerForDate(DateTime date) {
    //TODO: this need to be fixed
    //TODO: Time is not equil other app
    return PrayManager(
      coordinates: Coordinates(31.913932, 35.925581),
      utcOffset: const Duration(hours: 2),
      calculationMethod: CalculationMethod.umm_al_qura,
      madhab: Madhab.hanafi,
      specificDate: DateComponents(date.year, date.month, date.day),
    );
  }

  void _preparePrayerTimings() {
    final daysOffset = {
      -3: (SalahTimingState state) => state.befor3DayPrayTiming,
      -2: (SalahTimingState state) => state.befor2DayPrayTiming,
      -1: (SalahTimingState state) => state.yesterdayPrayTiming,
      0: (SalahTimingState state) => state.todayPrayTiming,
      1: (SalahTimingState state) => state.tommorrowPrayTiming,
      2: (SalahTimingState state) => state.after2DayPrayTiming,
      3: (SalahTimingState state) => state.after3DayPrayTiming,
    };

    for (var entry in daysOffset.entries) {
      final date = DateTime.now().add(Duration(days: entry.key));
      final prayManager = _getPrayManagerForDate(date);
      final prayTiming = prayManager.getAllPrayTime();

      if (entry.key == 0) {
        final nextPrayType = prayManager.getNextPrayerType();
        add(SalahTimingEvent.updateCurrentSalahType(status: nextPrayType));
      }

      add(SalahTimingEvent.updateSalahTiming(entry.key, prayTiming));
    }
  }

  PrayTimingModel retrunCorrectPrayTiming(int index) {
    final prayTimingMap = {
      0: state.todayPrayTiming,
      1: state.tommorrowPrayTiming,
      2: state.after2DayPrayTiming,
      3: state.after3DayPrayTiming,
      -1: state.yesterdayPrayTiming,
      -2: state.befor2DayPrayTiming,
      -3: state.befor3DayPrayTiming,
    };

    return prayTimingMap[index] ?? defuiltSalahModel;
  }

  String currentLanguageCode() {
    return _box.get(DatabaseFieldConstant.selectedLanguage);
  }

  String getDateMelady(int index) {
    return locator<DayTime>().formatDateDDMMYYYY(
        locator<DayTime>().getDateWithDayFraction(dayFraction: index));
  }

  String getDateHijri(int index) {
    return locator<DayTime>().formatHijriDateDDMMYYYY(
        locator<DayTime>().getHijriDateWithDayFraction(dayFraction: index));
  }

  String getDayName(BuildContext context, int index) {
    return locator<DayTime>().getDayName(
        context: context,
        date: locator<DayTime>().getDateWithDayFraction(dayFraction: index));
  }

  String getTitleOfTheDay(BuildContext context, int index) {
    final titles = {
      -3: AppLocalizations.of(context)!.threedaybefore,
      -2: AppLocalizations.of(context)!.twodaybefore,
      -1: AppLocalizations.of(context)!.yesterday,
      0: AppLocalizations.of(context)!.today,
      1: AppLocalizations.of(context)!.tomorrow,
      2: AppLocalizations.of(context)!.aftertwoday,
      3: AppLocalizations.of(context)!.afterthreeday,
    };

    return titles[index] ?? '';
  }

  FutureOr<void> _updateCurrentSalahType(
      _UpdateCurrentSalahType event, Emitter<SalahTimingState> emit) {
    emit(state.copyWith(currentSalahType: event.status));
  }

  FutureOr<void> _updateSalahTimingEvent(
      _UpdateSalahTimingEvent event, Emitter<SalahTimingState> emit) {
    emit(
      state.copyWith(
        befor3DayPrayTiming: event.dayOffset == -3
            ? event.prayTiming
            : state.befor3DayPrayTiming,
        befor2DayPrayTiming: event.dayOffset == -2
            ? event.prayTiming
            : state.befor2DayPrayTiming,
        yesterdayPrayTiming: event.dayOffset == -1
            ? event.prayTiming
            : state.yesterdayPrayTiming,
        todayPrayTiming:
            event.dayOffset == 0 ? event.prayTiming : state.todayPrayTiming,
        tommorrowPrayTiming:
            event.dayOffset == 1 ? event.prayTiming : state.tommorrowPrayTiming,
        after2DayPrayTiming:
            event.dayOffset == 2 ? event.prayTiming : state.after2DayPrayTiming,
        after3DayPrayTiming:
            event.dayOffset == 3 ? event.prayTiming : state.after3DayPrayTiming,
      ),
    );
  }
}
