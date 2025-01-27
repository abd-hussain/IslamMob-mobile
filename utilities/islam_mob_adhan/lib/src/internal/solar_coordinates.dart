import 'dart:math';

import 'package:islam_mob_adhan/src/internal/astronomical.dart';
import 'package:islam_mob_adhan/src/internal/calendrical_helper.dart';
import 'package:islam_mob_adhan/src/internal/double_util.dart';
import 'package:islam_mob_adhan/src/internal/math.dart';

/// Represents the solar coordinates, including declination,
/// right ascension, and apparent sidereal time.
class SolarCoordinates {
  /// The declination of the Sun, the angle between the Sun's rays
  /// and the plane of the Earth's equator, in degrees.
  late final double declination;

  /// The right ascension of the Sun, the angular distance on the celestial equator
  /// from the vernal equinox to the hour circle, in degrees.
  late final double rightAscension;

  /// The apparent sidereal time, the hour angle of the vernal equinox, in degrees.
  late final double apparentSiderealTime;

  /// Constructs [SolarCoordinates] for a given Julian Day.
  ///
  /// - [julianDay]: The Julian Day for which solar coordinates are calculated.
  SolarCoordinates(double julianDay) {
    final T = CalendricalHelper.julianCentury(julianDay);

    // Calculate key astronomical parameters.
    final meanSolarLongitude = Astronomical.meanSolarLongitude(T);
    final meanLunarLongitude = Astronomical.meanLunarLongitude(T);
    final ascendingNode = Astronomical.ascendingLunarNodeLongitude(T);
    final apparentSolarLongitude = degreesToRadians(
      Astronomical.apparentSolarLongitude(T, meanSolarLongitude),
    );

    final meanSiderealTime = Astronomical.meanSiderealTime(T);
    final nutationInLongitude = Astronomical.nutationInLongitude(
      T,
      meanSolarLongitude,
      meanLunarLongitude,
      ascendingNode,
    );
    final nutationInObliquity = Astronomical.nutationInObliquity(
      T,
      meanSolarLongitude,
      meanLunarLongitude,
      ascendingNode,
    );

    final meanObliquity = Astronomical.meanObliquityOfTheEcliptic(T);
    final apparentObliquity = degreesToRadians(
      Astronomical.apparentObliquityOfTheEcliptic(T, meanObliquity),
    );

    // Calculate declination using spherical trigonometry.
    declination = radiansToDegrees(asin(sin(apparentObliquity) * sin(apparentSolarLongitude)));

    // Calculate right ascension.
    rightAscension = DoubleUtil.unwindAngle(
      radiansToDegrees(
        atan2(
          cos(apparentObliquity) * sin(apparentSolarLongitude),
          cos(apparentSolarLongitude),
        ),
      ),
    );

    // Calculate apparent sidereal time.
    apparentSiderealTime = meanSiderealTime +
        (nutationInLongitude * 3600 * cos(degreesToRadians(meanObliquity + nutationInObliquity))) / 3600;
  }
}
