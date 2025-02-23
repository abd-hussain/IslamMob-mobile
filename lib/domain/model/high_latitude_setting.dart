import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:islam_app/domain/sealed/high_latitude_method.dart';

part 'high_latitude_setting.freezed.dart';

@freezed
class HighLatitudeSetting with _$HighLatitudeSetting {
  factory HighLatitudeSetting({
    required String name,
    required PrayHightLatitudeCaluclationState method,
    required bool isSelected,
  }) = _HighLatitudeSetting;
}
