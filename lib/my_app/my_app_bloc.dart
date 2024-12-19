import 'package:async/async.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:islam_app/my_app/locator.dart';
import 'package:islam_app/domain/repository/network_info.dart';
import 'package:islam_app/core/constants/database_constant.dart';
import 'package:timezone/data/latest.dart' as tz;

class MyAppBloc {
  final AsyncMemoizer _memoizer = AsyncMemoizer();

  /// Public method to fetch data with memoization
  Future fetchData() => _memoizer.runOnce(_initializeApp);

  /// Initializes the app by setting up dependencies and configurations
  Future<void> _initializeApp() async {
    WidgetsFlutterBinding.ensureInitialized();
    await _initializeHive();
    await _initializeServices();
    _initializeTimeZones();
    await _initializeFirebaseAndAds();
    await _setPreferredOrientations();
  }

  /// Initializes Hive and opens required boxes
  Future<void> _initializeHive() async {
    await Hive.initFlutter();
    await Hive.openBox(DatabaseBoxConstant.userInfo);
  }

  /// Sets up dependency injection locator
  Future<void> _initializeServices() async {
    await setupLocator();
  }

  /// Initializes timezone data
  void _initializeTimeZones() {
    tz.initializeTimeZones();
  }

  /// Initializes Firebase and Mobile Ads if the device has internet connectivity
  Future<void> _initializeFirebaseAndAds() async {
    if (await _hasInternetConnectivity()) {
      await _initializeFirebase();
      await _initializeMobileAds();
    }
  }

  /// Initializes Firebase
  Future<void> _initializeFirebase() async {
    await Firebase.initializeApp();

    if (!kDebugMode) {
      FirebaseAnalytics.instance.setAnalyticsCollectionEnabled(true);
    }
  }

  /// Initializes Google Mobile Ads
  Future<void> _initializeMobileAds() async {
    await MobileAds.instance.initialize();
    await MobileAds.instance.updateRequestConfiguration(
      RequestConfiguration(testDeviceIds: ['33BE2250B43518CCDA7DE426D04EE231']),
    );
  }

  /// Sets the preferred screen orientations for the app
  Future<void> _setPreferredOrientations() async {
    await SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
  }

  /// Checks for internet connectivity during app initialization
  Future<bool> _hasInternetConnectivity() async {
    final networkInfoService = locator<NetworkInfoRepository>();
    networkInfoService.initNetworkConnectionCheck();
    return networkInfoService.checkConnectivityOnLaunch();
  }
}
