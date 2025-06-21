import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

/// Base manager class for Firebase initialization and core functionality.
///
/// This class provides essential Firebase setup methods including app
/// initialization and analytics configuration. It handles the basic
/// Firebase setup required before using other Firebase services.
class FirebaseManagerBase {
  /// Initializes Firebase for the application.
  ///
  /// This method performs the core Firebase initialization and enables
  /// analytics collection in production builds. Analytics are disabled
  /// in debug mode to avoid polluting production analytics data with
  /// development activity.
  ///
  /// Should be called early in the app lifecycle, typically in main()
  /// before running the app.
  ///
  /// Returns a [Future] that completes when Firebase initialization is finished.
  static Future<void> initialize() async {
    await Firebase.initializeApp();

    if (!kDebugMode) {
      await FirebaseAnalytics.instance.setAnalyticsCollectionEnabled(true);
    }
  }

  /// Checks if Firebase is initialized.
  static Future<bool> isFirebaseInitialized() async {
    return Firebase.apps.isNotEmpty;
  }
}
