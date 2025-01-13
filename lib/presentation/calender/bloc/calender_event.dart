part of 'calender_bloc.dart';

@freezed
class CalenderEvent with _$CalenderEvent {
  const factory CalenderEvent.prepareSalahTiming() = _PrepareSalahTiming;

  const factory CalenderEvent.fillMonthNameFirstTime() =
      _FillMonthNameFirstTime;

  const factory CalenderEvent.nextMonth(String currentMonthName) = _NextMonth;
  const factory CalenderEvent.previousMonth(String currentMonthName) =
      _PreviousMonth;
}
