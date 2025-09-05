import 'package:flutter/material.dart';
import 'package:islam_app/presentation/about_us/about_us_screen.dart';
import 'package:islam_app/presentation/about_us/privacy_policy_screen.dart';
import 'package:islam_app/presentation/about_us/terms_condition_screen.dart';
import 'package:islam_app/presentation/azkar_after_salah/azkar_after_salah_screen.dart';
import 'package:islam_app/presentation/calender/calender_screen.dart';
import 'package:islam_app/presentation/change_language/change_language_screen.dart';
import 'package:islam_app/presentation/change_password/change_password_screen.dart';
import 'package:islam_app/presentation/contacts/contacts_screen.dart';
import 'package:islam_app/presentation/edit_profile/edit_profile_screen.dart';
import 'package:islam_app/presentation/estekara/estekara_screen.dart';
import 'package:islam_app/presentation/feed_tab/feed_screen.dart';
import 'package:islam_app/presentation/forgot_password/forgot_password_screen.dart';
import 'package:islam_app/presentation/forgot_password/forgot_password_success_screen.dart';
import 'package:islam_app/presentation/hajj_omrah/hajj_omrah_details_screen.dart';
import 'package:islam_app/presentation/hajj_omrah/hajj_omrah_screen.dart';
import 'package:islam_app/presentation/hisn_al_muslim/details/hisn_al_muslim_details_screen.dart';
import 'package:islam_app/presentation/hisn_al_muslim/main_list/hisn_al_muslim_list_screen.dart';
import 'package:islam_app/presentation/home_tab/home_screen.dart';
import 'package:islam_app/presentation/inboarding/inboarding_screen.dart';
import 'package:islam_app/presentation/login/manual/manual_login_screen.dart';
import 'package:islam_app/presentation/login/welcome/login_screen.dart';
import 'package:islam_app/presentation/main_container/main_container.dart';
import 'package:islam_app/presentation/pray_calculation_setting/pray_calculation_setting_screen.dart';
import 'package:islam_app/presentation/pray_notification_setting/choose_sound/choose_sound_screen.dart';
import 'package:islam_app/presentation/pray_notification_setting/pray_notification_setting_screen.dart';
import 'package:islam_app/presentation/qibla_finder/qibla_finder_screen.dart';
import 'package:islam_app/presentation/quran_kareem_tab/quran_kareem_screen.dart';
import 'package:islam_app/presentation/quran_pages_index/quran_pages_index_screen.dart';
import 'package:islam_app/presentation/quran_prints/quran_prints_screen.dart';
import 'package:islam_app/presentation/register/register_screen.dart';
import 'package:islam_app/presentation/report_suggestions/report_suggestion_screen.dart';
import 'package:islam_app/presentation/settings_tab/settings_screen.dart';
import 'package:islam_app/presentation/tasbeeh/tasbeeh_screen.dart';
import 'package:islam_app/presentation/web_view/web_view_screen.dart';

/// Constants for all route names used in the Islam Mob application navigation.
///
/// This class provides a centralized location for all route string constants
/// used throughout the Islamic application for navigation between screens.
/// It ensures type safety and consistency in navigation while supporting
/// the comprehensive Islamic feature set including:
/// - **Prayer-related screens** for Islamic worship management
/// - **Quran reading features** with multiple Mushaf support
/// - **Islamic tools** like Qibla finder, Tasbeeh, and Hijri calendar
/// - **Educational content** including Hisn Al-Muslim and Hajj guidance
/// - **App management** screens for settings and user preferences
///
/// Using constants prevents typos in route names and makes navigation
/// management more maintainable across the Islamic application.
class RoutesConstants {
  /// Route for the language selection screen.
  static const changeLanguageScreen = 'changeLanguageScreen';

  /// Route for the main container with bottom navigation.
  static const mainContainer = 'mainContainer';

  /// Route for the Quran reading screen.
  static const quranScreen = 'quranScreen';

  /// Route for the report and suggestion submission screen.
  static const reportOrSuggestionScreen = 'reportOrSuggestionScreen';

  /// Route for the Quran pages index and navigation screen.
  static const quranPagesIndexScreen = 'quranPagesIndexScreen';

  /// Route for the Quran prints selection screen.
  static const quranPrintListScreen = 'quranPrintListScreen';

  /// Route for the app settings screen.
  static const settingsScreen = 'settingsScreen';

  /// Route for the home screen with prayer times.
  static const homeScreen = 'homeScreen';

  /// Route for the web view screen.
  static const webViewScreen = 'webViewScreen';

  /// Route for the about us information screen.
  static const aboutUsScreen = 'aboutUsScreen';

  /// Route for the terms and conditions screen.
  static const termsConditionScreen = 'termsConditionScreen';

