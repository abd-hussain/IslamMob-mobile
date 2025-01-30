import 'package:flutter/material.dart';
import 'package:islam_app/presentation/about_us/about_us_screen.dart';
import 'package:islam_app/presentation/about_us/privacy_policy_screen.dart';
import 'package:islam_app/presentation/about_us/terms_condition_screen.dart';
import 'package:islam_app/presentation/calender/calender_screen.dart';
import 'package:islam_app/presentation/change_language/change_language_screen.dart';
import 'package:islam_app/presentation/home_tab/home_screen.dart';
import 'package:islam_app/presentation/inboarding/inboarding_screen.dart';
import 'package:islam_app/presentation/main_container/main_container.dart';
import 'package:islam_app/presentation/pray_calculation_setting/pray_calculation_setting_screen.dart';
import 'package:islam_app/presentation/pray_notification_setting/pray_notification_setting_screen.dart';
import 'package:islam_app/presentation/qibla_finder/qibla_finder_screen.dart';
import 'package:islam_app/presentation/quran_kareem_tab/quran_kareem_screen.dart';
import 'package:islam_app/presentation/quran_pages_index/quran_pages_index_screen.dart';
import 'package:islam_app/presentation/quran_prints/quran_prints_screen.dart';
import 'package:islam_app/presentation/report_suggestions/report_suggestion_screen.dart';
import 'package:islam_app/presentation/settings_tab/settings_screen.dart';
import 'package:islam_app/presentation/web_view/web_view_screen.dart';

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
  static const calenderScreen = 'calenderScreen';
  static const qiblaFinderScreen = 'qiblaFinderScreen';
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
  RoutesConstants.calenderScreen: const CalenderScreen(),
  RoutesConstants.qiblaFinderScreen: const QiblaFinderScreen(),
};
