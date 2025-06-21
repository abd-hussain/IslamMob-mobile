# Location Manager

A Flutter package that provides a simplified interface for location services, geocoding, and geofencing.

## Features

- Get current location with address details
- Continuous location tracking
- Geocoding (convert between addresses and coordinates)
- Geofencing (monitor when a user enters or exits defined areas)
- Distance calculation between coordinates
- Permission handling

## Getting started

Add this package to your pubspec.yaml:

```yaml
dependencies:
  location_manager:
    path: ../location_manager
```

## Usage

### Basic Location Services

```dart
import 'package:location_manager/location_manager.dart';

// Initialize the location manager
final locationManager = LocationManager();
await locationManager.initialize();

// Check if location permission is granted
bool hasPermission = await locationManager.checkLocationPermission();

// Get current location with address details
final location = await locationManager.getCurrentLocationWithDetails();
if (location != null) {
  print('Current location: ${location.latitude}, ${location.longitude}');
  print('Address: ${location.city}, ${location.country}');
}
```

### Location Tracking

```dart
import 'package:location_manager/location_manager.dart';

// Start tracking location
final locationManager = LocationManager();
await locationManager.startLocationTracking();

// Listen to location updates
locationManager.locationService.locationStream.listen((position) {
  print('Location update: ${position.latitude}, ${position.longitude}');
});

// Stop tracking when done
locationManager.stopLocationTracking();
```

### Geofencing

```dart
import 'package:location_manager/location_manager.dart';

// Create a geofence
final geofence = Geofence(
  id: 'home',
  name: 'My Home',
  latitude: 37.7749,
  longitude: -122.4194,
  radius: 100, // meters
);

// Add the geofence
final locationManager = LocationManager();
locationManager.addGeofence(geofence);

// Start monitoring geofences
await locationManager.startGeofenceMonitoring();

// Listen to geofence events
locationManager.geofenceService.geofenceStream.listen((status) {
  if (status.event == GeofenceEvent.enter) {
    print('Entered ${status.geofence.name}');
  } else if (status.event == GeofenceEvent.exit) {
    print('Exited ${status.geofence.name}');
  }
});

// Stop monitoring when done
locationManager.stopGeofenceMonitoring();
```

### Distance Calculation

```dart
import 'package:location_manager/location_manager.dart';

// Calculate distance between two points
final locationManager = LocationManager();
final distance = locationManager.calculateDistance(
  37.7749, -122.4194, // San Francisco
  34.0522, -118.2437, // Los Angeles
);
print('Distance: ${distance / 1000} km');
```

## Additional information

This package uses the following dependencies:
- [geolocator](https://pub.dev/packages/geolocator) for location services
- [geocoding](https://pub.dev/packages/geocoding) for address lookup
- [logger_manager](https://pub.dev/packages/logger_manager) for logging

For more information on location permissions in Flutter, see the [geolocator documentation](https://pub.dev/packages/geolocator).
