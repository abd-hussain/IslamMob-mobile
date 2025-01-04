import 'package:flutter/material.dart';
import 'package:islam_app/domain/repository/network_info.dart';
import 'package:islam_app/my_app/locator.dart';
import 'package:islam_app/utils/exceptions.dart';

class NetworkUseCase {
  static void initialize() {
    locator<NetworkInfoRepository>().initNetworkConnectionCheck();
  }

  static Future<bool> checkInternetConeection() async {
    try {
      return await locator<NetworkInfoRepository>().checkConnectivityOnLaunch();
    } catch (e) {
      final error = e as ConnectionException;
      debugPrint(error.message);
      return false;
    }
  }
}
