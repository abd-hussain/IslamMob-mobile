import 'package:flutter/material.dart';
import 'package:islam_app/my_app/islam_mob_app/islam_mob_app.dart';
import 'package:islam_app/my_app/my_app_bloc.dart';
import 'package:islam_app/presentation/splash/splash_screen.dart';
import 'package:logger_manager/logger_manager.dart';

/// Root application widget for the Islam Mob application.
///
/// This widget serves as the entry point for the Islamic application and
/// handles the initial app setup and loading process. It manages:
/// - **App initialization** including Islamic services and dependencies
/// - **Loading state management** with splash screen display
/// - **Error handling** during app startup
/// - **Transition** from loading to main Islamic application
///
/// The widget uses a FutureBuilder to handle asynchronous initialization
/// of Islamic features including prayer time services, notification setup,
/// and other essential Islamic functionality before presenting the main
/// application interface to users.
class MyApp extends StatefulWidget {
  /// Creates the root [MyApp] widget for the Islam Mob application.
  ///
  /// This widget initializes and manages the overall Islamic application
  /// lifecycle, handling setup and transition to the main app interface.
  const MyApp({super.key});

  /// Creates the state for the MyApp widget.
  ///
  /// Returns a [_MyAppState] instance that manages the app initialization
  /// process and handles the transition from splash screen to main app.
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with WidgetsBindingObserver {
  final MyAppBloc _myAppBloc = MyAppBloc();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: _myAppBloc.fetchData(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            if (snapshot.hasError) {
              LoggerManagerBase.logErrorMessage(
                  error: snapshot.error,
                  message: "Error during app initialization");
              return const SplashLoadingScreen(); // Optional: Show an error-specific screen here.
            }

            LoggerManagerBase.logInfo(
                message: 'App initialization completed successfully!');
            return const IslamMobApp();
          }

          return const SplashLoadingScreen(); // Default loading screen while initialization is ongoing.
        });
  }
}
