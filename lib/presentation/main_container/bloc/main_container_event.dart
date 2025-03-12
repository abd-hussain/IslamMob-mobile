part of 'main_container_bloc.dart';

@freezed
class MainContainerEvent with _$MainContainerEvent {
  factory MainContainerEvent.changeSelectedIndex(int tabIndex) =
      _ChangeSelectedIndex;

  factory MainContainerEvent.changeScreenAwakness(int tabIndex) =
      _ChangeScreenAwakness;
}
