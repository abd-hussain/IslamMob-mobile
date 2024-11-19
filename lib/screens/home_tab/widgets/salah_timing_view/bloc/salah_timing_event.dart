part of 'salah_timing_bloc.dart';

@freezed
class SalahTimingEvent with _$SalahTimingEvent {
  const factory SalahTimingEvent.updateSalahTiming(
    int dayOffset, // Offset from today (-3 for 3 days ago, +3 for 3 days ahead)
    PrayTimingModel prayTiming,
  ) = _UpdateSalahTimingEvent;

  factory SalahTimingEvent.updateCurrentSalahType({
    required SalahTimeState status,
  }) = _UpdateCurrentSalahType;
}
