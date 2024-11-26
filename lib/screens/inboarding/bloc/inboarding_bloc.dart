import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:islam_app/models/app_model/location.dart';
import 'package:islam_app/my_app/islam_mob_app/islam_mob_app.dart';
import 'package:islam_app/utils/constants/database_constant.dart';

part 'inboarding_event.dart';
part 'inboarding_state.dart';
part 'inboarding_bloc.freezed.dart';

class InboardingBloc extends Bloc<InboardingEvent, InboardingState> {
  final Box _userBox;

  InboardingBloc()
      : _userBox = Hive.box(DatabaseBoxConstant.userInfo),
        super(const InboardingState()) {
    on<_ChangeInBoardingStage>(_changeInBoardingStage);
    _initializePaging();
  }

  /// Initializes the inboarding stage from storage
  void _initializePaging() {
    final stage = _getInBoardingStage();
    add(InboardingEvent.changeInBoardingStage(stage: stage));
  }

  /// Retrieves the current inboarding stage from storage
  int _getInBoardingStage() {
    return _userBox.get(
      DatabaseFieldInBoardingStageConstant.inBoardingStage,
      defaultValue: 0,
    ) as int;
  }

  /// Updates a single value in Hive storage
  Future<void> _updateStorage(String key, dynamic value) async {
    await _userBox.put(key, value);
  }

  /// Updates multiple values in Hive storage
  Future<void> _updateMultipleStorage(Map<String, dynamic> data) async {
    for (var entry in data.entries) {
      await _userBox.put(entry.key, entry.value);
    }
  }

  /// Handles the event to change the inboarding stage
  FutureOr<void> _changeInBoardingStage(
      _ChangeInBoardingStage event, Emitter<InboardingState> emit) {
    emit(state.copyWith(inBoardingStage: event.stage));
  }

  /// Updates the selected language in storage and rebuilds the app
  Future<void> setLanguage(BuildContext context, String langCode) async {
    await _updateStorage(DatabaseFieldConstant.selectedLanguage, langCode);
    // Rebuilds the app after language change
    if (context.mounted) {
      IslamMobApp.of(context)?.rebuild();
    }
  }

  /// Updates location details in storage
  Future<void> setLocation(LocationModel location) async {
    final locationData = {
      DatabaseFieldConstant.selectedCountry: location.country,
      DatabaseFieldConstant.selectedCity: location.city,
      DatabaseFieldConstant.selectedSubCity: location.subCity,
      DatabaseFieldConstant.selectedStreet: location.street,
      DatabaseFieldConstant.selectedLatitude: location.latitude,
      DatabaseFieldConstant.selectedLongitude: location.longitude,
      DatabaseFieldConstant.selectedThoroughfare: location.thoroughfare,
    };
    await _updateMultipleStorage(locationData);
  }

  /// Updates the notification token in storage
  Future<void> setNotificationToken(String token) async {
    await _updateStorage(DatabaseFieldConstant.notificationToken, token);
  }

  /// Updates the inboarding stage in storage and triggers an event
  Future<void> changeInBoardingStage(int stage) async {
    await _updateStorage(
        DatabaseFieldInBoardingStageConstant.inBoardingStage, stage);
    add(InboardingEvent.changeInBoardingStage(stage: stage));
  }

  /// Marks inboarding as finished in storage
  Future<void> finishInBoarding() async {
    await _updateStorage(
        DatabaseFieldInBoardingStageConstant.inBoardingfinished, true);
  }
}
