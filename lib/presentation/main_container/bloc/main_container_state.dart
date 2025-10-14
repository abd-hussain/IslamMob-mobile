part of 'main_container_bloc.dart';

/// Represents the state of the main container.
///
/// This state class holds the current state of the main application container,
/// including the currently selected tab index for bottom navigation.
/// It uses Freezed for immutability and code generation.
@freezed
abstract class MainContainerState with _$MainContainerState {
  /// Creates a [MainContainerState] with optional parameters.
  ///
  /// The [selectedIndex] parameter represents the currently selected tab
  /// in the bottom navigation bar and defaults to 0 (first tab).
  const factory MainContainerState({@Default(0) int selectedIndex}) =
      _MainContainerState;
}
