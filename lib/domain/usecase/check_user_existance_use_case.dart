import 'package:database_manager/database_manager.dart';
import 'package:firebase_manager/firebase_manager.dart';
import 'package:fpdart/fpdart.dart';

class CheckUserExistanceUseCase {
  final FirebaseFirestoreRepository _firestoreRepository =
      FirebaseFirestoreRepository();

  TaskEither<Exception, bool> call() {
    final userEmail =
        DataBaseManagerBase.getFromDatabase(
              key: DatabaseUserCredentials.userEmail,
              defaultValue: "",
            )
            as String;
    return _firestoreRepository.checkIfUserExists(userEmail);
  }
}
