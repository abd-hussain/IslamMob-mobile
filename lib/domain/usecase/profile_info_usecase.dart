import 'package:database_manager/database_manager.dart';
import 'package:firebase_manager/firebase_manager.dart';
import 'package:islam_app/domain/model/profile_model.dart';
import 'package:logger_manager/logger_manager.dart';

class ProfileInfoUsecase {
  static Future<ProfileModel?> getDetails() async {
    try {
      ProfileModel? info =
          await FirebaseFirestoreRepository.getDataFromFireStoreDocument(
            FireStoreOptions(
              collectionName: FirebaseCollectionConstants.registered_users,
              docName: _getUserEmail(),
              toModel: _toProfileModel,
            ),
          );

      if (info != null) {
        info = info.copyWith(emailAddress: _getUserEmail());
      }

      return info;
    } catch (e) {
      LoggerManagerBase.logErrorMessage(
        error: e,
        message: 'Error fetching Profile',
      );
      return null;
    }
  }

  static String _getUserEmail() {
    return DataBaseManagerBase.getFromDatabase(
          key: DatabaseUserCredentials.userEmail,
          defaultValue: "",
        )
        as String;
  }

  /// Convert map/json into [ProfileModel].
  static ProfileModel _toProfileModel(dynamic source) {
    return ProfileModel.fromJson(
      (source as Map<String, dynamic>?) ?? <String, dynamic>{},
    );
  }
}
