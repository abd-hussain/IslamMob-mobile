part of 'about_us_bloc.dart';

/// Events for the About Us screen BLoC.
///
/// This sealed class defines all possible events that can be triggered
/// in the About Us screen, specifically related to rewarded advertisement
/// management for supporting the Islam Mob app development.
@freezed
class AboutUsEvent with _$AboutUsEvent {
  /// Event to initialize a rewarded advertisement.
  ///
  /// This event triggers the creation and loading of a rewarded ad that
  /// users can view to support the Islamic app development. The ad
  /// provides a way for users to contribute to the app's sustainability
  /// while maintaining the free nature of Islamic content.
  factory AboutUsEvent.initializeRewardedAd() = _InitializeRewardedAd;

  /// Event to update the rewarded advertisement availability status.
  ///
  /// This event updates the state to reflect whether a rewarded ad is
  /// currently available for display. It's used to show or hide the
  /// "Support Us" option in the About Us screen interface.
  ///
  /// Parameters:
  /// - [value]: Boolean indicating if a rewarded ad is available
  factory AboutUsEvent.updateRewardedAd(bool value) = _UpdateRewardedAd;
}
