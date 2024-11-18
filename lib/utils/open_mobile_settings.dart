import 'dart:io';
import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher.dart';

class OpenMobileSettings {
  Future<void> openAppSettings() async {
    try {
      if (Platform.isIOS) {
        const settingsUrl = 'app-settings:';
        if (await canLaunchUrl(Uri.parse(settingsUrl))) {
          await launchUrl(Uri.parse(settingsUrl));
        } else {
          throw 'Could not open app settings.';
        }
      } else if (Platform.isAndroid) {
        const platform = MethodChannel('com.islammob.app/settings');
        await platform.invokeMethod('openAppSettings');
      }
    } catch (e) {
      throw 'Error opening app settings: $e';
    }
  }
}
