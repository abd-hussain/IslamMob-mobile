part of 'calender_bloc.dart';

@freezed
class CalenderEvent with _$CalenderEvent {
  const factory CalenderEvent.prepareSalahTiming() = _PrepareSalahTiming;

  const factory CalenderEvent.fillMonthName() = _FillMonthName;
}
