import 'dart:async';

import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:logger_manager/logger_manager.dart';

/// A comprehensive location service that provides location tracking, geocoding,
/// and reverse geocoding functionality.
///
/// This service handles:
/// - Real-time location tracking with configurable accuracy and update intervals
/// - One-time position retrieval
/// - Address to coordinates conversion (geocoding)
/// - Coordinates to address conversion (reverse geocoding)
/// - Distance calculations between coordinates
/// - Location permission management
///
/// Example usage:
/// ```dart
/// final locationService = LocationService();
///
/// // Start tracking location
/// await locationService.startTracking();
///
/// // Listen to location updates
/// locationService.locationStream.listen((position) {
///   print('Location: ${position.latitude}, ${position.longitude}');
/// });
///
/// // Stop tracking when done
/// locationService.stopTracking();
/// locationService.dispose();
/// ```
class LocationService {
  /// Stream controller for location updates
  final _locationController = StreamController<Position>.broadcast();

  /// Stream of location updates
  Stream<Position> get locationStream => _locationController.stream;

  /// The last known position
  Position? _lastKnownPosition;

  /// Returns the last known position, or null if no position has been obtained yet.
  ///
  /// This position is updated whenever:
  /// - Location tracking is active and a new position is received
  /// - [getCurrentPosition] is called successfully
  Position? get lastKnownPosition => _lastKnownPosition;

  /// Whether location tracking is active
  bool _isTracking = false;

  /// Returns true if location tracking is currently active
  bool get isTracking => _isTracking;

  /// StreamSubscription for position updates
  StreamSubscription<Position>? _positionSubscription;

  /// Start tracking location with specified accuracy and update interval
  Future<bool> startTracking({
    LocationAccuracy accuracy = LocationAccuracy.high,
    int distanceFilter = 10, // minimum distance (meters) before updates
    int interval = 5000, // minimum time (milliseconds) between updates
  }) async {
    if (_isTracking) return true;

    if (!await _checkPermission()) {
      return false;
    }

    try {
      _positionSubscription =
          Geolocator.getPositionStream(
            locationSettings: AndroidSettings(
              accuracy: accuracy,
              distanceFilter: distanceFilter,
              intervalDuration: Duration(milliseconds: interval),
            ),
          ).listen((Position position) {
            _lastKnownPosition = position;
            _locationController.add(position);
            LoggerManagerBase.logDebugMessage(
              message:
                  'Location update: ${position.latitude}, ${position.longitude}',
            );
          });

      _isTracking = true;
      return true;
    } catch (e) {
      LoggerManagerBase.logErrorMessage(
        error: e,
        message: 'Failed to start location tracking',
      );
      return false;
    }
  }

  /// Stop tracking location
  void stopTracking() {
    _positionSubscription?.cancel();
    _positionSubscription = null;
    _isTracking = false;
    LoggerManagerBase.logInfo(message: 'Location tracking stopped');
  }

  /// Get the current position once
  Future<Position?> getCurrentPosition({
    LocationAccuracy accuracy = LocationAccuracy.high,
  }) async {
    if (!await _checkPermission()) {
      return null;
    }

    try {
      final position = await Geolocator.getCurrentPosition(
        locationSettings: LocationSettings(accuracy: accuracy),
      );
      _lastKnownPosition = position;
      return position;
    } catch (e) {
      LoggerManagerBase.logErrorMessage(
        error: e,
        message: 'Failed to get current position',
      );
      return null;
    }
  }

  /// Get address details from coordinates
  Future<Map<String, String>> getAddressFromCoordinates(
    double latitude,
    double longitude,
  ) async {
    try {
      final placemarks = await placemarkFromCoordinates(latitude, longitude);

      if (placemarks.isNotEmpty) {
        final placemark = placemarks.first;
        return {
          'country': placemark.country ?? 'Unknown',
          'countryCode': placemark.isoCountryCode ?? 'Unknown',
          'city': placemark.locality ?? 'Unknown',
          'subCity': placemark.subLocality ?? 'Unknown',
          'street': placemark.street ?? 'Unknown',
          'administrativeArea': placemark.administrativeArea ?? 'Unknown',
          'subAdministrativeArea': placemark.subAdministrativeArea ?? 'Unknown',
          'postalCode': placemark.postalCode ?? 'Unknown',
          'thoroughfare': placemark.thoroughfare ?? 'Unknown',
          'subThoroughfare': placemark.subThoroughfare ?? 'Unknown',
          'name': placemark.name ?? 'Unknown',
        };
      }
      return {'error': 'No address found'};
    } catch (e) {
      LoggerManagerBase.logErrorMessage(
        error: e,
        message: 'Failed to get address from coordinates',
      );
      return {'error': 'Failed to get address'};
    }
  }

  /// Get coordinates from address
  Future<Position?> getCoordinatesFromAddress(String address) async {
    try {
      final locations = await locationFromAddress(address);

      if (locations.isNotEmpty) {
        final location = locations.first;
        return Position(
          latitude: location.latitude,
          longitude: location.longitude,
          timestamp: DateTime.now(),
          accuracy: 0,
          altitude: 0,
          heading: 0,
          speed: 0,
          speedAccuracy: 0,
          altitudeAccuracy: 0,
          headingAccuracy: 0,
        );
      }
      return null;
    } catch (e) {
      LoggerManagerBase.logErrorMessage(
        error: e,
        message: 'Failed to get coordinates from address',
      );
      return null;
    }
  }

  /// Calculate distance between two coordinates in meters
  double calculateDistance(
    double startLatitude,
    double startLongitude,
    double endLatitude,
    double endLongitude,
  ) {
    return Geolocator.distanceBetween(
      startLatitude,
      startLongitude,
      endLatitude,
      endLongitude,
    );
  }

  /// Check if location permission is granted
  Future<bool> _checkPermission() async {
    final serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      LoggerManagerBase.logWarning(message: 'Location services are disabled');
      return false;
    }

    var permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        LoggerManagerBase.logWarning(message: 'Location permission denied');
        return false;
      }
    }

    if (permission == LocationPermission.deniedForever) {
      LoggerManagerBase.logWarning(
        message: 'Location permission permanently denied',
      );
      return false;
    }

    return true;
  }

  /// Dispose resources
  void dispose() {
    stopTracking();
    _locationController.close();
  }
}
