import 'package:flutter/material.dart';
import 'package:islam_app/screens/change_language/change_language_screen.dart';
import 'package:islam_app/screens/initial/initial_screen.dart';
import 'package:islam_app/screens/main_container/main_container.dart';
import 'package:islam_app/screens/quran_list_prints/quran_list_prints_screen.dart';
import 'package:islam_app/screens/quran_pages_list/quran_pages_list_screen.dart';
import 'package:islam_app/screens/quran_parts_list/quran_parts_list_screen.dart';
import 'package:islam_app/screens/report_suggestions/report_suggestion_screen.dart';
import 'package:islam_app/screens/quran_kareem_tab/quran_kareem_screen.dart';

class RoutesConstants {
  static const String initialRoute = 'initScreen';
  static const String changeLanguageScreen = 'changeLanguageScreen';
  static const String mainContainer = 'mainContainer';
  static const String quranScreen = 'quranScreen';
  static const String reportOrSuggestionScreen = 'reportOrSuggestionScreen';
  static const String quranPagesListScreen = 'quranPagesListScreen';
  static const String quranPartsListScreen = 'quranPartsListScreen';
  static const String quranPrintListScreen = 'quranPrintListScreen';
}

final Map<String, Widget> routes = {
  RoutesConstants.initialRoute: const InitialScreen(),
  RoutesConstants.changeLanguageScreen: const ChangeLanguageScreen(),
  RoutesConstants.mainContainer: const MainContainer(),
  RoutesConstants.quranScreen: const QuranKareemScreen(),
  RoutesConstants.reportOrSuggestionScreen: const ReportOrSuggestionScreen(),
  RoutesConstants.quranPagesListScreen: const QuranPagesListScreen(),
  RoutesConstants.quranPartsListScreen: const QuranPartsListScreen(),
  RoutesConstants.quranPrintListScreen: const QuranListPrintsScreen(),
};
