import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:internet_connection_checkup/internet_connection_checkup.dart';

class FirebaseAnalyticsRepository {
  static Future<void> logEvent({required String name, Map<String, Object>? parameters}) async {
    try {
      if (await _hasInternetConnectivity()) {
        await FirebaseAnalytics.instance.logEvent(name: name, parameters: parameters);
      }
    } catch (e) {
      return;
    }
  }

  /// Checks for internet connectivity during app initialization
  static Future<bool> _hasInternetConnectivity() async {
    return NetworkUseCase.checkInternetConeection();
  }
}
