import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:islam_app/utils/logger.dart';
import 'package:permission_handler/permission_handler.dart';

class FirebaseMessagesRepository {
  final FirebaseMessaging _firebaseMessaging = FirebaseMessaging.instance;

  /// Check if notification permission is granted
  Future<bool> _isNotificationPermissionGranted() async {
    final status = await Permission.notification.status;
    return status.isGranted;
  }

  /// Request notification permission
  Future<bool> _requestNotificationPermission() async {
    final status = await Permission.notification.request();
    if (status.isGranted) {
      logDebugMessage(message: "Notification permission granted.");
      return true;
    } else {
      logDebugMessage(message: "Notification permission denied.");
      return false;
    }
  }

  /// Check and request notification permission
  Future<bool> checkAndRequestPermission() async {
    try {
      final isGranted = await _isNotificationPermissionGranted();
      if (!isGranted) {
        return await _requestNotificationPermission();
      }
      return true;
    } catch (e) {
      logDebugMessage(message: "Error retrieving notification token: $e");
      return false;
    }
  }

  /// Get the FCM token
  Future<String?> getNotificationToken() async {
    try {
      final permissionGranted = await checkAndRequestPermission();
      if (!permissionGranted) {
        logDebugMessage(message: "Notification permission not granted.");
        return null;
      }

      final token = await _firebaseMessaging.getToken();
      if (token != null) {
        logDebugMessage(message: "Notification token retrieved: $token");
      } else {
        logDebugMessage(message: "Failed to retrieve notification token.");
      }
      return token;
    } catch (e) {
      logDebugMessage(message: "Error retrieving notification token: $e");
      return null;
    }
  }
}
