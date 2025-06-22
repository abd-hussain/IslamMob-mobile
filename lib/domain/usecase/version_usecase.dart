import 'dart:io';

import 'package:firebase_manager/firebase_manager.dart';
import 'package:islam_app/domain/model/version.dart';
import 'package:islam_app/domain/usecase/application_version_usecase.dart';
import 'package:islam_app/my_app/locator.dart';

/// Represents the different types of version updates available.
///
/// - [mandatory]: The current app version is below the minimum supported version
///   and the user must update to continue using the app
/// - [optional]: A newer version is available but the current version is still supported
/// - [noUpdate]: The current version is up to date, no update needed
enum VersionUpdate {
  /// A mandatory update is required - current version is below minimum supported
  mandatory,

  /// An optional update is available - newer version exists but current is supported
  optional,

  /// No update needed - current version is up to date
  noUpdate,
}

/// A use case class that handles app version checking and update status determination.
///
/// This class provides functionality to:
/// - Check the current app version against Firebase-stored version data
/// - Determine if updates are mandatory, optional, or not needed
/// - Handle platform-specific version checking (Android/iOS)
/// - Parse and compare version numbers
/// - Fetch version configuration from Firebase Firestore
///
/// The version checking system supports:
/// - Minimum supported version (below this requires mandatory update)
/// - Latest available version (newer than current suggests optional update)
/// - Platform-specific version configurations
class VersionUseCase {
  /// Determines the current version update status by comparing local and remote versions.
  ///
  /// This method fetches version information from Firebase, compares it with the
  /// current app version, and returns the appropriate update status:
  ///
  /// - [VersionUpdate.mandatory]: Current version is below minimum supported
  /// - [VersionUpdate.optional]: Current version is supported but newer version available
  /// - [VersionUpdate.noUpdate]: Current version is up to date
  ///
  /// The comparison process:
  /// 1. Fetches version data from Firebase for the current platform
  /// 2. Gets the current app version from the device
  /// 3. Parses version strings into comparable integers
  /// 4. Compares current version against minimum supported and latest versions
  ///
  /// Returns [VersionUpdate.noUpdate] if Firebase data is unavailable or invalid.
  ///
  /// Example version comparison:
  /// - Current: "1.2.0" (120), Min: "1.1.0" (110), Latest: "1.3.0" (130) → Optional
  /// - Current: "1.0.0" (100), Min: "1.1.0" (110), Latest: "1.3.0" (130) → Mandatory
  /// - Current: "1.3.0" (130), Min: "1.1.0" (110), Latest: "1.3.0" (130) → No Update
  static Future<VersionUpdate> getCurrentVersionUpdateStatus() async {
    final AppVersionModel? firebaseVersionData =
        await _fetchVersionFromFirebase();
    final String currentVersion = await locator<ApplicationVersionUsecase>()
        .getApplicationVersion();
    // Default version update status
    VersionUpdate updateStatus = VersionUpdate.noUpdate;

    // Early return if any version info is null or missing
    if (firebaseVersionData?.latestVersion == null ||
        firebaseVersionData?.minSupportedVersion == null) {
      return updateStatus;
    }

    final int minSupported = _parseVersionNumber(
      firebaseVersionData!.minSupportedVersion!,
    );
    final int latest = _parseVersionNumber(firebaseVersionData.latestVersion!);
    final int current = _parseVersionNumber(currentVersion);

    if (current < minSupported) {
      updateStatus = VersionUpdate.mandatory;
    } else if (current < latest) {
      updateStatus = VersionUpdate.optional;
    }

    return updateStatus;
  }

  /// Fetch the version object from Firestore based on the current platform.
  static Future<AppVersionModel?> _fetchVersionFromFirebase() async {
    return FirebaseFirestoreRepository.getDataFromFireStoreDocument(
      FireStoreOptions(
        collectionName: FirebaseCollectionConstants.version,
        docName: _getPlatformId(),
        toModel: _toAppVersionModel,
      ),
    );
  }

  /// Determine platform document ID.
  static String _getPlatformId() => Platform.isAndroid ? 'android' : 'ios';

  /// Convert map/json into [AppVersionModel].
  static AppVersionModel _toAppVersionModel(dynamic source) {
    return AppVersionModel.fromJson(
      (source as Map<String, dynamic>?) ?? <String, dynamic>{},
    );
  }

  /// Converts a version string (e.g. "1.2.3") into an integer (e.g. 123).
  static int _parseVersionNumber(String version) {
    return int.tryParse(version.replaceAll('.', '')) ?? 0;
  }
}
