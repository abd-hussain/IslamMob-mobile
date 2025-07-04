import 'package:flutter/services.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:logger_manager/logger_manager.dart';

/// A base class for managing location services and retrieving location information.
///
/// This class provides functionality to:
/// - Check and request location permissions
/// - Retrieve current location coordinates
/// - Convert coordinates to human-readable address information
/// - Handle location-related errors and exceptions
class LocationManagerBase {
  /// Retrieves detailed location information including country, city, and coordinates.
  Future<Map<String, dynamic>> getLocationDetails() async {
    if (!await checkLocationPermission()) {
      return {'error': 'No-Permission'};
    }

    try {
      final position = await Geolocator.getCurrentPosition();
      return await _getPlacemarkDetails(position);
    } on PlatformException catch (e) {
      _logPlatformException(e);
    } catch (e) {
      LoggerManagerBase.logErrorMessage(error: e, message: 'Unexpected error');
    }
    return {'error': 'Error retrieving location'};
  }

  /// Checks and requests location permissions.
  Future<bool> checkLocationPermission() async {
    // Step 1: Check if location services are enabled on the device
    final serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      // You can prompt the user to open location settings
      LoggerManagerBase.logWarning(
        message: "❌ Location services are disabled.",
      );
      await Geolocator.openLocationSettings();
      return false;
    }

    // Step 2: Check current permission status
    LocationPermission permission = await Geolocator.checkPermission();

    // Step 3: If denied, request it
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        LoggerManagerBase.logWarning(message: "❌ Location permission denied.");
        return false;
      }
    }

    // Step 4: If denied forever, show a dialog or guide user to settings
    if (permission == LocationPermission.deniedForever) {
      LoggerManagerBase.logWarning(
        message: "❌ Location permission is permanently denied.",
      );
      await Geolocator.openAppSettings();
      return false;
    }

    // ✅ If you reach here, you have permission & services are enabled
    final position = await Geolocator.getCurrentPosition();
    LoggerManagerBase.logInfo(message: "✅ Location: $position");
    return true;
  }

  /// Retrieves placemark details from coordinates.
  Future<Map<String, dynamic>> _getPlacemarkDetails(Position position) async {
    final placemarks = await placemarkFromCoordinates(
      position.latitude,
      position.longitude,
    );

    if (placemarks.isNotEmpty) {
      final placemark = placemarks.first;
      return {
        'country': placemark.country ?? 'Unknown',
        'city': placemark.locality ?? 'Unknown',
        'subCity': placemark.subLocality ?? 'Unknown',
        'street': placemark.street ?? 'Unknown',
        'administrativeArea': placemark.administrativeArea ?? 'Unknown',
        'subAdministrativeArea': placemark.subAdministrativeArea ?? 'Unknown',
        'isoCountryCode': placemark.isoCountryCode ?? 'Unknown',
        'thoroughfare': placemark.thoroughfare ?? 'Unknown',
        'subThoroughfare': placemark.subThoroughfare ?? 'Unknown',
        'name': placemark.name ?? 'Unknown',
        'latitude': position.latitude,
        'longitude': position.longitude,
      };
    }

    LoggerManagerBase.logWarning(
      message: 'No placemarks found for the given coordinates.',
    );
    return {'error': 'No placemarks found'};
  }

  /// Logs platform exceptions for debugging purposes.
  void _logPlatformException(PlatformException e) {
    LoggerManagerBase.logErrorMessage(
      error: e,
      message: e.message ?? 'An unknown platform error occurred',
    );
  }
}
