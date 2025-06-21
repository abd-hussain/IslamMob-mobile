part of 'home_tab_bloc.dart';

/// Events for the Home Tab BLoC.
///
/// This sealed class defines all possible events for managing the main home
/// screen of the Islamic application. These events handle:
/// - **App bar expansion** based on scroll position for better user experience
/// - **Permission view visibility** for location and notification access
/// - **Prayer time updates** for displaying next prayer information
/// - **UI state management** for responsive home screen behavior
///
/// The events support the central Islamic app functionality by managing
/// prayer time display, permission requests, and user interface responsiveness
/// for the main home screen where Muslims access prayer times and Islamic features.
@freezed
class HomeTabEvent with _$HomeTabEvent {
  /// Event to update the app bar's expanded status based on scroll position.
  ///
  /// This event controls whether the app bar is expanded or collapsed,
  /// providing better visual hierarchy and user experience during scrolling.
  ///
  /// Parameters:
  /// - [status]: Boolean indicating if the app bar should be expanded
  factory HomeTabEvent.updateExpandedStatus(bool status) =
      _UpdateExpandedStatus;

  /// Event to show or hide the notification permission request view.
  ///
  /// This event manages the visibility of the notification permission
  /// prompt, helping users enable prayer time notifications for their
  /// Islamic practice.
  ///
  /// Parameters:
  /// - [status]: Boolean indicating if the notification view should be shown
  factory HomeTabEvent.updateShowingNotificationView(bool status) =
      _UpdateShowingNotificationView;

  /// Event to show or hide the location permission request view.
  ///
  /// This event manages the visibility of the location permission prompt,
  /// enabling accurate prayer time calculations based on the user's
  /// geographical location.
  ///
  /// Parameters:
  /// - [status]: Boolean indicating if the location view should be shown
  factory HomeTabEvent.updateShowingLocationView(bool status) =
      _UpdateShowingLocationView;

  /// Event to update the next prayer type for display and countdown.
  ///
  /// This event updates the home screen with information about the next
  /// upcoming Islamic prayer, enabling proper countdown timers and
  /// prayer preparation reminders.
  ///
  /// Parameters:
  /// - [nextPrayType]: The next prayer type (Fajr, Dhuhr, Asr, Maghrib, Isha)
  factory HomeTabEvent.updateNextPrayType(SalahTimeState nextPrayType) =
      _UpdateNextPrayType;
}
