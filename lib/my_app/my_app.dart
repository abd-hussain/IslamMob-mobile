import 'package:flutter/material.dart';
import 'package:islam_app/my_app/islam_mob_app/islam_mob_app.dart';
import 'package:islam_app/my_app/my_app_bloc.dart';
import 'package:islam_app/presentation/splash/splash_screen.dart';
import 'package:logger_manager/logger_manager.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

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
              LoggerManagerBase.logDebugMessage(
                  message:
                      "Error during app initialization: ${snapshot.error}");
              return const SplashLoadingScreen(); // Optional: Show an error-specific screen here.
            }

            LoggerManagerBase.logDebugMessage(
                message: 'App initialization completed successfully!');
            return const IslamMobApp();
          }

          return const SplashLoadingScreen(); // Default loading screen while initialization is ongoing.
        });
  }
}
