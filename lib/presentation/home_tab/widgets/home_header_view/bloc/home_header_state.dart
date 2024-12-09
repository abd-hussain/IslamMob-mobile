part of 'home_header_bloc.dart';

@freezed
class HomeHeaderState with _$HomeHeaderState {
  const factory HomeHeaderState({
    @Default(SalahTimeState.fajir()) SalahTimeState nextPrayType,
    DateTime? nextPrayDateTime,
  }) = _HomeHeaderState;
}
