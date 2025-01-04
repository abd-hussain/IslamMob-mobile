import 'coordinates.dart';
import 'internal/qibla_util.dart';

/// Represents the Qibla direction for a given location.
class Qibla {
  /// The coordinates of the Kaaba in Makkah.
  static final Coordinates makkah = Coordinates(21.4225241, 39.8261818);

  /// The Qibla direction in degrees (compass/clockwise).
  late final double direction;

  /// Constructs a [Qibla] instance and calculates the Qibla direction for the given location.
  ///
  /// - [coordinates]: The geographical coordinates of the location.
  Qibla(Coordinates coordinates) {
    direction = QiblaUtil.calculateQiblaDirection(coordinates);
  }
}
