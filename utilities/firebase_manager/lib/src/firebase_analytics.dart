import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:internet_connection_checkup/internet_connection_checkup.dart';

/// A repository class for managing Firebase Analytics events and logging.
///
/// This class provides a centralized interface for logging analytics events
/// to Firebase Analytics. It includes built-in internet connectivity checks
/// to ensure events are only sent when a network connection is available,
/// preventing unnecessary errors and improving app performance.
///
/// The repository handles all Firebase Analytics operations with proper
/// error handling and network validation, making it safe to use throughout
/// the application without worrying about connectivity issues.
class FirebaseAnalyticsRepository {
  /// Logs an analytics event to Firebase Analytics.
  ///
  /// This method sends custom events to Firebase Analytics for tracking user
  /// behavior and app usage patterns. It automatically checks for internet
  /// connectivity before attempting to log the event, ensuring reliable operation
  /// even in offline scenarios.
  ///
  /// The method will silently fail if there's no internet connection or if
  /// any error occurs during the logging process, preventing crashes and
  /// maintaining app stability.
  ///
  /// [name] - The name of the event to log (required)
  /// [parameters] - Optional map of additional parameters to include with the event
  ///
  /// Example usage:
  /// ```dart
  /// await FirebaseAnalyticsRepository.logEvent(
  ///   name: 'user_action',
  ///   parameters: {'action_type': 'button_click', 'screen': 'home'},
  /// );
  /// ```
  static Future<void> logEvent(
      {required String name, Map<String, Object>? parameters}) async {
    try {
      if (await _hasInternetConnectivity()) {
        await FirebaseAnalytics.instance
            .logEvent(name: name, parameters: parameters);
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
