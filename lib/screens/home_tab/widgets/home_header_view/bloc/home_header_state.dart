part of 'home_header_bloc.dart';

@freezed
class HomeHeaderState with _$HomeHeaderState {
  const factory HomeHeaderState({
    @Default(SalahTimeState.fajir()) SalahTimeState nextPrayType,
    DateTime? nextPrayDateTime,
  }) = _HomeHeaderState;
}

@freezed
sealed class SalahTimeState with _$SalahTimeState {
  const factory SalahTimeState.fajir() = SalahTimeStateFajir;
  const factory SalahTimeState.sunrise() = SalahTimeStateSunrise;
  const factory SalahTimeState.zhur() = SalahTimeStateZhur;
  const factory SalahTimeState.asr() = SalahTimeStateAsr;
  const factory SalahTimeState.maghrib() = SalahTimeStateMaghrib;
  const factory SalahTimeState.isha() = SalahTimeStateIsha;
}
