import 'package:freezed_annotation/freezed_annotation.dart';
part 'freezed/pray_timing.freezed.dart';

@freezed
class PrayTimingModel with _$PrayTimingModel {
  factory PrayTimingModel({
    required String fajir,
    required String sunrise,
    required String dhuhr,
    required String asr,
    required String maghrib,
    required String isha,
    required String middleOfTheNight,
    required String lastThirdOfTheNight,
  }) = _PrayTimingModel;
}

@freezed
class PrayTimingDateTimeModel with _$PrayTimingDateTimeModel {
  factory PrayTimingDateTimeModel({
    required DateTime fajir,
    required DateTime sunrise,
    required DateTime dhuhr,
    required DateTime asr,
    required DateTime maghrib,
    required DateTime isha,
    required DateTime middleOfTheNight,
    required DateTime lastThirdOfTheNight,
  }) = _PrayTimingDateTimeModel;
}
