import 'package:freezed_annotation/freezed_annotation.dart';
part 'freezed/time_zone_setting.freezed.dart';

@freezed
class TimeZoneSetting with _$TimeZoneSetting {
  factory TimeZoneSetting({
    required String name,
    required Duration duration,
    required bool isSelected,
  }) = _TimeZoneSetting;
}
