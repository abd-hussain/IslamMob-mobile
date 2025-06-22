import 'dart:async';

import 'package:geolocator/geolocator.dart';
import 'package:location_manager/src/geofence_service.dart';
import 'package:location_manager/src/location_service.dart';
import 'package:location_manager/src/models/location_model.dart';
import 'package:logger_manager/logger_manager.dart';

/// A singleton class that manages location services and geofencing functionality.
///
/// The LocationManager provides a centralized interface for:
/// - Location permission handling
/// - Current location retrieval with address details
/// - Location tracking
/// - Geofence monitoring
/// - Distance calculations
///
/// This class follows the singleton pattern to ensure consistent state
/// management across the application.
///
/// Example usage:
/// ```dart
/// final locationManager = LocationManager();
/// await locationManager.initialize();
/// final location = await locationManager.getCurrentLocationWithDetails();
/// ```
class LocationManager {
  /// Singleton instance
  static final LocationManager _instance = LocationManager._internal();

  /// Factory constructor that returns the singleton instance of LocationManager.
  ///
  /// This ensures only one instance of LocationManager exists throughout the app lifecycle.
  factory LocationManager() => _instance;
  LocationManager._internal() {
    _locationService = LocationService();
    _geofenceService = GeofenceService(_locationService);
  }

  /// Services
  late final LocationService _locationService;
  late final GeofenceService _geofenceService;

  /// Access to services
  LocationService get locationService => _locationService;

  /// Provides access to the geofence service for managing location-based boundaries
  GeofenceService get geofenceService => _geofenceService;

  /// Initialize location services
  Future<bool> initialize() async {
    LoggerManagerBase.logInfo(message: 'Initializing LocationManager');
    return checkLocationPermission();
  }

  /// Check and request location permissions
  Future<bool> checkLocationPermission() async {
    final serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      LoggerManagerBase.logWarning(message: "Location services are disabled");
      await Geolocator.openLocationSettings();
      return false;
    }

    var permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        LoggerManagerBase.logWarning(message: "Location permission denied");
        return false;
      }
    }

    if (permission == LocationPermission.deniedForever) {
      LoggerManagerBase.logWarning(
        message: "Location permission permanently denied",
      );
      await Geolocator.openAppSettings();
      return false;
    }

    return true;
  }

  /// Get current location with full address details
  Future<LocationModel?> getCurrentLocationWithDetails() async {
    try {
      final position = await _locationService.getCurrentPosition();
      if (position == null) return null;

      final addressMap = await _locationService.getAddressFromCoordinates(
        position.latitude,
        position.longitude,
      );

      if (addressMap.containsKey('error')) {
        return LocationModel.fromPosition(position);
      }

      return LocationModel.fromAddressMap(
        addressMap,
        position.latitude,
        position.longitude,
      );
    } catch (e) {
      LoggerManagerBase.logErrorMessage(
        error: e,
        message: 'Failed to get current location with details',
      );
      return null;
    }
  }

  /// Start tracking location
  Future<bool> startLocationTracking() async {
    return _locationService.startTracking();
  }

  /// Stop tracking location
  void stopLocationTracking() {
    _locationService.stopTracking();
  }

  /// Add a geofence
  void addGeofence(Geofence geofence) {
    _geofenceService.addGeofence(geofence);
  }

  /// Start monitoring geofences
  Future<bool> startGeofenceMonitoring() async {
    return _geofenceService.startMonitoring();
  }

  /// Stop monitoring geofences
  void stopGeofenceMonitoring() {
    _geofenceService.stopMonitoring();
  }

  /// Calculate distance between two locations in meters
  double calculateDistance(
    double startLatitude,
    double startLongitude,
    double endLatitude,
    double endLongitude,
  ) {
    return _locationService.calculateDistance(
      startLatitude,
      startLongitude,
      endLatitude,
      endLongitude,
    );
  }

  /// Dispose resources
  void dispose() {
    _locationService.dispose();
    _geofenceService.dispose();
    LoggerManagerBase.logInfo(message: 'LocationManager disposed');
  }
}
