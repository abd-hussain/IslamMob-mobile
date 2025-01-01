import 'package:islam_app/domain/model/high_latitude_method.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'high_latitude_setting.freezed.dart';

@freezed
class HighLatitudeSetting with _$HighLatitudeSetting {
  factory HighLatitudeSetting({
    required String name,
    required PrayHightLatitudeCaluclationState method,
    required bool isSelected,
  }) = _HighLatitudeSetting;
}
