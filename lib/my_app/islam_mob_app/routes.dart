import 'package:flutter/material.dart';
import 'package:islam_app/screens/about_us/about_us_screen.dart';
import 'package:islam_app/screens/about_us/privacy_policy_screen.dart';
import 'package:islam_app/screens/about_us/terms_condition_screen.dart';
import 'package:islam_app/screens/inboarding/inboarding_screen.dart';
import 'package:islam_app/screens/pray_calculation_setting/pray_calculation_setting_screen.dart';
import 'package:islam_app/screens/pray_notification_setting/pray_notification_setting_screen.dart';
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
  static const changeLanguageScreen = 'changeLanguageScreen';
  static const mainContainer = 'mainContainer';
  static const quranScreen = 'quranScreen';
  static const reportOrSuggestionScreen = 'reportOrSuggestionScreen';
  static const quranPagesIndexScreen = 'quranPagesIndexScreen';
  static const quranPrintListScreen = 'quranPrintListScreen';
  static const settingsScreen = 'settingsScreen';
  static const homeScreen = 'homeScreen';
  static const webViewScreen = 'webViewScreen';
  static const aboutUsScreen = 'aboutUsScreen';
  static const termsConditionScreen = 'termsConditionScreen';
  static const privacyPolicyScreen = 'privacyPolicyScreen';
  static const inBoardingScreen = 'inBoardingScreen';
  static const prayNotificationSettingScreen = 'prayNotificationSettingScreen';
  static const prayCalculationSettingScreen = 'prayCalculationSettingScreen';
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
  RoutesConstants.termsConditionScreen: const TermsConditionScreen(),
  RoutesConstants.privacyPolicyScreen: const PrivacyPolicyScreen(),
  RoutesConstants.inBoardingScreen: const InBoardingScreen(),
  RoutesConstants.prayNotificationSettingScreen:
      const PrayNotificationSettingScreen(),
  RoutesConstants.prayCalculationSettingScreen:
      const PrayCalculationSettingScreen(),
};
