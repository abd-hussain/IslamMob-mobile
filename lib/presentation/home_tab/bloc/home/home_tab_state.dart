part of 'home_tab_bloc.dart';

/// State for the Home Tab BLoC.
///
/// This immutable state class manages the state of the main home screen
/// in the Islamic application, which serves as the central hub for prayer
/// times and Islamic features. The state tracks:
/// - **App bar expansion** for responsive UI behavior during scrolling
/// - **Permission view visibility** for location and notification access
/// - **Next prayer information** for countdown timers and prayer preparation
/// - **UI responsiveness** for optimal user experience
///
/// The state enables Muslims to access prayer times, Islamic reminders,
/// and navigate to other Islamic features while maintaining proper UI
/// state management and permission handling for location-based prayer times.
@freezed
class HomeTabState with _$HomeTabState {
  /// Creates a [HomeTabState] with home screen settings and prayer information.
  ///
  /// Parameters:
  /// - [isBarExpanded]: Boolean indicating if the app bar is expanded.
  ///   Defaults to true. Controls the visual hierarchy and scroll behavior
  ///   of the home screen interface for better user experience.
  /// - [showAllowNotificationView]: Boolean for notification permission prompt visibility.
  ///   Defaults to false. When true, displays the notification permission
  ///   request to enable prayer time notifications for Islamic practice.
  /// - [showAllowLocationView]: Boolean for location permission prompt visibility.
  ///   Defaults to false. When true, displays the location permission request
  ///   to enable accurate prayer time calculations based on geographical location.
  /// - [nextPrayType]: The next upcoming Islamic prayer type.
  ///   Defaults to SalahTimeState.none(). Contains information about the next
  ///   prayer (Fajr, Dhuhr, Asr, Maghrib, Isha) for countdown and preparation.
  ///
  /// The state provides comprehensive information for managing the home screen
  /// interface and Islamic prayer functionality.
  ///
  /// Example:
  /// ```dart
  /// final state = HomeTabState(
  ///   isBarExpanded: true,
  ///   showAllowNotificationView: false,
  ///   showAllowLocationView: false,
  ///   nextPrayType: SalahTimeState.fajr(),
  /// );
  /// ```
  const factory HomeTabState({
    @Default(true) bool isBarExpanded,
    @Default(false) bool showAllowNotificationView,
    @Default(false) bool showAllowLocationView,
    @Default(SalahTimeState.none()) SalahTimeState nextPrayType,
  }) = _HomeTabState;
}
