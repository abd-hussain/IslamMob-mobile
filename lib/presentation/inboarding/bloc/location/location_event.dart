part of 'location_bloc.dart';

/// Events for the Location Setup BLoC.
///
/// This sealed class defines all possible events for managing location
/// configuration during the Islamic app onboarding process. These events handle:
/// - **Location data setting** with country and city information
/// - **Status updates** for location detection and permission progress
/// - **Location finalization** for saving location preferences
///
/// The events support accurate Islamic prayer time calculations by ensuring
/// Muslims provide their geographical location, which is essential for
/// determining proper prayer times according to Islamic requirements.
@freezed
class LocationEvent with _$LocationEvent {
  /// Event to set the detected country and city names for prayer time calculations.
  ///
  /// This event updates the location information with geographical details
  /// needed for accurate Islamic prayer time calculations based on the
  /// user's specific location coordinates.
  ///
  /// Parameters:
  /// - [location]: The location model containing country, city, and coordinate information
  const factory LocationEvent.setCountryAndCityNames({
    required LocationModel location,
  }) = _SetCountryAndCityNames;

  /// Event to update the location detection status during onboarding.
  ///
  /// This event tracks the progress of location detection, including
  /// permission requests, GPS activation, and location accuracy validation
  /// for Islamic prayer time calculations.
  ///
  /// Parameters:
  /// - [status]: The current location detection status
  const factory LocationEvent.changeLocationStatus({
    required LocationProcessState status,
  }) = _ChangeLocationStatus;

  /// Event to finalize and save the location configuration.
  ///
  /// This event completes the location setup process by saving the
  /// geographical information for persistent Islamic prayer time
  /// calculations throughout the app usage.
  const factory LocationEvent.setupLocation() = _SetupLocation;
}
