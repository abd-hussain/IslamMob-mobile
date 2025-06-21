part of 'main_container_bloc.dart';

/// Represents events for the main container functionality.
///
/// This sealed class defines all possible events that can be triggered
/// in the main container, including tab navigation changes and screen
/// wakelock management.
@freezed
class MainContainerEvent with _$MainContainerEvent {
  /// Event to change the selected tab index in the bottom navigation.
  ///
  /// Takes a [tabIndex] parameter that specifies which tab should be
  /// selected in the bottom navigation bar.
  factory MainContainerEvent.changeSelectedIndex(int tabIndex) =
      _ChangeSelectedIndex;

  /// Event to change the screen wakelock state based on tab selection.
  ///
  /// Takes a [tabIndex] parameter to determine whether the screen should
  /// stay awake. Typically enables wakelock for specific tabs like prayer
  /// times display and disables it for others.
  factory MainContainerEvent.changeScreenAwakness(int tabIndex) =
      _ChangeScreenAwakness;
}
