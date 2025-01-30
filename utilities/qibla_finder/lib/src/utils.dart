import 'dart:math' show sin, cos, tan, atan;
import 'package:vector_math/vector_math.dart' show radians, degrees;

class Utils {
  // Private constructor to prevent instantiation
  Utils._();

  /// Kaaba's latitude and longitude in radians
  static final double _kaabaLat = radians(21.422487);
  static final double _kaabaLon = radians(39.826206);

  /// Calculates the offset from North (in degrees) needed to face the Kaaba.
  /// Returns a value between -180 and +180, though the final result
  /// may exceed that range depending on the quadrant adjustments.
  ///
  /// [currentLatitude]  The device's current latitude in decimal degrees
  /// [currentLongitude] The device's current longitude in decimal degrees
  static double getOffsetFromNorth(
    double currentLatitude,
    double currentLongitude,
  ) {
    // Convert current lat/long to radians
    final double laRad = radians(currentLatitude);
    final double loRad = radians(currentLongitude);

    // 1. Calculate the initial angle in degrees using a ratio of sines/cosines
    //    for the difference in longitude.
    double offsetDegrees = degrees(
      atan(
        sin(_kaabaLon - loRad) /
            (cos(laRad) * tan(_kaabaLat) - sin(laRad) * cos(_kaabaLon - loRad)),
      ),
    );

    // 2. Adjust the angle based on quadrant checks.
    //    We compare the current latitude (laRad) with the Kaaba's latitude.
    //    Then we apply additional 180° if the angle is in certain ranges.
    if (laRad > _kaabaLat) {
      // Device is north of Kaaba's latitude
      final bool outOfRangeEastOrWest =
          loRad > _kaabaLon || loRad < radians(-180) + _kaabaLon;

      // Condition A
      if (outOfRangeEastOrWest &&
          offsetDegrees > 0.0 &&
          offsetDegrees <= 90.0) {
        offsetDegrees += 180.0;
      }

      // Condition B
      else if (!outOfRangeEastOrWest &&
          offsetDegrees > -90.0 &&
          offsetDegrees < 0.0) {
        offsetDegrees += 180.0;
      }
    } else if (laRad < _kaabaLat) {
      // Device is south of Kaaba's latitude
      final bool outOfRangeEastOrWest =
          loRad > _kaabaLon || loRad < radians(-180) + _kaabaLon;
      // Condition C
      if (outOfRangeEastOrWest && offsetDegrees > 0.0 && offsetDegrees < 90.0) {
        offsetDegrees += 180.0;
      }
      // Condition D
      else if (!outOfRangeEastOrWest &&
          offsetDegrees > -90.0 &&
          offsetDegrees <= 0.0) {
        offsetDegrees += 180.0;
      }
    }

    return offsetDegrees;
  }
}
