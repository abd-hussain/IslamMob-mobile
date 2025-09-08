import 'package:firebase_manager/firebase_manager.dart';
import 'package:fpdart/fpdart.dart';

class GoogleSigninUseCase {
  final FirebaseAuthRepository _authRepository = FirebaseAuthRepository();

  TaskEither<AuthFailure, UserModel> call() {
    return _authRepository.googleSignIn();
  }
}
