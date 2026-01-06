part of 'pray_timing_bloc.dart';

@freezed
abstract class PrayTimingState with _$PrayTimingState {
  const factory PrayTimingState({
    @Default(true) bool isBarExpanded,
    @Default(SalahTimeState.none()) SalahTimeState nextPrayType,
    @Default(PrayTimingProcessState.loading()) loadingStatus,
  }) = _PrayTimingState;
}

@freezed
sealed class PrayTimingProcessState with _$PrayTimingProcessState {
  const factory PrayTimingProcessState.loading() =
      PrayTimingProcessStateLoading;
  const factory PrayTimingProcessState.done() = PrayTimingProcessStateDone;
}
