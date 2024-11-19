part of 'salah_timing_bloc.dart';

@freezed
class SalahTimingState with _$SalahTimingState {
  const factory SalahTimingState({
    @Default(SalahTimeState.fajir()) SalahTimeState currentSalahType,
    PrayTimingModel? befor3DayPrayTiming,
    PrayTimingModel? befor2DayPrayTiming,
    PrayTimingModel? yesterdayPrayTiming,
    PrayTimingModel? todayPrayTiming,
    PrayTimingModel? tommorrowPrayTiming,
    PrayTimingModel? after2DayPrayTiming,
    PrayTimingModel? after3DayPrayTiming,
  }) = _SalahTimingState;
}
