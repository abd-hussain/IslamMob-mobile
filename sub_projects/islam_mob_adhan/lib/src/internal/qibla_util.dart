import 'dart:math';
import 'package:islam_mob_adhan/src/coordinates.dart';
import 'double_util.dart';
import 'math.dart';

/// Utility class for Qibla direction calculations.
class QiblaUtil {
  /// Coordinates of the Kaaba in Makkah.
  static final Coordinates makkah = Coordinates(21.4225241, 39.8261818);

  /// Calculates the Qibla direction for a given location.
  ///
  /// - [coordinates]: The geographical coordinates of the location.
  /// - Returns: The Qibla direction in degrees, where North is 0° and East is 90°.
  static double calculateQiblaDirection(Coordinates coordinates) {
    // Equation from "Spherical Trigonometry For the use of colleges and schools" (page 50)
    final longitudeDelta =
        degreesToRadians(makkah.longitude - coordinates.longitude);
    final latitudeRadians = degreesToRadians(coordinates.latitude);

    final term1 = sin(longitudeDelta);
    final term2 = cos(latitudeRadians) * tan(degreesToRadians(makkah.latitude));
    final term3 = sin(latitudeRadians) * cos(longitudeDelta);

    final angle = atan2(term1, term2 - term3);
    return DoubleUtil.unwindAngle(radiansToDegrees(angle));
  }
}
