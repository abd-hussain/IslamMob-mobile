import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:islam_app/domain/model/location.dart';

part 'location_event.dart';
part 'location_state.dart';
part 'location_bloc.freezed.dart';

class LocationBloc extends Bloc<LocationEvent, LocationState> {
  LocationBloc() : super(const LocationState()) {
    on<_SetCountryAndCityNames>(_setCountryAndCityNames);
    on<_ChangeLocationStatus>(_changeLocationStatus);
  }

  FutureOr<void> _changeLocationStatus(
      _ChangeLocationStatus event, Emitter<LocationState> emit) {
    emit(state.copyWith(status: event.status));
  }

  FutureOr<void> _setCountryAndCityNames(
      _SetCountryAndCityNames event, Emitter<LocationState> emit) {
    emit(state.copyWith(
      cityName: event.location.city,
      countryName: event.location.country,
      subCityName: event.location.subCity,
      latitude: event.location.latitude,
      longitude: event.location.longitude,
      street: event.location.street,
      thoroughfare: event.location.thoroughfare,
    ));
  }
}