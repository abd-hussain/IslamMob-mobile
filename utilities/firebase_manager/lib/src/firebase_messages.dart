import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:logger_manager/logger_manager.dart';
import 'package:permission_handler/permission_handler.dart';

class FirebaseMessagesRepository {
  final FirebaseMessaging _firebaseMessaging = FirebaseMessaging.instance;

  /// Check if notification permission is granted
  static Future<bool> _isNotificationPermissionGranted() async {
    final status = await Permission.notification.status;
    return status.isGranted;
  }

  /// Request notification permission
  static Future<bool> _requestNotificationPermission() async {
    final status = await Permission.notification.request();
    if (status.isGranted) {
      LoggerManagerBase.logDebugMessage(message: "Notification permission granted.");
      return true;
    } else {
      LoggerManagerBase.logDebugMessage(message: "Notification permission denied.");
      return false;
    }
  }

  /// Checks if Firebase is initialized.
  static Future<bool> _isFirebaseInitialized() async {
    return Firebase.apps.isNotEmpty;
  }

  /// Check and request notification permission
  static Future<bool> checkAndRequestPermission() async {
    try {
      if (!await _isFirebaseInitialized()) {
        await Firebase.initializeApp();
      }
      final isGranted = await _isNotificationPermissionGranted();
      if (!isGranted) {
        return await _requestNotificationPermission();
      }
      return true;
    } catch (e) {
      LoggerManagerBase.logDebugMessage(message: "Error retrieving notification token: $e");
      return false;
    }
  }

  /// Get the FCM token
  Future<String?> getNotificationToken() async {
    try {
      final permissionGranted = await checkAndRequestPermission();
      if (!permissionGranted) {
        LoggerManagerBase.logDebugMessage(message: "Notification permission not granted.");
        return null;
      }

      final token = await _firebaseMessaging.getToken();
      if (token != null) {
        LoggerManagerBase.logDebugMessage(message: "Notification token retrieved: $token");
      } else {
        LoggerManagerBase.logDebugMessage(message: "Failed to retrieve notification token.");
      }
      return token;
    } catch (e) {
      LoggerManagerBase.logDebugMessage(message: "Error retrieving notification token: $e");
      return null;
    }
  }
}
