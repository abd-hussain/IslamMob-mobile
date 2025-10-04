import 'dart:io';

import 'package:database_manager/database_manager.dart';
import 'package:firebase_manager/firebase_manager.dart';
import 'package:fpdart/fpdart.dart';

class GoogleSigninUseCase {
  TaskEither<AuthFailure, UserModel> call() {
    return GoogleSigninRepository.googleSignIn();
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

    return GoogleSigninRepository.registerSocialUserInFirestore(
      email: userEmail,
      uid: userUID,
      signInMethod: signInMethod,
      os: Platform.isIOS ? "ios" : "android",
    );
  }
}
