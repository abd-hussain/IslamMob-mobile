import 'dart:io';

import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher.dart';

/// Use case for opening device settings from the Islam Mob app.
///
/// This class provides cross-platform functionality to open the device's
/// application settings, which is essential for Islamic apps that require
/// specific permissions and configurations:
/// - **Notification permissions** for prayer time alerts and Adhan
/// - **Location permissions** for accurate prayer time calculations
/// - **Background app refresh** for continuous prayer time monitoring
/// - **Sound settings** for Adhan and Islamic reminder notifications
/// - **Storage permissions** for downloading Quran files and Islamic content
///
/// The use case handles platform-specific implementations for both iOS and
/// Android, ensuring users can easily access the necessary settings to
/// configure their device for optimal Islamic app functionality.
///
/// This is particularly important for prayer time accuracy and notification
/// reliability, which are crucial for Islamic religious observance.
class OpenMobileSettingUseCase {
  static const MethodChannel _platform = MethodChannel(
    'com.islammob.app/settings',
  );

  /// Opens the application settings on iOS or Android.
  static Future<void> openAppSettings() async {
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
  static Future<void> _openIosSettings() async {
    const String settingsUrl = 'app-settings:';
    final Uri settingsUri = Uri.parse(settingsUrl);

    if (await canLaunchUrl(settingsUri)) {
      await launchUrl(settingsUri);
    } else {
      throw Exception('Could not open iOS app settings.');
    }
  }

  /// Opens the application settings on Android.
  static Future<void> _openAndroidSettings() async {
    try {
      await _platform.invokeMethod('openAppSettings');
    } on PlatformException catch (e) {
      throw Exception('Error invoking Android settings channel: $e');
    }
  }
}
