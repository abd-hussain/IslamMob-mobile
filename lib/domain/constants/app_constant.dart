/// A class containing application-wide constants for the Islam Mob app.
///
/// This class provides centralized access to important app constants including:
/// - App identification and branding information
/// - Web view navigation parameter keys
/// - Platform-specific app store links and identifiers
/// - External URL references for app distribution
///
/// All constants are static and immutable, ensuring consistent values
/// throughout the application lifecycle.
class AppConstant {
  /// The official name of the Islam Mob application.
  ///
  /// This constant is used for display purposes in UI elements,
  /// notifications, and anywhere the app name needs to be shown.
  static const String appName = 'Islam Mob';

  /// Parameter key for passing web view URLs through navigation arguments.
  ///
  /// Used when navigating to web view screens to specify which URL
  /// should be loaded in the web view component.
  static const String webViewPageUrl = 'webViewPageUrl';

  /// Parameter key for passing page titles through navigation arguments.
  ///
  /// Used when navigating to web view screens to specify the title
  /// that should be displayed in the app bar or page header.
  static const String pageTitle = 'pageTitle';

  /// Direct link to the Islam Mob app on the Google Play Store.
  ///
  /// This URL is used for:
  /// - App sharing functionality
  /// - Directing users to download or rate the app
  /// - Update notifications and prompts
  /// - External marketing and promotional materials
  static const String androidAppLink =
      'https://play.google.com/store/apps/details?id=com.islammob.app';

  /// Direct link to the Islam Mob app on the Apple App Store.
  ///
  /// This URL is used for:
  /// - App sharing functionality on iOS devices
  /// - Directing users to download or rate the app
  /// - Update notifications and prompts
  /// - External marketing and promotional materials
  static const String iOSAppLink = 'https://apps.apple.com/app/id6670502375';

  /// The unique App Store identifier for the iOS version of Islam Mob.
  ///
  /// This ID is used for:
  /// - App Store API calls and integrations
  /// - Analytics and tracking services
  /// - In-app review and rating prompts
  /// - App Store Connect integrations
  static const iOSAppId = '6670502375';

  /// The unique package identifier for the Android version of Islam Mob.
  ///
  /// This package name is used for:
  /// - Google Play Store API calls and integrations
  /// - Analytics and tracking services
  /// - In-app review and rating prompts
  /// - Google Play Console integrations
  /// - Deep linking and app identification
  static const androidAppId = 'com.islammob.app';
}
