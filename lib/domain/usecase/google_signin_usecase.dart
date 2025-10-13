import 'dart:io';

import 'package:firebase_manager/firebase_manager.dart';
import 'package:fpdart/fpdart.dart';
import 'package:islam_app/my_app/locator.dart';
import 'package:preferences/preferences.dart';

class GoogleSigninUseCase {
  TaskEither<AuthFailure, UserModel> call() {
    return GoogleSigninRepository.googleSignIn();
  }

  Future<bool> registerSocialUserInFirestore({required String signInMethod}) {
    final userEmail = locator<IslamPreferences>().getValue(
      key: DatabaseUserCredentials.userEmail,
      defaultValue: "",
    );

    final userUID = locator<IslamPreferences>().getValue(
      key: DatabaseUserCredentials.userUID,
      defaultValue: "",
    );

    return GoogleSigninRepository.registerSocialUserInFirestore(
      email: userEmail,
      uid: userUID,
      signInMethod: signInMethod,
      os: Platform.isIOS ? "ios" : "android",
    );
  }
}
