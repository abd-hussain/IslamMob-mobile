import 'package:freezed_annotation/freezed_annotation.dart';
part 'calender.freezed.dart';

@freezed
class CalenderModel with _$CalenderModel {
  factory CalenderModel({
    required String dayName,
    required String dateHijri,
    required String dateMilady,
    required String fajirTime,
    required String sunriseTime,
    required String zhurTime,
    required String asrTime,
    required String magribTime,
    required String ishaTime,
    required bool isToday,
  }) = _CalenderModel;
}
