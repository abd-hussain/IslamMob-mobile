import 'dart:io';

import 'package:firebase_manager/firebase_manager.dart';
import 'package:fpdart/fpdart.dart';
import 'package:islam_app/my_app/locator.dart';
import 'package:preferences/preferences.dart';

class AppleSigninUseCase {
  TaskEither<AuthFailure, UserModel> call() {
    return AppleSigninRepository.appleSignIn();
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

    return AppleSigninRepository.registerSocialUserInFirestore(
      email: userEmail,
      uid: userUID,
      signInMethod: signInMethod,
      os: Platform.isIOS ? "ios" : "android",
    );
  }
}
