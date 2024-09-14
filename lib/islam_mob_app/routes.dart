import 'package:flutter/material.dart';
import 'package:islam_app/screens/initial/initial_screen.dart';
import 'package:islam_app/screens/main_container/main_container.dart';
import 'package:islam_app/screens/tabs/quran_kareem/quran_kareem_screen.dart';

class RoutesConstants {
  static const String initialRoute = 'initScreen';
  static const String mainContainer = 'mainContainer';
  static const String quranScreen = 'quranScreen';
}

final Map<String, Widget> routes = {
  RoutesConstants.initialRoute: const InitialScreen(),
  RoutesConstants.mainContainer: const MainContainer(),
  RoutesConstants.quranScreen: const QuranKareemScreen(),
};
