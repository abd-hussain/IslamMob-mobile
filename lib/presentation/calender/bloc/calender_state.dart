part of 'calender_bloc.dart';

@freezed
class CalenderState with _$CalenderState {
  const factory CalenderState({
    @Default([]) List<CalenderModel> list,
    @Default("") String monthName,
    @Default(CalenderProcessState.loading()) CalenderProcessState status,
  }) = _CalenderState;
}

@freezed
sealed class CalenderProcessState with _$CalenderProcessState {
  const factory CalenderProcessState.loading() = CalenderProcessStateLoading;
  const factory CalenderProcessState.error() = CalenderProcessStateError;
  const factory CalenderProcessState.succss() = CalenderProcessStateSuccss;
}
