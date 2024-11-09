part of 'home_tab_bloc.dart';

@freezed
class HomeTabState with _$HomeTabState {
  const factory HomeTabState({
    @Default(true) bool isBarExpanded,
  }) = _HomeTabState;
}
