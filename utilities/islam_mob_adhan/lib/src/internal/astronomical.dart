import 'dart:math';

import 'package:islam_mob_adhan/src/coordinates.dart';
import 'package:islam_mob_adhan/src/internal/double_util.dart';
import 'package:islam_mob_adhan/src/internal/math.dart';

/// Astronomical calculations based on Astronomical Algorithms by Jean Meeus.
class Astronomical {
  /// Calculates the geometric mean longitude of the Sun (in degrees).
  static double meanSolarLongitude(double T) {
    const term1 = 280.4664567;
    final term2 = 36000.76983 * T;
    final term3 = 0.0003032 * pow(T, 2);
    return DoubleUtil.unwindAngle(term1 + term2 + term3);
  }

  /// Calculates the geometric mean longitude of the Moon (in degrees).
  static double meanLunarLongitude(double T) {
    const term1 = 218.3165;
    final term2 = 481267.8813 * T;
    return DoubleUtil.unwindAngle(term1 + term2);
  }

  /// Calculates the apparent longitude of the Sun (in degrees).
  static double apparentSolarLongitude(double T, double l0) {
    final longitude = l0 + solarEquationOfTheCenter(T, meanSolarAnomaly(T));
    final omega = 125.04 - 1934.136 * T;
    return DoubleUtil.unwindAngle(
      longitude - 0.00569 - 0.00478 * sin(degreesToRadians(omega)),
    );
  }

  /// Calculates the ascending lunar node longitude (in degrees).
  static double ascendingLunarNodeLongitude(double T) {
    const term1 = 125.04452;
    final term2 = 1934.136261 * T;
    final term3 = 0.0020708 * pow(T, 2);
    final term4 = pow(T, 3) / 450000;
    return DoubleUtil.unwindAngle(term1 - term2 + term3 + term4);
  }

  /// Calculates the mean anomaly of the Sun (in degrees).
  static double meanSolarAnomaly(double T) {
    const term1 = 357.52911;
    final term2 = 35999.05029 * T;
    final term3 = 0.0001537 * pow(T, 2);
    return DoubleUtil.unwindAngle(term1 + term2 - term3);
  }

  /// Calculates the Sun's equation of the center (in degrees).
  static double solarEquationOfTheCenter(double T, double M) {
    final mRad = degreesToRadians(M);
    final term1 = (1.914602 - 0.004817 * T - 0.000014 * pow(T, 2)) * sin(mRad);
    final term2 = (0.019993 - 0.000101 * T) * sin(2 * mRad);
    final term3 = 0.000289 * sin(3 * mRad);
    return term1 + term2 + term3;
  }

  /// Calculates the mean obliquity of the ecliptic (in degrees).
  static double meanObliquityOfTheEcliptic(double T) {
    const term1 = 23.439291;
    final term2 = 0.013004167 * T;
    final term3 = 0.0000001639 * pow(T, 2);
    final term4 = 0.0000005036 * pow(T, 3);
    return term1 - term2 - term3 + term4;
  }

  /// Calculates the apparent obliquity of the ecliptic (in degrees).
  static double apparentObliquityOfTheEcliptic(double T, double epsilonOf0) {
    final omega = 125.04 - 1934.136 * T;
    return epsilonOf0 + 0.00256 * cos(degreesToRadians(omega));
  }

  /// Calculates the mean sidereal time (in degrees).
  static double meanSiderealTime(double T) {
    final jd = T * 36525 + 2451545.0;
    const term1 = 280.46061837;
    final term2 = 360.98564736629 * (jd - 2451545);
    final term3 = 0.000387933 * pow(T, 2);
    final term4 = pow(T, 3) / 38710000;
    return DoubleUtil.unwindAngle(term1 + term2 + term3 - term4);
  }

  /// Calculates nutation in longitude (in degrees).
  static double nutationInLongitude(
    double T,
    double l0,
    double lp,
    double omega,
  ) {
    final term1 = (-17.2 / 3600) * sin(degreesToRadians(omega));
    final term2 = (1.32 / 3600) * sin(2 * degreesToRadians(l0));
    final term3 = (0.23 / 3600) * sin(2 * degreesToRadians(lp));
    final term4 = (0.21 / 3600) * sin(2 * degreesToRadians(omega));
    return term1 - term2 - term3 + term4;
  }

