/// A utility class providing mathematical operations for double values.
///
/// This class contains static methods for normalizing values, unwinding angles,
/// and performing angle calculations commonly used in astronomical computations.
class DoubleUtil {
  /// Normalizes a value within a given [max] bound.
  ///
  /// - [value]: The value to normalize.
  /// - [max]: The upper bound for normalization.
  /// - Returns: The normalized value within the range [0, max).
  static double normalizeWithBound(double value, double max) {
    return value - (max * (value / max).floorToDouble());
  }

  /// Unwinds an angle to ensure it falls within the range [0, 360).
  ///
  /// - [value]: The angle in degrees to unwind.
  /// - Returns: The unwound angle within the range [0, 360).
  static double unwindAngle(double value) {
    return normalizeWithBound(value, 360);
  }

  /// Adjusts an angle to the closest equivalent within the range [-180, 180].
  ///
  /// - [angle]: The angle in degrees to adjust.
  /// - Returns: The closest equivalent angle within the range [-180, 180].
  static double closestAngle(double angle) {
    if (angle >= -180 && angle <= 180) {
      return angle;
    }
    return angle - (360 * (angle / 360).roundToDouble());
  }
}
