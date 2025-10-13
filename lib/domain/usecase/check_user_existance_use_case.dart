import 'package:firebase_manager/firebase_manager.dart';
import 'package:fpdart/fpdart.dart';
import 'package:islam_app/my_app/locator.dart';
import 'package:preferences/preferences.dart';

class CheckUserExistanceUseCase {
  final FirebaseFirestoreRepository _firestoreRepository =
      FirebaseFirestoreRepository();

  TaskEither<Exception, bool> call() {
    final userEmail = locator<IslamPreferences>().getValue(
      key: DatabaseUserCredentials.userEmail,
      defaultValue: "",
    );
    return _firestoreRepository.checkIfUserExists(userEmail);
  }
}
