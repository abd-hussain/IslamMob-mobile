import 'dart:async';

import 'package:geolocator/geolocator.dart';
import 'package:location_manager/src/location_service.dart';
import 'package:logger_manager/logger_manager.dart';

/// Represents a circular geofence area
class Geofence {
  /// Unique identifier for the geofence
  final String id;

  /// Latitude coordinate of the geofence center
  final double latitude;

  /// Longitude coordinate of the geofence center
  final double longitude;

  /// Radius of the geofence in meters
  final double radius;

  /// Optional name for the geofence
  final String? name;

  /// Creates a new geofence with the specified parameters
  Geofence({
    required this.id,
    required this.latitude,
    required this.longitude,
    required this.radius,
    this.name,
  });
}

/// Enum for geofence events
enum GeofenceEvent {
  /// Event triggered when entering a geofence
  enter,

  /// Event triggered when exiting a geofence
  exit,

  /// Event triggered when dwelling inside a geofence
  dwell,
}

/// Represents a geofence event
class GeofenceStatus {
  /// The geofence that triggered the event
  final Geofence geofence;

  /// The type of geofence event that occurred
  final GeofenceEvent event;

  /// The position where the event was triggered
  final Position position;

  /// The timestamp when the event occurred
  final DateTime timestamp;

  /// Creates a new geofence status with the specified parameters
  GeofenceStatus({
    required this.geofence,
    required this.event,
    required this.position,
    required this.timestamp,
  });
}

/// Service for managing and monitoring geofences
class GeofenceService {
  final LocationService _locationService;
  final Map<String, Geofence> _geofences = {};
  final _geofenceController = StreamController<GeofenceStatus>.broadcast();

  /// Stream of geofence events
  Stream<GeofenceStatus> get geofenceStream => _geofenceController.stream;

  /// Map of current geofence statuses (inside/outside)
  final Map<String, bool> _geofenceStatuses = {};

  /// Subscription to location updates
  StreamSubscription<Position>? _locationSubscription;

  /// Create a geofence service with a location service
  GeofenceService(this._locationService);

  /// Add a geofence to monitor
  void addGeofence(Geofence geofence) {
    _geofences[geofence.id] = geofence;
    _geofenceStatuses[geofence.id] = false; // Initially outside
    LoggerManagerBase.logInfo(
      message: 'Added geofence: ${geofence.id} (${geofence.name ?? "unnamed"})',
    );
  }

  /// Remove a geofence
  void removeGeofence(String geofenceId) {
    _geofences.remove(geofenceId);
    _geofenceStatuses.remove(geofenceId);
    LoggerManagerBase.logInfo(message: 'Removed geofence: $geofenceId');
  }

  /// Start monitoring geofences
  Future<bool> startMonitoring() async {
    if (_locationSubscription != null) {
      LoggerManagerBase.logWarning(
          message: 'Geofence monitoring already started');
      return true;
    }

    // Start location tracking if not already started
    if (!_locationService.isTracking) {
      final success = await _locationService.startTracking();
      if (!success) {
        LoggerManagerBase.logWarning(
            message: 'Failed to start location tracking for geofencing');
        return false;
      }
    }

    // Listen to location updates
    _locationSubscription =
        _locationService.locationStream.listen(_checkGeofences);
    LoggerManagerBase.logInfo(message: 'Started geofence monitoring');
    return true;
  }

  /// Stop monitoring geofences
  void stopMonitoring() {
    _locationSubscription?.cancel();
    _locationSubscription = null;
    LoggerManagerBase.logInfo(message: 'Stopped geofence monitoring');
  }

  /// Check if a position is inside a geofence
  bool isInsideGeofence(Geofence geofence, Position position) {
    final distance = Geolocator.distanceBetween(
      position.latitude,
      position.longitude,
      geofence.latitude,
      geofence.longitude,
    );
    return distance <= geofence.radius;
  }

  /// Check all geofences for a position update
  void _checkGeofences(Position position) {
    for (final geofence in _geofences.values) {
      final wasInside = _geofenceStatuses[geofence.id] ?? false;
      final isInside = isInsideGeofence(geofence, position);

      // Status changed
      if (wasInside != isInside) {
        _geofenceStatuses[geofence.id] = isInside;

        final event = isInside ? GeofenceEvent.enter : GeofenceEvent.exit;
        final status = GeofenceStatus(
          geofence: geofence,
          event: event,
          position: position,
          timestamp: DateTime.now(),
        );

        _geofenceController.add(status);

        LoggerManagerBase.logInfo(
          message: 'Geofence ${geofence.id} (${geofence.name ?? "unnamed"}): '
              '${event == GeofenceEvent.enter ? "ENTERED" : "EXITED"}',
        );
      }
    }
  }

  /// Dispose resources
  void dispose() {
    stopMonitoring();
    _geofenceController.close();
  }
}
