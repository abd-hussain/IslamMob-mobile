import 'package:advertisments_manager/advertisments_manager.dart';
import 'package:async/async.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:internet_connection_checkup/internet_connection_checkup.dart';
import 'package:firebase_manager/firebase_manager.dart';
import 'package:islam_app/my_app/locator.dart';
import 'package:database_manager/database_manager.dart';
import 'package:timezone/data/latest.dart' as tz;

class MyAppBloc {
  final AsyncMemoizer _memoizer = AsyncMemoizer();

  /// Public method to fetch data with memoization
  Future fetchData() => _memoizer.runOnce(_initializeApp);

  /// Initializes the app by setting up dependencies and configurations
  Future<void> _initializeApp() async {
    WidgetsFlutterBinding.ensureInitialized();
    await DataBaseManagerBase.initializeHive();
    await _initializeServices();
    _initializeTimeZones();
    await _initializeFirebaseAndAds();
    await _setPreferredOrientations();
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
    try {
      if (await _hasInternetConnectivity()) {
        await FirebaseManagerBase.initialize();
        await AdvertismentsBase.initializeMobileAds();
      }
    } catch (e) {
      return;
    }
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
    NetworkUseCase.initialize();
    return await NetworkUseCase.checkInternetConeection();
  }
}
