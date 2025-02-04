import 'dart:io';

import 'package:firebase_manager/firebase_manager.dart';
import 'package:islam_app/domain/model/version.dart';
import 'package:islam_app/domain/usecase/application_version_usecase.dart';
import 'package:islam_app/my_app/locator.dart';

enum VersionUpdate { mandatory, optional, noUpdate }

class VersionUseCase {
  static Future<VersionUpdate> getCurrentVersionUpdateStatus() async {
    final AppVersionModel? firebaseVersionData =
        await _fetchVersionFromFirebase();
    final String currentVersion =
        await locator<ApplicationVersionUsecase>().getApplicationVersion();
    // Default version update status
    VersionUpdate updateStatus = VersionUpdate.noUpdate;

    // Early return if any version info is null or missing
    if (firebaseVersionData?.latestVersion == null ||
        firebaseVersionData?.minSupportedVersion == null) {
      return updateStatus;
    }

    final int minSupported =
        _parseVersionNumber(firebaseVersionData!.minSupportedVersion!);
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
    return AppVersionModel.fromJson(source ?? <String, dynamic>{});
  }

  /// Converts a version string (e.g. "1.2.3") into an integer (e.g. 123).
  static int _parseVersionNumber(String version) {
    return int.tryParse(version.replaceAll('.', '')) ?? 0;
  }
}
