part of 'home_tab_bloc.dart';

@freezed
class HomeTabState with _$HomeTabState {
  const factory HomeTabState({
    @Default(true) bool isBarExpanded,
    @Default(false) bool showAllowNotificationView,
    @Default(false) bool showAllowLocationView,
    @Default(SalahTimeState.none()) SalahTimeState nextPrayType,
  }) = _HomeTabState;
}
