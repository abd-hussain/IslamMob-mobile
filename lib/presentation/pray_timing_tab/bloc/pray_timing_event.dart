part of 'pray_timing_bloc.dart';

@freezed
class PrayTimingEvent with _$PrayTimingEvent {
  factory PrayTimingEvent.initialize(BuildContext context) = _Initialize;
  factory PrayTimingEvent.updateExpandedStatus(bool status) =
      _UpdateExpandedStatus;
  factory PrayTimingEvent.updateNextPrayType(SalahTimeState nextPrayType) =
      _UpdateNextPrayType;
}
