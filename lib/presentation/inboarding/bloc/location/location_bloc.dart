import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:islam_app/domain/usecase/setup_user_setting_usecase.dart';
import 'package:location_manager/location_manager.dart';

part 'location_bloc.freezed.dart';
part 'location_event.dart';
part 'location_state.dart';

/// BLoC for managing location setup during Islamic app onboarding.
///
/// This BLoC handles the business logic for location configuration during
/// the onboarding process, which is essential for accurate Islamic prayer
/// time calculations. It manages:
/// - **Location detection** using GPS and network-based positioning
/// - **Location validation** ensuring accurate geographical coordinates
/// - **Location storage** for persistent prayer time calculations
/// - **Status tracking** for location permission and detection progress
///
/// Location accuracy is crucial for Islamic practice as prayer times vary
/// significantly based on geographical location. This BLoC ensures Muslims
/// receive accurate prayer times according to their specific location,
/// supporting proper Islamic worship timing throughout the day.
class LocationBloc extends Bloc<LocationEvent, LocationState> {
  /// Creates a [LocationBloc] with initial state and event handlers.
  ///
  /// Initializes the BLoC with empty location state and sets up event
  /// handlers for location detection, validation, and storage during onboarding.
  LocationBloc() : super(const LocationState()) {
    on<_SetCountryAndCityNames>(_setCountryAndCityNames);
    on<_ChangeLocationStatus>(_changeLocationStatus);
    on<_SetupLocation>(_setupLocation);
  }

  FutureOr<void> _changeLocationStatus(
      _ChangeLocationStatus event, Emitter<LocationState> emit) {
    emit(state.copyWith(status: event.status));
  }

  FutureOr<void> _setCountryAndCityNames(
      _SetCountryAndCityNames event, Emitter<LocationState> emit) {
    emit(state.copyWith(location: event.location));
  }

  FutureOr<void> _setupLocation(event, Emitter<LocationState> emit) async {
    await SetupUserSettingUseCase.setLocation(state.location!);
  }
}
