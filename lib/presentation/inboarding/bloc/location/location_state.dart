part of 'location_bloc.dart';

/// State for the Location Setup BLoC.
///
/// This immutable state class manages the state of location configuration
/// during the Islamic app onboarding process. The state tracks:
/// - **Location information** with geographical coordinates and place names
/// - **Detection status** for location permission and GPS progress
/// - **Configuration progress** for location setup completion
///
/// The state enables accurate Islamic prayer time calculations by maintaining
/// geographical information essential for determining proper prayer times
/// according to the user's specific location and Islamic requirements.
@freezed
abstract class LocationState with _$LocationState {
  /// Creates a [LocationState] with location information and detection status.
  ///
  /// Parameters:
  /// - [location]: The location model containing geographical information.
  ///   Defaults to null (no location detected). Contains country, city,
  ///   coordinates, and other geographical data needed for accurate
  ///   Islamic prayer time calculations.
  /// - [status]: The current location detection status.
  ///   Defaults to LocationStatus.none. Tracks the progress of location
  ///   detection including permission requests, GPS activation, and
  ///   location accuracy validation.
  ///
  /// The state provides essential information for location-based Islamic
  /// prayer time calculations and onboarding progress tracking.
  ///
  /// Example:
  /// ```dart
  /// final state = LocationState(
  ///   location: LocationModel(
  ///     country: 'Saudi Arabia',
  ///     city: 'Mecca',
  ///     latitude: 21.4225,
  ///     longitude: 39.8262,
  ///   ),
  ///   status: LocationStatus.detected,
  /// );
  /// ```
  const factory LocationState({
    LocationModel? location,
    @Default(LocationProcessState.idl()) LocationProcessState status,
  }) = _LocationState;
}

/// Sealed class representing different states of the location detection process.
///
/// This sealed class defines all possible states during location detection
/// for Islamic prayer time calculations, providing clear status tracking
/// for location permission, GPS activation, and detection progress.
@freezed
sealed class LocationProcessState with _$LocationProcessState {
  /// Idle state when location detection has not started.
  const factory LocationProcessState.idl() = LocationProcessStateIdl;
  const factory LocationProcessState.loading() = LocationProcessStateLoading;
  const factory LocationProcessState.noPermission() =
      LocationProcessStateNoPermission;
  const factory LocationProcessState.locationManually() =
      LocationProcessStateLocationManually;
  const factory LocationProcessState.havePermission() =
      LocationProcessStateHavePermission;
}
