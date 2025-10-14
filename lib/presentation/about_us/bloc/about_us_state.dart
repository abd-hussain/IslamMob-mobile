part of 'about_us_bloc.dart';

/// State for the About Us screen BLoC.
///
/// This immutable state class manages the state of the About Us screen,
/// specifically tracking the availability of rewarded advertisements
/// that allow users to support the Islam Mob app development.
@freezed
abstract class AboutUsState with _$AboutUsState {
  /// Creates an [AboutUsState] with rewarded ad availability status.
  ///
  /// Parameters:
  /// - [rewardedAdExsist]: Whether a rewarded advertisement is currently
  ///   available for display. Defaults to false. When true, the "Support Us"
  ///   option will be shown in the About Us screen, allowing users to view
  ///   ads to support Islamic app development.
  const factory AboutUsState({@Default(false) bool rewardedAdExsist}) =
      _AboutUsState;
}
