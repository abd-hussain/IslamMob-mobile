import 'dart:async';
import 'dart:io';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:internet_connection_checkup/core/exceptions.dart';

/// A repository for managing network connectivity information and monitoring.
///
/// This class provides functionality to:
/// - Monitor real-time network connectivity changes
/// - Check internet connectivity on app launch
/// - Verify actual internet access (not just network connection)
/// - Provide a stream of network state updates
///
/// The repository distinguishes between being connected to a network
/// (WiFi, mobile, etc.) and having actual internet access by performing
/// DNS lookups to verify connectivity.
class NetworkInfoRepository {
  final StreamController<bool> _networkStateController =
      StreamController<bool>.broadcast();
  final Connectivity _connectivity = Connectivity();
  StreamSubscription<List<ConnectivityResult>>? _connectivitySubscription;

  /// Initializes network connection monitoring.
  void initNetworkConnectionCheck() {
    // Cancel any existing subscription before starting a new one
    _connectivitySubscription?.cancel();

    _connectivitySubscription =
        _connectivity.onConnectivityChanged.listen((event) async {
      final isConnected = _isConnected(event);
      final hasInternet = isConnected ? await _internetLookupCheck() : false;
      _networkStateController.sink.add(hasInternet);
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
      return lookupResult.isNotEmpty &&
          lookupResult.first.rawAddress.isNotEmpty;
    } catch (_) {
      return false;
    }
  }

  /// A stream providing real-time network state updates.
  Stream<bool> get networkStateStream => _networkStateController.stream;

  /// Disposes of resources used by the service.
  void dispose() {
    _connectivitySubscription?.cancel();
    _networkStateController.close();
  }
}
