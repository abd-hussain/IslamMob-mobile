import 'dart:async';

import 'package:database_manager/database_manager.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:islam_app/domain/sealed/salah_time_state.dart';
import 'package:islam_app/domain/usecase/pray_manager/pray_usecase.dart';
import 'package:islam_app/domain/usecase/timing_usecase.dart';
import 'package:islam_app/my_app/locator.dart';
import 'package:islam_mob_adhan/adhan.dart';

part 'home_header_bloc.freezed.dart';
part 'home_header_event.dart';
part 'home_header_state.dart';

/// BLoC for managing the Home Header functionality and Islamic prayer timing display.
///
/// This BLoC handles the business logic for the header section of the home
/// screen, which displays critical Islamic prayer information and location
/// details. It manages:
/// - **Next prayer calculation** with accurate timing and type determination
/// - **Location information** showing current country, city, and sub-city
/// - **Prayer time formatting** for proper 12-hour display with AM/PM
/// - **Dynamic prayer updates** handling day transitions and prayer scheduling
///
/// The home header is essential for Muslims to quickly see their next prayer
/// time and location information, ensuring they can prepare for their Islamic
/// obligations with accurate, location-based prayer calculations.
class HomeHeaderBloc extends Bloc<HomeHeaderEvent, HomeHeaderState> {
  /// Timing use case instance for prayer time calculations and formatting.
  final TimingUseCase timingUsecase = locator<TimingUseCase>();

  /// Creates a [HomeHeaderBloc] with initial state and event handlers.
  ///
  /// Initializes the BLoC with empty header state and sets up event handlers for:
  /// - Next prayer type and time preparation
  /// - Prayer timing updates and calculations
  /// - Location-based prayer time management
  HomeHeaderBloc() : super(const HomeHeaderState()) {
    on<_PrepareNextSalahTypeAndTime>(_prepareNextSalahTypeAndTime);
    on<_UpdateSalahTypeAndTime>(_updateSalahTypeAndTime);
  }

  /// Prayer use case instance for Islamic prayer calculations and next prayer determination.
  PrayUsecase prayUsecase = PrayUsecase();

  /// Returns the current selected country from the Hive box.
  String currentCountry() {
    return DataBaseManagerBase.getFromDatabase(
        key: DatabaseFieldLocationConstant.selectedCountry,
        defaultValue: "") as String;
  }

  /// Returns the current selected city from the Hive box.
  String currentCity() {
    return DataBaseManagerBase.getFromDatabase(
        key: DatabaseFieldLocationConstant.selectedCity,
        defaultValue: "") as String;
  }

  /// Returns the current selected sub-city from the Hive box.
  String currentSubCity() {
    return DataBaseManagerBase.getFromDatabase(
        key: DatabaseFieldLocationConstant.selectedSubCity,
        defaultValue: "") as String;
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

  /// Prepare the next Salah type and time by adding the appropriate event.
  FutureOr<void> _prepareNextSalahTypeAndTime(
      _PrepareNextSalahTypeAndTime event, Emitter<HomeHeaderState> emit) {
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
}