  /// Route for the privacy policy screen.
  static const privacyPolicyScreen = 'privacyPolicyScreen';

  /// Route for the app onboarding screen.
  static const inBoardingScreen = 'inBoardingScreen';

  /// Route for the prayer notification settings screen.
  static const prayNotificationSettingScreen = 'prayNotificationSettingScreen';

  /// Route for the prayer calculation settings screen.
  static const prayCalculationSettingScreen = 'prayCalculationSettingScreen';

  /// Route for the Islamic calendar screen.
  static const calenderScreen = 'calenderScreen';

  /// Route for the Qibla direction finder screen.
  static const qiblaFinderScreen = 'qiblaFinderScreen';

  /// Route for the Hisn Al-Muslim supplications list screen.
  static const hisnAlMuslimListScreen = 'hisnAlMuslimListScreen';

  /// Route for the Hisn Al-Muslim supplication details screen.
  static const hisnAlMuslimDetailsScreen = 'hisnAlMuslimDetailsScreen';

  /// Route for the contacts sharing screen.
  static const contactsScreen = 'contactsScreen';

  /// Route for the digital Tasbeeh (prayer beads) screen.
  static const tasbeehScreen = 'tasbeehScreen';

  /// Route for the post-prayer Azkar screen.
  static const azkarAfterSalahScreen = 'azkarAfterSalahScreen';

  /// Route for the Hajj and Omrah guidance main screen.
  static const hajjOmrahScreen = 'hajjOmrahScreen';

  /// Route for the Hajj and Omrah detailed guidance screen.
  static const hajjOmrahDetailsScreen = 'hajjOmrahDetailsScreen';

  /// Route for the Istikhara (guidance prayer) screen.
  static const estekaraScreen = 'estekaraScreen';

  /// Route for the notification sound selection screen.
  static const chooseSoundScreen = 'chooseSoundScreen';

  /// Route for the login screen.
  static const manualLoginScreen = 'manualLoginScreen';

  static const welcomeLoginScreen = 'welcomeLoginScreen';

  /// Route for the register screen.
  static const registerScreen = 'registerScreen';

  /// Route for the forgot password screen.
  static const forgotPasswordScreen = 'forgotPasswordScreen';

  /// Route for the forgot Success password screen.
  static const forgotSuccessPasswordScreen = 'forgotSuccessPasswordScreen';

  /// Route for the change password screen.
  static const changePasswordScreen = 'changePasswordScreen';

  /// Route for the edit profile screen.
  static const editProfileScreen = 'editProfileScreen';

  /// Route for the feed tab screen.
  static const feedTabScreen = 'feedTabScreen';
}

/// Map of route names to their corresponding screen widgets.
///
/// This map provides the complete routing configuration for the Islam Mob
/// application, mapping route string constants to their respective screen
/// widgets. It enables navigation throughout the Islamic application including:
/// - **Prayer and worship screens** for Islamic religious practices
/// - **Quran reading interfaces** with multiple Mushaf support
/// - **Islamic educational tools** and reference materials
/// - **Settings and configuration** screens for user preferences
/// - **Community features** for sharing Islamic content
///
/// The map is used by the navigation system to instantiate the appropriate
/// screen widgets when navigating between different parts of the Islamic
/// application. Each route corresponds to a specific Islamic feature or
/// app management function.
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
  RoutesConstants.hisnAlMuslimListScreen: const HisnAlMuslimListScreen(),
  RoutesConstants.hisnAlMuslimDetailsScreen: const HisnAlMuslimDetailsScreen(),
  RoutesConstants.contactsScreen: const ContactsScreen(),
  RoutesConstants.tasbeehScreen: const TasbeehScreen(),
  RoutesConstants.azkarAfterSalahScreen: const AzkarAfterSalahScreen(),
  RoutesConstants.hajjOmrahScreen: const HajjOmrahScreen(),
  RoutesConstants.hajjOmrahDetailsScreen: const HajjOmrahDetailsScreen(),
  RoutesConstants.estekaraScreen: const EstekaraScreen(),
  RoutesConstants.chooseSoundScreen: const ChooseSoundScreen(),
  RoutesConstants.manualLoginScreen: const ManualLoginScreen(),
  RoutesConstants.welcomeLoginScreen: const WelcomeLoginScreen(),
  RoutesConstants.registerScreen: const RegisterScreen(),
  RoutesConstants.forgotPasswordScreen: const ForgotPasswordScreen(),
  RoutesConstants.forgotSuccessPasswordScreen:
      const ForgotPasswordSuccessScreen(),
  RoutesConstants.changePasswordScreen: const ChangePasswordScreen(),
  RoutesConstants.editProfileScreen: const EditProfileScreen(),
  RoutesConstants.feedTabScreen: const FeedScreen(),
};
