import 'dart:async';
import 'dart:io';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:internet_connection_checkup/core/exceptions.dart';

class NetworkInfoRepository {
  final StreamController<bool> _networkStateController = StreamController<bool>.broadcast();
  final Connectivity _connectivity = Connectivity();

  /// Initializes network connection monitoring.
  void initNetworkConnectionCheck() {
    _connectivity.onConnectivityChanged.listen((event) {
      final isConnected = _isConnected(event);
      _networkStateController.sink.add(isConnected);
    });
  }

  /// Checks network connectivity on app launch.
  Future<bool> checkConnectivityOnLaunch() async {
    final connectivityResult = await _connectivity.checkConnectivity();
    if (_isConnected(connectivityResult)) {
      final isInternetAvailable = await _internetLookupCheck();
      _networkStateController.sink.add(isInternetAvailable);
      return isInternetAvailable;
    } else {
      _networkStateController.sink.add(false);
      throw ConnectionException(message: 'No Internet Connection');
    }
  }

  /// Determines if a given connectivity result indicates an active connection.
  bool _isConnected(List<ConnectivityResult> result) {
    return result.contains(ConnectivityResult.mobile) ||
        result.contains(ConnectivityResult.wifi) ||
        result.contains(ConnectivityResult.ethernet) ||
        result.contains(ConnectivityResult.vpn) ||
        result.contains(ConnectivityResult.other);
  }

  /// Performs an Internet lookup check to confirm connectivity.
  Future<bool> _internetLookupCheck() async {
    try {
      final lookupResult = await InternetAddress.lookup('google.com');
      return lookupResult.isNotEmpty && lookupResult.first.rawAddress.isNotEmpty;
    } catch (_) {
      return false;
    }
  }

  /// A stream providing real-time network state updates.
  Stream<bool> get networkStateStream => _networkStateController.stream;

  /// Disposes of resources used by the service.
  void dispose() {
    _networkStateController.close();
  }
}
