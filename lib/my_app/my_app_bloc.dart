import 'package:advertisments_manager/advertisments_manager.dart';
import 'package:async/async.dart';
import 'package:database_manager/database_manager.dart';
import 'package:firebase_manager/firebase_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:internet_connection_checkup/internet_connection_checkup.dart';
import 'package:islam_app/my_app/locator.dart';
import 'package:timezone/data/latest.dart' as tz;

/// BLoC for managing the Islam Mob application initialization and setup.
///
/// This class handles the comprehensive initialization process for the Islamic
/// application, ensuring all necessary services and configurations are properly
/// set up before the main app interface is presented to users. It manages:
/// - **Database initialization** for storing Islamic preferences and data
/// - **Service locator setup** for dependency injection
/// - **Firebase integration** for analytics and remote features
/// - **Advertisement services** for app sustainability
/// - **Timezone configuration** for accurate prayer time calculations
/// - **Device orientation** settings for optimal Islamic content display
/// - **Network connectivity** checks for online features
///
/// The initialization process is memoized to ensure it runs only once during
/// the app lifecycle, providing efficient startup performance while ensuring
/// all Islamic features are properly configured for user interaction.
class MyAppBloc {
  final AsyncMemoizer<dynamic> _memoizer = AsyncMemoizer();

  /// Public method to fetch data with memoization
  Future<dynamic> fetchData() => _memoizer.runOnce(_initializeApp);

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
    return NetworkUseCase.checkInternetConeection();
  }
}
