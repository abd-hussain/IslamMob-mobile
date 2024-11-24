part of 'location_bloc.dart';

@freezed
class LocationEvent with _$LocationEvent {
  const factory LocationEvent.setCountryAndCityNames({
    required String countryName,
    required String cityName,
    required String subCityName,
    required String street,
    required String latitude,
    required String longitude,
    required String thoroughfare,
  }) = _SetCountryAndCityNames;

  const factory LocationEvent.changeLocationStatus({
    required LocationProcessState status,
  }) = _ChangeLocationStatus;
}
