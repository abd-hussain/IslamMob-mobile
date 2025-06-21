import 'package:internet_connection_checkup/core/exceptions.dart';
import 'package:internet_connection_checkup/src/network_info.dart';

/// A use case class that provides high-level network connectivity operations.
///
/// This class serves as a facade for network connectivity functionality,
/// providing simple static methods to initialize network monitoring and
/// check internet connectivity status.
class NetworkUseCase {
  /// Initializes network connection monitoring.
  ///
  /// This method sets up real-time monitoring of network connectivity changes.
  /// Call this method once during app initialization to start monitoring
  /// network state changes.
  static void initialize() {
    NetworkInfoRepository().initNetworkConnectionCheck();
  }

  /// Checks if the device has an active internet connection.
  ///
  /// Returns `true` if the device is connected to the internet and can
  /// successfully perform DNS lookups. Returns `false` if there's no
  /// network connection or if internet access is not available.
  ///
  /// This method handles [ConnectionException] internally and returns
  /// `false` in case of any connectivity issues.
  ///
  /// Returns:
  ///   A [Future<bool>] that completes with `true` if internet is available,
  ///   `false` otherwise.
  static Future<bool> checkInternetConeection() async {
    try {
      return await NetworkInfoRepository().checkConnectivityOnLaunch();
    } catch (e) {
      final _ = e as ConnectionException;
      return false;
    }
  }
}
