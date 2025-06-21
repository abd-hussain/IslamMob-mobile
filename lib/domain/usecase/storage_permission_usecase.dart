import 'dart:io';

import 'package:device_info_plus/device_info_plus.dart';
import 'package:permission_handler/permission_handler.dart';

/// Use case for managing storage permissions required for Islamic content downloads.
///
/// This class handles storage permission requests needed for downloading and
/// storing Islamic content such as:
/// - **Quran PDF files** for offline reading and study
/// - **Audio files** for Adhan sounds and Quran recitations
/// - **Islamic content** including Hadith collections and prayer guides
/// - **User data** for prayer time settings and Islamic preferences
///
/// The use case provides:
/// - **Platform-specific permission handling** for Android and iOS
/// - **SDK version compatibility** for different Android versions
/// - **Graceful permission management** with proper user experience
/// - **Storage access** for Islamic app functionality
///
/// Storage permissions are essential for the app's offline capabilities,
/// allowing Muslims to access Islamic content without internet connectivity,
/// which is particularly important for prayer times, Quran reading, and
/// Islamic study in areas with limited connectivity.
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
