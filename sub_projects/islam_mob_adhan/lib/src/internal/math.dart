import 'dart:math';

/// Constant factor to convert an angle from degrees to radians.
const double degreesToRadiansFactor = pi / 180.0;

/// Constant factor to convert an angle from radians to degrees.
const double radiansToDegreesFactor = 180.0 / pi;

/// Converts an angle from radians to degrees.
///
/// - [radians]: The angle in radians.
/// - Returns: The equivalent angle in degrees.
double radiansToDegrees(double radians) => radians * radiansToDegreesFactor;

/// Converts an angle from degrees to radians.
///
/// - [degrees]: The angle in degrees.
/// - Returns: The equivalent angle in radians.
double degreesToRadians(double degrees) => degrees * degreesToRadiansFactor;
