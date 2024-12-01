part of 'salah_timing_bloc.dart';

@freezed
class SalahTimingEvent with _$SalahTimingEvent {
  const factory SalahTimingEvent.updateSalahTimingForTheWeek(
    List<PrayTimingDateTimeModel> prayTimeForWeek,
  ) = _UpdateSalahTimingForTheWeek;

  factory SalahTimingEvent.updateCurrentSalahType({
    required SalahTimeState status,
  }) = _UpdateCurrentSalahType;
}
