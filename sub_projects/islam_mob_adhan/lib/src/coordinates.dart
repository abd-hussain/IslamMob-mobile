/// Represents geographical coordinates with optional validation.
class Coordinates {
  /// The latitude of the location, in degrees.
  /// Must be between -90 and 90 if validation is enabled.
  final double latitude;

  /// The longitude of the location, in degrees.
  /// Must be between -180 and 180 if validation is enabled.
  final double longitude;

  /// Creates a [Coordinates] instance.
  ///
  /// - [latitude]: The latitude of the location.
  /// - [longitude]: The longitude of the location.
  /// - [validate]: If `true`, validates the latitude and longitude.
  ///
  /// Throws an [ArgumentError] if the coordinates are invalid when validation is enabled.
  Coordinates(this.latitude, this.longitude, {bool validate = false}) {
    if (validate) {
      _validateCoordinates(latitude, longitude);
    }
  }

  /// Validates the latitude and longitude values.
  ///
  /// - [latitude]: The latitude to validate.
  /// - [longitude]: The longitude to validate.
  ///
  /// Throws an [ArgumentError] if the latitude or longitude is out of range
  /// or not a finite number.
  static void _validateCoordinates(double latitude, double longitude) {
    if (latitude < -90 || latitude > 90 || !latitude.isFinite) {
      throw ArgumentError(
          'Invalid latitude: must be a finite number between -90 and 90.');
    }
    if (longitude < -180 || longitude > 180 || !longitude.isFinite) {
      throw ArgumentError(
          'Invalid longitude: must be a finite number between -180 and 180.');
    }
  }
}
