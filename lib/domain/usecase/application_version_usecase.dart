import 'package:package_info_plus/package_info_plus.dart';

/// Use case for retrieving application version information.
///
/// This class provides functionality to access the current version of the
/// Islam Mob application. Version information is essential for:
/// - **Update notifications** to inform users about new features
/// - **Compatibility checks** with backend services and APIs
/// - **Support and debugging** to identify user's app version
/// - **Feature availability** based on version requirements
/// - **Analytics and tracking** for version adoption metrics
///
/// The version information helps ensure users have access to the latest
/// Islamic features, prayer time calculation improvements, and security
/// updates while maintaining compatibility across different app versions.
class ApplicationVersionUsecase {
  /// Retrieves the current application version string.
  ///
  /// This method accesses the app's package information to get the version
  /// number as defined in the app's configuration (pubspec.yaml for Flutter).
  /// The version string typically follows semantic versioning format (e.g., "1.2.3").
  ///
  /// The version information is useful for:
  /// - Displaying current version in app settings
  /// - Sending version info to support services
  /// - Checking compatibility with remote services
  /// - Analytics and crash reporting
  /// - Update availability checks
  ///
  /// Returns a [Future<String>] containing the application version.
  /// The format is typically "major.minor.patch" (e.g., "2.1.0").
  ///
  /// Example:
  /// ```dart
  /// final versionUsecase = ApplicationVersionUsecase();
  /// final version = await versionUsecase.getApplicationVersion();
  /// print('Current app version: $version'); // e.g., "2.1.0"
  /// ```
  Future<String> getApplicationVersion() async {
    final packageInfo = await PackageInfo.fromPlatform();
    return packageInfo.version;
  }
}
