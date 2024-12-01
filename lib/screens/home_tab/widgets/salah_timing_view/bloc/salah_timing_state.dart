part of 'salah_timing_bloc.dart';

@freezed
class SalahTimingState with _$SalahTimingState {
  const factory SalahTimingState({
    @Default(SalahTimeState.none()) SalahTimeState currentSalahType,
    @Default([]) List<PrayTimingDateTimeModel> prayTimeForWeek,
  }) = _SalahTimingState;
}
