import 'package:async/async.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:islam_app/my_app/locator.dart';
import 'package:islam_app/services/general/network_info_service.dart';
import 'package:islam_app/utils/constants/database_constant.dart';

class MyAppBloc {
  Future fetchData() {
    return AsyncMemoizer().runOnce(() async {
      await Future.delayed(const Duration(seconds: 2));
      return _initializeEveryThing();
    });
  }

  Future _initializeEveryThing() async {
    WidgetsFlutterBinding.ensureInitialized();

    await Hive.initFlutter();
    await Hive.openBox(DatabaseBoxConstant.userInfo);
    await setupLocator();

    final bool hasConnectivity = await _initInternetConnection();

    if (hasConnectivity) {
      await Firebase.initializeApp();

      await MobileAds.instance.initialize();
      await MobileAds.instance.updateRequestConfiguration(
        RequestConfiguration(
            testDeviceIds: ['33BE2250B43518CCDA7DE426D04EE231']),
      );
    }

    await SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
  }

  Future<bool> _initInternetConnection() async {
    final networkInfoService = locator<NetworkInfoService>();
    networkInfoService.initNetworkConnectionCheck();
    return networkInfoService.checkConnectivityonLunching();
  }
}
