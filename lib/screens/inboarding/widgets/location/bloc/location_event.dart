part of 'location_bloc.dart';

@freezed
class LocationEvent with _$LocationEvent {
  const factory LocationEvent.setCountryAndCityNames({
    required String countryName,
    required String cityName,
    required String subCityName,
  }) = _SetCountryAndCityNames;

  const factory LocationEvent.changeLocationStatus({
    required LocationProcessState status,
  }) = _ChangeLocationStatus;
}