  /// Calculates nutation in obliquity (in degrees).
  static double nutationInObliquity(
    double T,
    double l0,
    double lp,
    double omega,
  ) {
    final term1 = (9.2 / 3600) * cos(degreesToRadians(omega));
    final term2 = (0.57 / 3600) * cos(2 * degreesToRadians(l0));
    final term3 = (0.10 / 3600) * cos(2 * degreesToRadians(lp));
    final term4 = (0.09 / 3600) * cos(2 * degreesToRadians(omega));
    return term1 + term2 + term3 - term4;
  }

  /// Calculates the altitude of a celestial body (in degrees).
  static double altitudeOfCelestialBody(double phi, double delta, double H) {
    final term1 = sin(degreesToRadians(phi)) * sin(degreesToRadians(delta));
    final term2 =
        cos(degreesToRadians(phi)) *
        cos(degreesToRadians(delta)) *
        cos(degreesToRadians(H));
    return radiansToDegrees(asin(term1 + term2));
  }

  /// Calculates the approximate transit time.
  static double approximateTransit(double l, double theta0, double alpha2) {
    return DoubleUtil.normalizeWithBound((alpha2 + (-l) - theta0) / 360, 1);
  }

  /// Calculates the corrected transit time (in hours).
  static double correctedTransit(
    double m0,
    double L,
    double theta0,
    double alpha2,
    double alpha1,
    double alpha3,
  ) {
    final theta = DoubleUtil.unwindAngle(theta0 + 360.985647 * m0);
    final alpha = DoubleUtil.unwindAngle(
      interpolateAngles(alpha2, alpha1, alpha3, m0),
    );
    final H = DoubleUtil.closestAngle(theta - (-L) - alpha);
    return (m0 - H / 360) * 24;
  }

  /// Calculates the corrected hour angle (in hours).
  static double correctedHourAngle(
    double m0,
    double h0,
    Coordinates coordinates,
    bool afterTransit,
    double theta0,
    double alpha2,
    double alpha1,
    double alpha3,
    double delta2,
    double delta1,
    double delta3,
  ) {
    final lw = -coordinates.longitude;
    final term1 =
        sin(degreesToRadians(h0)) -
        sin(degreesToRadians(coordinates.latitude)) *
            sin(degreesToRadians(delta2));
    final term2 =
        cos(degreesToRadians(coordinates.latitude)) *
        cos(degreesToRadians(delta2));
    final newH0 = radiansToDegrees(acos(term1 / term2));
    final m = afterTransit ? m0 + newH0 / 360 : m0 - newH0 / 360;
    final theta = DoubleUtil.unwindAngle(theta0 + 360.985647 * m);
    final alpha = DoubleUtil.unwindAngle(
      interpolateAngles(alpha2, alpha1, alpha3, m),
    );
    final delta = interpolate(delta2, delta1, delta3, m);
    final H = theta - lw - alpha;
    final h = altitudeOfCelestialBody(coordinates.latitude, delta, H);
    final deltaM =
        (h - h0) /
        (360 *
            cos(degreesToRadians(delta)) *
            cos(degreesToRadians(coordinates.latitude)) *
            sin(degreesToRadians(H)));
    return (m + deltaM) * 24;
  }

  /// Interpolates a value based on previous, current, and next values.
  static double interpolate(double y2, double y1, double y3, double n) {
    final a = y2 - y1;
    final b = y3 - y2;
    final c = b - a;
    return y2 + (n / 2) * (a + b + n * c);
  }

  /// Interpolates angles, accounting for angle unwinding.
  static double interpolateAngles(double y2, double y1, double y3, double n) {
    final a = DoubleUtil.unwindAngle(y2 - y1);
    final b = DoubleUtil.unwindAngle(y3 - y2);
    final c = b - a;
    return y2 + (n / 2) * (a + b + n * c);
  }
}
