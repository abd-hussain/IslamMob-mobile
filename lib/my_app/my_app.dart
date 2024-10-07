import 'package:flutter/material.dart';
import 'package:islam_app/my_app/islam_mob_app/islam_mob_app.dart';
import 'package:islam_app/my_app/my_app_bloc.dart';
import 'package:islam_app/screens/splash/splash_screen.dart';

import 'package:islam_app/utils/logger.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: MyAppBloc().fetchData(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            if (snapshot.hasError) {
              logDebugMessage(message: "fetchData() snapshot error. $snapshot");
            }
            if (snapshot.connectionState == ConnectionState.done) {
              logDebugMessage(message: 'Initialize Firebase Done!!');

              return const IslamMobApp();
            }
          }

          return const SplashLoadingScreen();
        });
  }
}
