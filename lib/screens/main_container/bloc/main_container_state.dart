part of 'main_container_bloc.dart';

@freezed
class MainContainerState with _$MainContainerState {
  const factory MainContainerState({
    @Default(1) int selectedIndex,
  }) = _MainContainerState;
}
