import 'package:islam_app/domain/repository/firebase_analytics.dart';
import 'package:islam_app/domain/usecase/network_usecase.dart';

class LogEventUsecase {
  static logEvent(
      {required String name, Map<String, Object>? parameters}) async {
    try {
      if (await _hasInternetConnectivity()) {
        FirebaseAnalyticsRepository.logEvent(
            name: name, parameters: parameters);
      }
    } catch (e) {
      return;
    }
  }

  /// Checks for internet connectivity during app initialization
  static Future<bool> _hasInternetConnectivity() async {
    return await NetworkUseCase.checkInternetConeection();
  }
}
