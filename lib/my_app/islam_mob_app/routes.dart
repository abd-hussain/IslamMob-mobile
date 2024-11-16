import 'package:flutter/material.dart';
import 'package:islam_app/screens/about_us/about_us_screen.dart';
import 'package:islam_app/screens/about_us/privacy_policy_screen.dart';
import 'package:islam_app/screens/about_us/terms_condition_screen.dart';
import 'package:islam_app/screens/inboarding/inboarding_screen.dart';
import 'package:islam_app/screens/quran_pages_index/quran_pages_index_screen.dart';
import 'package:islam_app/screens/quran_prints/quran_prints_screen.dart';
import 'package:islam_app/screens/select_change_language/change_language_screen.dart';
import 'package:islam_app/screens/home_tab/home_screen.dart';
import 'package:islam_app/screens/main_container/main_container.dart';
import 'package:islam_app/screens/report_suggestions/report_suggestion_screen.dart';
import 'package:islam_app/screens/quran_kareem_tab/quran_kareem_screen.dart';
import 'package:islam_app/screens/settings_tab/settings_screen.dart';
import 'package:islam_app/screens/web_view/web_view_screen.dart';

class RoutesConstants {
  static const String changeLanguageScreen = 'changeLanguageScreen';
  static const String mainContainer = 'mainContainer';
  static const String quranScreen = 'quranScreen';
  static const String reportOrSuggestionScreen = 'reportOrSuggestionScreen';
  static const String quranPagesIndexScreen = 'quranPagesIndexScreen';
  static const String quranPrintListScreen = 'quranPrintListScreen';
  static const String settingsScreen = 'settingsScreen';
  static const String homeScreen = 'homeScreen';
  static const String webViewScreen = 'webViewScreen';
  static const String aboutUsScreen = 'aboutUsScreen';
  static const String termsconditionScreen = 'termsconditionScreen';
  static const String privacypolicyScreen = 'privacypolicyScreen';
  static const String inBoardingScreen = 'inBoardingScreen';
}

final Map<String, Widget> routes = {
  RoutesConstants.changeLanguageScreen: const ChangeLanguageScreen(),
  RoutesConstants.mainContainer: const MainContainer(),
  RoutesConstants.quranScreen: const QuranKareemScreen(),
  RoutesConstants.reportOrSuggestionScreen: const ReportOrSuggestionScreen(),
  RoutesConstants.quranPagesIndexScreen: const QuranPagesIndexScreen(),
  RoutesConstants.quranPrintListScreen: const QuranPrintsScreen(),
  RoutesConstants.settingsScreen: const SettingsScreen(),
  RoutesConstants.homeScreen: const HomeScreen(),
  RoutesConstants.webViewScreen: const WebViewScreen(),
  RoutesConstants.aboutUsScreen: const AboutUsScreen(),
  RoutesConstants.termsconditionScreen: const TermsConditionScreen(),
  RoutesConstants.privacypolicyScreen: const PrivacyPolicyScreen(),
  RoutesConstants.inBoardingScreen: const InBoardingScreen(),
};
