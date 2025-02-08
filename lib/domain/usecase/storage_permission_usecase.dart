import 'dart:io';

import 'package:device_info_plus/device_info_plus.dart';
import 'package:permission_handler/permission_handler.dart';

class StoragePermissionUseCase {
  /// Requests storage permission based on platform and device SDK.
  static Future<bool> requestStoragePermission() async {
    final plugin = DeviceInfoPlugin();
    PermissionStatus? storageStatus;

    if (Platform.isAndroid) {
      final androidInfo = await plugin.androidInfo;
      storageStatus = androidInfo.version.sdkInt < 33
          ? await Permission.storage.request()
          : PermissionStatus.granted;
    } else {
      storageStatus = await Permission.storage.request();
    }

    return storageStatus.isGranted;
  }
}
