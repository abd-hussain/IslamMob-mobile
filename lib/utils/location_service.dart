import 'package:flutter/services.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:islam_app/utils/logger.dart';

class LocationService {
  Future<String> getCurrentCountryCode() async {
    return await _getLocationData(_getAddressFromLatLng);
  }

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

  Future<String> _getLocationData(
      Future<String?> Function(Position) dataFetcher) async {
    if (!await _handleLocationPermission()) {
      return 'No-Permission';
    }

    try {
      final Position position = await Geolocator.getCurrentPosition();
      final String? result = await dataFetcher(position);
      return result ?? "Unknown";
    } on PlatformException catch (e) {
      await _logPlatformException(e);
      return "Error";
    }
  }

  Future<String?> _getAddressFromLatLng(Position position) async {
    return await _getPlacemarkData(
      position,
      (placemark) => placemark.isoCountryCode,
    );
  }

  Future<String?> _getPlacemarkData(
      Position position, String? Function(Placemark) extractor) async {
    try {
      final placemarks =
          await placemarkFromCoordinates(position.latitude, position.longitude);
      if (placemarks.isNotEmpty) {
        return extractor(placemarks[0]);
      }
    } on PlatformException catch (e) {
      await _logPlatformException(e);
    } catch (e) {
      logDebugMessage(message: "Unexpected error: $e");
    }
    return null;
  }

  Future<void> _logPlatformException(PlatformException e) async {
    logDebugMessage(message: e.message ?? "An error occurred");
  }
}
