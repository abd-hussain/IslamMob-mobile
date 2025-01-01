import 'package:internet_connection_checkup/core/exceptions.dart';
import 'package:internet_connection_checkup/src/network_info.dart';

class NetworkUseCase {
  static void initialize() {
    NetworkInfoRepository().initNetworkConnectionCheck();
  }

  static Future<bool> checkInternetConeection() async {
    try {
      return await NetworkInfoRepository().checkConnectivityOnLaunch();
    } catch (e) {
      final _ = e as ConnectionException;
      return false;
    }
  }
}
