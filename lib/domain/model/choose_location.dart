import 'package:freezed_annotation/freezed_annotation.dart';
part 'choose_location.freezed.dart';

@freezed
class ChooseLocation with _$ChooseLocation {
  factory ChooseLocation({
    required String flag,
    required String countryName,
    required String latitude,
    required String longitude,
  }) = _ChooseLocation;
}
