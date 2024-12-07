part of 'calender_bloc.dart';

@freezed
class CalenderEvent with _$CalenderEvent {
  const factory CalenderEvent.updateCalenderList({
    required List<CalenderModel> list,
    required CalenderProcessState status,
  }) = _UpdateCalenderList;
}
