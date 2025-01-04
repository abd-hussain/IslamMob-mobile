import 'package:flutter/services.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:logger_manager/logger_manager.dart';

class LocationManagerBase {
  /// Retrieves detailed location information including country, city, and coordinates.
  Future<Map<String, String>> getLocationDetails() async {
    if (!await _checkLocationPermission()) {
      return {'error': 'No-Permission'};
    }

    try {
      final position = await Geolocator.getCurrentPosition();
      return await _getPlacemarkDetails(position);
    } on PlatformException catch (e) {
      _logPlatformException(e);
    } catch (e) {
      LoggerManagerBase.logDebugMessage(message: "Unexpected error: $e");
    }
    return {'error': 'Error retrieving location'};
  }

  /// Checks and requests location permissions.
  Future<bool> _checkLocationPermission() async {
    if (!await Geolocator.isLocationServiceEnabled()) {
      LoggerManagerBase.logDebugMessage(message: "Location services are disabled.");
      return false;
    }

    LocationPermission permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
    }

    if (permission == LocationPermission.deniedForever) {
      LoggerManagerBase.logDebugMessage(message: "Location permissions are permanently denied.");
      return false;
    }

    return permission != LocationPermission.denied;
  }

  /// Retrieves placemark details from coordinates.
  Future<Map<String, String>> _getPlacemarkDetails(Position position) async {
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
        'latitude': position.latitude.toString(),
        'longitude': position.longitude.toString(),
      };
    }

    LoggerManagerBase.logDebugMessage(message: "No placemarks found for the given coordinates.");
    return {'error': 'No placemarks found'};
  }

  /// Logs platform exceptions for debugging purposes.
  void _logPlatformException(PlatformException e) {
    LoggerManagerBase.logDebugMessage(message: e.message ?? "An unknown platform error occurred");
  }
}
