import 'package:geolocator/geolocator.dart';

/// A model representing location data including geographic coordinates and address information.
///
/// This class encapsulates both coordinate data (latitude, longitude) and detailed
/// address information such as country, city, street, and other location components.
/// It provides factory constructors for creating instances from Position objects
/// or address maps, and includes utility methods for data conversion and copying.
class LocationModel {
  /// The country name where the location is situated.
  final String? country;

  /// The ISO country code (e.g., 'US', 'CA', 'GB').
  final String? countryCode;

  /// The city or locality name.
  final String? city;

  /// The sub-locality or neighborhood within the city.
  final String? subCity;

  /// The street or road name.
  final String? street;

  /// The administrative area (state, province, or region).
  final String? administrativeArea;

  /// The sub-administrative area (county or district).
  final String? subAdministrativeArea;

  /// The postal or ZIP code.
  final String? postalCode;

  /// The thoroughfare (street name with number).
  final String? thoroughfare;

  /// The sub-thoroughfare (building or apartment number).
  final String? subThoroughfare;

  /// The latitude coordinate in degrees.
  final double latitude;

  /// The longitude coordinate in degrees.
  final double longitude;

  /// The accuracy of the location measurement in meters.
  final double? accuracy;

  /// The altitude above sea level in meters.
  final double? altitude;

  /// The timestamp when the location was recorded.
  final DateTime? timestamp;

  /// Creates a new [LocationModel] instance.
  ///
  /// The [latitude] and [longitude] parameters are required as they represent
  /// the essential geographic coordinates. All other parameters are optional
  /// and can be used to provide additional address and location details.
  LocationModel({
    this.country,
    this.countryCode,
    this.city,
    this.subCity,
    this.street,
    this.administrativeArea,
    this.subAdministrativeArea,
    this.postalCode,
    this.thoroughfare,
    this.subThoroughfare,
    required this.latitude,
    required this.longitude,
    this.accuracy,
    this.altitude,
    this.timestamp,
  });

  /// Create from a Position object
  factory LocationModel.fromPosition(Position position) {
    return LocationModel(
      latitude: position.latitude,
      longitude: position.longitude,
      accuracy: position.accuracy,
      altitude: position.altitude,
      timestamp: position.timestamp,
    );
  }

  /// Create from a map of address details and coordinates
  factory LocationModel.fromAddressMap(
    Map<String, String> addressMap,
    double latitude,
    double longitude,
  ) {
    return LocationModel(
      country: addressMap['country'],
      countryCode: addressMap['countryCode'],
      city: addressMap['city'],
      subCity: addressMap['subCity'],
      street: addressMap['street'],
      administrativeArea: addressMap['administrativeArea'],
      subAdministrativeArea: addressMap['subAdministrativeArea'],
      postalCode: addressMap['postalCode'],
      thoroughfare: addressMap['thoroughfare'],
      subThoroughfare: addressMap['subThoroughfare'],
      latitude: latitude,
      longitude: longitude,
      timestamp: DateTime.now(),
    );
  }

  /// Convert to a map
  Map<String, dynamic> toMap() {
    return {
      'country': country,
      'countryCode': countryCode,
      'city': city,
      'subCity': subCity,
      'street': street,
      'administrativeArea': administrativeArea,
      'subAdministrativeArea': subAdministrativeArea,
      'postalCode': postalCode,
      'thoroughfare': thoroughfare,
      'subThoroughfare': subThoroughfare,
      'latitude': latitude,
      'longitude': longitude,
      'accuracy': accuracy,
      'altitude': altitude,
      'timestamp': timestamp?.toIso8601String(),
    };
  }

  /// Create a copy with some fields replaced
  LocationModel copyWith({
    String? country,
    String? countryCode,
    String? city,
    String? subCity,
    String? street,
    String? administrativeArea,
    String? subAdministrativeArea,
    String? postalCode,
    String? thoroughfare,
    String? subThoroughfare,
    double? latitude,
    double? longitude,
    double? accuracy,
    double? altitude,
    DateTime? timestamp,
  }) {
    return LocationModel(
      country: country ?? this.country,
      countryCode: countryCode ?? this.countryCode,
      city: city ?? this.city,
      subCity: subCity ?? this.subCity,
      street: street ?? this.street,
      administrativeArea: administrativeArea ?? this.administrativeArea,
      subAdministrativeArea:
          subAdministrativeArea ?? this.subAdministrativeArea,
      postalCode: postalCode ?? this.postalCode,
      thoroughfare: thoroughfare ?? this.thoroughfare,
      subThoroughfare: subThoroughfare ?? this.subThoroughfare,
      latitude: latitude ?? this.latitude,
      longitude: longitude ?? this.longitude,
      accuracy: accuracy ?? this.accuracy,
      altitude: altitude ?? this.altitude,
      timestamp: timestamp ?? this.timestamp,
    );
  }
}
