part of 'home_tab_bloc.dart';

@freezed
class HomeTabState with _$HomeTabState {
  const factory HomeTabState({
    @Default(true) bool isBarExpanded,
    @Default(false) bool showAllowNotificationView,
    @Default(SalahTimeState.none()) SalahTimeState nextPrayType,
  }) = _HomeTabState;
}

@freezed
sealed class SalahTimeState with _$SalahTimeState {
  const factory SalahTimeState.fajir() = SalahTimeStateFajir;
  const factory SalahTimeState.sunrise() = SalahTimeStateSunrise;
  const factory SalahTimeState.zhur() = SalahTimeStateZhur;
  const factory SalahTimeState.asr() = SalahTimeStateAsr;
  const factory SalahTimeState.maghrib() = SalahTimeStateMaghrib;
  const factory SalahTimeState.isha() = SalahTimeStateIsha;
  const factory SalahTimeState.none() = SalahTimeStateNone;
}
