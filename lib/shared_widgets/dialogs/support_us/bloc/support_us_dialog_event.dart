part of 'support_us_dialog_bloc.dart';

/// Events for the Support Us dialog BLoC.
///
/// This class defines all possible events that can be dispatched
/// to the [SupportUsDialogBloc] to manage rewarded ad functionality.
@freezed
class SupportUsDialogEvent with _$SupportUsDialogEvent {
  /// Event to initialize the rewarded ad.
  ///
  /// This event triggers the initialization of a rewarded ad
  /// that users can watch to support the app.
  factory SupportUsDialogEvent.initializeRewardedAd() = _InitializeRewardedAd;

  /// Event to update the rewarded ad availability status.
  ///
  /// The [value] parameter indicates whether a rewarded ad is
  /// currently available to be shown to the user.
  factory SupportUsDialogEvent.updateRewardedAd(bool value) = _UpdateRewardedAd;
}
