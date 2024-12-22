import 'package:firebase_analytics/firebase_analytics.dart';

class FirebaseAnalyticsRepository {
  /// Check if notification permission is granted
  static void logEvent(
      {required String name, Map<String, Object>? parameters}) {
    FirebaseAnalytics.instance.logEvent(name: name, parameters: parameters);
  }
}
