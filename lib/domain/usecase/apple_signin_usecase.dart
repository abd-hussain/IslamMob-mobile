import 'dart:io';

import 'package:database_manager/database_manager.dart';
import 'package:firebase_manager/firebase_manager.dart';
import 'package:fpdart/fpdart.dart';

class AppleSigninUseCase {
  TaskEither<AuthFailure, UserModel> call() {
    return AppleSigninRepository.appleSignIn();
  }

  Future<bool> registerSocialUserInFirestore({required String signInMethod}) {
    final userEmail =
        DataBaseManagerBase.getFromDatabase(
              key: DatabaseUserCredentials.userEmail,
              defaultValue: "",
            )
            as String;

    final userUID =
        DataBaseManagerBase.getFromDatabase(
              key: DatabaseUserCredentials.userUID,
              defaultValue: "",
            )
            as String;

    return AppleSigninRepository.registerSocialUserInFirestore(
      email: userEmail,
      uid: userUID,
      signInMethod: signInMethod,
      os: Platform.isIOS ? "ios" : "android",
    );
  }
}
