import 'dart:async';
import 'dart:io';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:islam_app/utils/exceptions.dart';

class NetworkInfoService {
  StreamController<bool> networkStateStreamControler = StreamController.broadcast();
  Connectivity connectivity = Connectivity();

  void initNetworkConnectionCheck() {
    connectivity.onConnectivityChanged.distinct((previous, next) {
      return previous != next;
    }).listen((event) {
      final isConnected = event == ConnectivityResult.mobile || event == ConnectivityResult.wifi;
      networkStateStreamControler.sink.add(isConnected);
    });
  }

  Future<bool> checkConnectivityonLunching() async {
    final ConnectivityResult connectivityResult = await connectivity.checkConnectivity();

    if (_isConnected(connectivityResult)) {
      final result = await _internetLookupCheck();
      networkStateStreamControler.sink.add(result);
      return result;
    } else {
      networkStateStreamControler.sink.add(false);
      throw ConnectionException(message: 'No Internet Connection');
    }
  }

  bool _isConnected(ConnectivityResult result) {
    return result == ConnectivityResult.mobile ||
        result == ConnectivityResult.wifi ||
        result == ConnectivityResult.ethernet ||
        result == ConnectivityResult.vpn ||
        result == ConnectivityResult.other;
  }

  Future<bool> _internetLookupCheck() async {
    try {
      final value = await _lookup('google.com');

      if (value.isNotEmpty && value[0].rawAddress.isNotEmpty) {
        return true;
      } else {
        return false;
      }
    } catch (e) {
      return false;
    }
  }

  Future<List<InternetAddress>> _lookup(String host) async {
    return InternetAddress.lookup(host);
  }
}
