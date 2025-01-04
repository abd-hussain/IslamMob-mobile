import 'package:freezed_annotation/freezed_annotation.dart';
part 'location.freezed.dart';

@freezed
class LocationModel with _$LocationModel {
  factory LocationModel({
    required String country,
    required String city,
    required String subCity,
    required String street,
    required String latitude,
    required String longitude,
    required String thoroughfare,
    required String countryCode,
  }) = _LocationModel;
}
