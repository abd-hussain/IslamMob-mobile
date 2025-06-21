import 'package:freezed_annotation/freezed_annotation.dart';

part 'version.freezed.dart';
part 'version.g.dart';

/// A model representing app version information for update management.
///
/// This immutable data class encapsulates version control information used
/// to manage app updates and compatibility. It helps ensure users have
/// access to the latest Islamic features and security updates while
/// maintaining compatibility with older devices.
///
/// The model includes:
/// - **Latest version information** for update notifications
/// - **Minimum supported version** for compatibility enforcement
/// - **JSON serialization support** for API integration
///
/// Version management is important for Islamic apps to ensure:
/// - Users receive the latest prayer time calculation improvements
/// - Security updates for sensitive religious data
/// - New Islamic features and content updates
/// - Compatibility with various device capabilities
///
/// The version checking helps maintain a consistent and secure experience
/// for all users of the Islam Mob application.
@freezed
class AppVersionModel with _$AppVersionModel {
  /// Creates an [AppVersionModel] instance for version management.
  ///
  /// Parameters:
  /// - [latestVersion]: The newest available version of the app (optional)
  /// - [minSupportedVersion]: The oldest version still supported (optional)
  ///
  /// The [latestVersion] is used to notify users about available updates
  /// and new features. The [minSupportedVersion] helps enforce minimum
  /// compatibility requirements, ensuring users don't use outdated versions
  /// that might have security vulnerabilities or incompatible prayer
  /// calculation methods.
  ///
  /// Both parameters are optional to support flexible version checking
  /// scenarios and graceful handling of API response variations.
  ///
  /// Version strings typically follow semantic versioning (e.g., "1.2.3")
  /// where major.minor.patch numbers indicate the significance of changes.
  ///
  /// Example:
  /// ```dart
  /// final versionInfo = AppVersionModel(
  ///   latestVersion: '2.1.0',
  ///   minSupportedVersion: '1.5.0',
  /// );
  /// ```
  factory AppVersionModel({
    String? latestVersion,
    String? minSupportedVersion,
  }) = _AppVersionModel;

  /// Creates an [AppVersionModel] instance from JSON data.
  ///
  /// This factory constructor enables deserialization of version information
  /// from API responses or configuration files. It's used for loading
  /// version data from remote servers to check for updates and compatibility.
  factory AppVersionModel.fromJson(Map<String, dynamic> json) =>
      _$AppVersionModelFromJson(json);
}
