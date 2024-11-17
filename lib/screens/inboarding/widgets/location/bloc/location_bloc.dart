import 'dart:async';
import 'dart:io';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:url_launcher/url_launcher.dart';

part 'location_event.dart';
part 'location_state.dart';
part 'location_bloc.freezed.dart';

class LocationBloc extends Bloc<LocationEvent, LocationState> {
  LocationBloc() : super(const LocationState()) {
    on<_SetCountryAndCityNames>(_setCountryAndCityNames);
    on<_ChangeLocationStatus>(_changeLocationStatus);
  }

  Future<void> openAppSettings() async {
    final settingsUrl =
        Platform.isIOS ? 'app-settings:' : 'package:com.islammob.app';
    Uri settingsUri = Uri.parse(settingsUrl);

    if (await canLaunchUrl(settingsUri)) {
      await launchUrl(settingsUri);
    } else {
      throw 'Could not open app settings.';
    }
  }

  FutureOr<void> _changeLocationStatus(
      _ChangeLocationStatus event, Emitter<LocationState> emit) {
    emit(state.copyWith(status: event.status));
  }

  FutureOr<void> _setCountryAndCityNames(
      _SetCountryAndCityNames event, Emitter<LocationState> emit) {
    emit(state.copyWith(
        cityName: event.cityName,
        countryName: event.countryName,
        subCityName: event.subCityName));
  }
}
