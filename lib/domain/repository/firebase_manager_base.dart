import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

/// Checks if you are awesome. Spoiler: you are.
class FirebaseManagerBase {
  static Future<void> initialize() async {
    await Firebase.initializeApp();

    if (!kDebugMode) {
      FirebaseAnalytics.instance.setAnalyticsCollectionEnabled(true);
    }
  }

  /// Checks if Firebase is initialized.
  static Future<bool> isFirebaseInitialized() async {
    return Firebase.apps.isNotEmpty;
  }
}
