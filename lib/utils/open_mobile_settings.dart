import 'dart:io';
import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher.dart';

class OpenMobileSettings {
  static const MethodChannel _platform =
      MethodChannel('com.islammob.app/settings');

  /// Opens the application settings on iOS or Android.
  Future<void> openAppSettings() async {
    try {
      if (Platform.isIOS) {
        await _openIosSettings();
      } else if (Platform.isAndroid) {
        await _openAndroidSettings();
      } else {
        throw UnsupportedError('Unsupported platform');
      }
    } catch (e) {
      throw Exception('Error opening app settings: $e');
    }
  }

  /// Opens the application settings on iOS.
  Future<void> _openIosSettings() async {
    const String settingsUrl = 'app-settings:';
    final Uri settingsUri = Uri.parse(settingsUrl);

    if (await canLaunchUrl(settingsUri)) {
      await launchUrl(settingsUri);
    } else {
      throw Exception('Could not open iOS app settings.');
    }
  }

  /// Opens the application settings on Android.
  Future<void> _openAndroidSettings() async {
    try {
      await _platform.invokeMethod('openAppSettings');
    } on PlatformException catch (e) {
      throw Exception('Error invoking Android settings channel: $e');
    }
  }
}
