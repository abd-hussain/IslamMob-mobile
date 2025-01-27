import 'dart:math';

import 'package:islam_mob_adhan/src/coordinates.dart';
import 'package:islam_mob_adhan/src/internal/astronomical.dart';
import 'package:islam_mob_adhan/src/internal/calendrical_helper.dart';
import 'package:islam_mob_adhan/src/internal/math.dart';
import 'package:islam_mob_adhan/src/internal/shadow_length.dart';
import 'package:islam_mob_adhan/src/internal/solar_coordinates.dart';

/// Represents solar times, including transit, sunrise, sunset, and afternoon calculations.
class SolarTime {
  /// The time of solar transit in hours (from midnight UTC).
  late final double transit;

  /// The time of sunrise in hours (from midnight UTC).
  late final double sunrise;

  /// The time of sunset in hours (from midnight UTC).
  late final double sunset;

  /// The observer's coordinates.
  late final Coordinates observer;

  /// Solar coordinates for today.
  late final SolarCoordinates solar;

  /// Solar coordinates for the previous day.
  late final SolarCoordinates prevSolar;

  /// Solar coordinates for the next day.
  late final SolarCoordinates nextSolar;

  /// The approximate transit time.
  late final double approximateTransit;

  /// Constructs a [SolarTime] instance for the given date and observer's coordinates.
  ///
  /// - [today]: The current date.
  /// - [coordinates]: The geographical coordinates of the observer.
  SolarTime(DateTime today, Coordinates coordinates) {
    final tomorrow = today.add(const Duration(days: 1));
    final yesterday = today.subtract(const Duration(days: 1));

    // Calculate solar coordinates for three consecutive days.
    prevSolar = SolarCoordinates(CalendricalHelper.julianDayByDate(yesterday));
    solar = SolarCoordinates(CalendricalHelper.julianDayByDate(today));
    nextSolar = SolarCoordinates(CalendricalHelper.julianDayByDate(tomorrow));

    // Approximate solar transit.
    approximateTransit = Astronomical.approximateTransit(
      coordinates.longitude,
      solar.apparentSiderealTime,
      solar.rightAscension,
    );

    // Solar altitude for sunrise and sunset.
    const solarAltitude = -50.0 / 60.0;

    observer = coordinates;

    // Calculate precise solar transit.
    transit = Astronomical.correctedTransit(
      approximateTransit,
      coordinates.longitude,
      solar.apparentSiderealTime,
      solar.rightAscension,
      prevSolar.rightAscension,
      nextSolar.rightAscension,
    );

    // Calculate sunrise time.
    sunrise = Astronomical.correctedHourAngle(
      approximateTransit,
      solarAltitude,
      coordinates,
      false,
      solar.apparentSiderealTime,
      solar.rightAscension,
      prevSolar.rightAscension,
      nextSolar.rightAscension,
      solar.declination,
      prevSolar.declination,
      nextSolar.declination,
    );

    // Calculate sunset time.
    sunset = Astronomical.correctedHourAngle(
      approximateTransit,
      solarAltitude,
      coordinates,
      true,
      solar.apparentSiderealTime,
      solar.rightAscension,
      prevSolar.rightAscension,
      nextSolar.rightAscension,
      solar.declination,
      prevSolar.declination,
      nextSolar.declination,
    );
  }

  /// Calculates the hour angle for a given angle.
  ///
  /// - [angle]: The angle in degrees.
  /// - [afterTransit]: `true` if the calculation is for the afternoon; otherwise, `false`.
  /// - Returns: The hour angle in hours.
  double hourAngle(double angle, bool afterTransit) {
    return Astronomical.correctedHourAngle(
      approximateTransit,
      angle,
      observer,
      afterTransit,
      solar.apparentSiderealTime,
      solar.rightAscension,
      prevSolar.rightAscension,
      nextSolar.rightAscension,
      solar.declination,
      prevSolar.declination,
      nextSolar.declination,
    );
  }

  /// Calculates the hours from solar transit for the afternoon based on shadow length.
  ///
  /// - [shadowLength]: The desired shadow length.
  /// - Returns: The time in hours from solar transit.
  double afternoon(ShadowLength shadowLength) {
    final shadowValue = shadowLength.value;
    if (shadowValue <= 0) {
      throw ArgumentError('Shadow length must be greater than zero.');
    }

    // Calculate the tangent of the absolute latitude-declination difference.
    final latitudeDeclinationDifference = (observer.latitude - solar.declination).abs();
    final tangent = tan(degreesToRadians(latitudeDeclinationDifference));

    // Calculate the angle for the given shadow length.
    final inverse = shadowValue + tangent;
    final angle = radiansToDegrees(atan(1.0 / inverse));

    // Calculate the hour angle for the given angle.
    return hourAngle(angle, true);
  }
}
