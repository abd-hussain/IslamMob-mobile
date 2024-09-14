import 'package:flutter/material.dart';
import 'package:islam_app/islam_mob_app/islam_mob_app.dart';
import 'package:islam_app/my_app/my_app_bloc.dart';
import 'package:islam_app/screens/splash/splash_screen.dart';
import 'package:islam_app/utils/constants/database_constant.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:islam_app/utils/logger.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late Box myBox = Hive.box(DatabaseBoxConstant.userInfo);

  final _bloc = MyAppBloc();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: _bloc.fetchData(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            if (snapshot.hasError) {
              logDebugMessage(message: "fetchData() snapshot error. $snapshot");
            }
            if (snapshot.connectionState == ConnectionState.done) {
              logDebugMessage(message: 'Initialize Firebase Done!!');

              return IslamMobApp(
                //   navigatorKey: widget.navigatorKey,
                hasConnectivity: _bloc.hasConnectivity,
              );
            }
          }

          return const SplashLoadingScreen();
        });
  }
}
