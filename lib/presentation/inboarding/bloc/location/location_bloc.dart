import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:islam_app/domain/model/location.dart';
import 'package:islam_app/domain/usecase/setup_user_setting_usecase.dart';

part 'location_event.dart';
part 'location_state.dart';
part 'location_bloc.freezed.dart';

class LocationBloc extends Bloc<LocationEvent, LocationState> {
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
