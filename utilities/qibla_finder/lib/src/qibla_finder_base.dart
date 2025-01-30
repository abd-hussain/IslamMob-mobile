import 'dart:async';
import 'dart:io';

import 'package:flutter/services.dart';
import 'package:flutter_compass_v2/flutter_compass_v2.dart';
import 'package:geolocator/geolocator.dart';
import 'package:qibla_finder/src/utils.dart';
import 'package:stream_transform/stream_transform.dart' show CombineLatest;

/// A singleton that manages Qiblah direction calculations.
///
/// Exposes:
///  - A method to check device sensor support on Android.
///  - A method to request location permissions.
///  - A method to check if location services are enabled & permission status.
///  - A stream that merges compass data with location data, providing
///    real-time Qiblah direction.
class QiblahFinder {
  static const MethodChannel _channel =
      MethodChannel('ml.medyas.flutter_qiblah');

  // Singleton instance
  static final QiblahFinder _instance = QiblahFinder._internal();

  // Factory constructor returning the same instance
  factory QiblahFinder() => _instance;

  // Private constructor
  QiblahFinder._internal();

  // Internal reference to QiblahDirection stream
  Stream<QiblahDirection>? _qiblahStream;

  /// Check whether the current Android device supports the required sensors.
  ///
  /// On Android, calls a native method. On other platforms, returns [ true ].
  static Future<bool?> androidDeviceSensorSupport() async {
    if (Platform.isAndroid) {
      return _channel.invokeMethod<bool>('androidSupportSensor');
    } else {
      return true;
    }
  }

  /// Request location permission from the user.
  ///
  /// Returns [LocationPermission], which indicates if permission was granted.
  static Future<LocationPermission> requestPermissions() {
    return Geolocator.requestPermission();
  }

  /// Checks if location services are enabled and retrieves the current
  /// [LocationPermission] status.
  static Future<LocationStatus> checkLocationStatus() async {
    final status = await Geolocator.checkPermission();
    final enabled = await Geolocator.isLocationServiceEnabled();
    return LocationStatus(enabled, status);
  }

  /// Provides a stream of [QiblahDirection].
  ///
  /// This stream merges:
  ///  - The compass heading (0-360, where 0 = north),
  ///  - The device’s current [Position].
  ///
  /// It computes:
  ///  - The offset from north to the Kaaba,
  ///  - The Qiblah direction combining heading + offset.
  static Stream<QiblahDirection> get qiblahStream {
    // If stream is not already created, create it
    _instance._qiblahStream ??= _combineCompassAndLocation(
      FlutterCompass.events!,
      // If you only need one location fix, you can keep the sink.close().
      // Otherwise, remove sink.close() to continue receiving location changes.
      Geolocator.getPositionStream().transform(
        StreamTransformer<Position, Position>.fromHandlers(
          handleData: (position, sink) {
            sink.add(position);
            // sink.close(); // Comment out to allow continuous location updates
          },
        ),
      ),
    );

    return _instance._qiblahStream!;
  }

  /// Merges the [CompassEvent] stream with the [Position] stream
  /// and calculates Qiblah direction on each update.
  static Stream<QiblahDirection> _combineCompassAndLocation(
    Stream<CompassEvent> compassStream,
    Stream<Position> positionStream,
  ) {
    return compassStream.combineLatest<Position, QiblahDirection>(
      positionStream,
      (compassEvent, position) {
        final int heading = (compassEvent.heading ?? 0.0).toInt();

        // Calculate the offset from North to Kaaba (0-360)
        final offset = Utils.getOffsetFromNorth(
          position.latitude,
          position.longitude,
        ).toInt();

        // The final Qiblah direction from the device heading.
        // Example usage: rotate your widget by -(qiblahDirection.qiblah) in radians
        final qiblah = heading + (360 - offset);

        return QiblahDirection(
          qiblah: qiblah,
          direction: heading,
          offset: offset,
        );
      },
    );
  }

  /// Call this to dispose the internal Qiblah stream reference.
  ///
  /// The next call to [qiblahStream] re-creates the stream from scratch.
  void dispose() {
    _qiblahStream = null;
  }
}

/// Represents whether location services are enabled and the current
/// [LocationPermission] status.
class LocationStatus {
  final bool enabled;
  final LocationPermission status;

  const LocationStatus(this.enabled, this.status);
}

/// Holds the Qiblah direction and related angles.
///
/// [qiblah]    - The Qiblah angle from north in degrees
/// [direction] - The device’s heading in degrees (0 = north)
/// [offset]    - The offset from the user’s location to Kaaba in degrees (0-360)
class QiblahDirection {
  final int qiblah;
  final int direction;
  final int offset;

  const QiblahDirection({
    required this.qiblah,
    required this.direction,
    required this.offset,
  });
}
