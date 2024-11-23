/// Represents geographical coordinates with optional validation.
class Coordinates {
  final double latitude;
  final double longitude;

  /// Creates a [Coordinates] instance.
  ///
  /// If [validate] is `true`, this will throw an [ArgumentError]
  /// if [latitude] or [longitude] are out of valid ranges.
  /// Latitude must be between -90 and 90, and longitude must be between -180 and 180.
  Coordinates(this.latitude, this.longitude, {bool validate = false}) {
    if (validate) {
      _validateCoordinates(latitude, longitude);
    }
  }

  /// Validates latitude and longitude values.
  static void _validateCoordinates(double latitude, double longitude) {
    if (!latitude.isFinite || latitude.abs() > 90) {
      throw ArgumentError(
          'Invalid latitude: must be a finite number between -90 and 90.');
    }
    if (!longitude.isFinite || longitude.abs() > 180) {
      throw ArgumentError(
          'Invalid longitude: must be a finite number between -180 and 180.');
    }
  }
}
