part of 'home_header_bloc.dart';

@freezed
class HomeHeaderEvent with _$HomeHeaderEvent {
  factory HomeHeaderEvent.updateSalahTypeAndTime({
    required SalahTimeState nextPrayType,
    required DateTime? nextPrayDateTime,
  }) = _UpdateSalahTypeAndTime;
}
