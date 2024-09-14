part of 'main_container_bloc.dart';

enum SelectedTab { quran }

@freezed
class MainContainerState with _$MainContainerState {
  const factory MainContainerState({
    @Default(SelectedTab.quran) SelectedTab selectedIndex,
  }) = _MainContainerState;
}
