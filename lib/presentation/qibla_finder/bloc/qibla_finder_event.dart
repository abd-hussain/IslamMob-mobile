part of 'qibla_finder_bloc.dart';

/// Represents events for the Qibla finder functionality.
///
/// This sealed class defines all possible events that can be triggered
/// in the Qibla finder feature, including initialization and setup operations
/// for compass functionality and location services.
@freezed
class QiblaFinderEvent with _$QiblaFinderEvent {
  /// Event to initialize and set up the Qibla finder.
  ///
  /// This event is typically triggered when the Qibla finder screen
  /// is first loaded to initialize compass functionality, location services,
  /// and other necessary components for finding the Qibla direction.
  const factory QiblaFinderEvent.setup() = _QiblaFinderSetup;
}
