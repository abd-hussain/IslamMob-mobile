import 'package:flutter/services.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:islam_app/utils/logger.dart';

class LocationService {
  /// Get the current country, city, and sub-city
  Future<Map<String, String>> getLocationDetails() async {
    if (!await _handleLocationPermission()) {
      return {'error': 'No-Permission'};
    }

    try {
      final Position position = await Geolocator.getCurrentPosition();
      final placemarks = await placemarkFromCoordinates(
        position.latitude,
        position.longitude,
      );

      if (placemarks.isNotEmpty) {
        final placemark = placemarks[0];
        return {
          'country': placemark.country ?? 'Unknown',
          'city': placemark.locality ?? 'Unknown',
          'subCity': placemark.subLocality ?? 'Unknown',
        };
      }
    } on PlatformException catch (e) {
      await _logPlatformException(e);
    } catch (e) {
      logDebugMessage(message: "Unexpected error: $e");
    }
    return {'error': 'Error retrieving location'};
  }

  /// Handle location permissions
  Future<bool> _handleLocationPermission() async {
    if (!await Geolocator.isLocationServiceEnabled()) {
      return false;
    }

    LocationPermission permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
    }

    return permission != LocationPermission.deniedForever &&
        permission != LocationPermission.denied;
  }

  /// Log platform exceptions
  Future<void> _logPlatformException(PlatformException e) async {
    logDebugMessage(message: e.message ?? "An error occurred");
  }
}
