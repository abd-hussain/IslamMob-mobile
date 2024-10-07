import 'package:async/async.dart';
import 'package:flutter/material.dart';
import 'package:islam_app/my_app/islam_mob_app/islam_mob_app.dart';
import 'package:islam_app/my_app/my_app_bloc.dart';
import 'package:islam_app/screens/splash/splash_screen.dart';

import 'package:islam_app/utils/logger.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with WidgetsBindingObserver {
  final AsyncMemoizer _memoizer = AsyncMemoizer();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: MyAppBloc().fetchData(_memoizer),
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
