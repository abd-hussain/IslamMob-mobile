import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:database_manager/database_manager.dart';
import 'package:firebase_manager/firebase_manager.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:islam_app/l10n/gen/app_localizations.dart';

part 'login_bloc.freezed.dart';
part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(const LoginState()) {
    on<_InitialValues>(_initialValues);
    on<_UpdateLoginButtonEnablity>(_updateLoginButtonEnablity);
    on<_LoginPressed>(_loginPressed);
  }

  FutureOr<void> _initialValues(
    _InitialValues event,
    Emitter<LoginState> emit,
  ) {
    String email = "";
    String password = "";

    if (DataBaseManagerBase.getFromDatabase(
              key: DatabaseUserCredentials.isUserChooceShowCradintial,
              defaultValue: "",
            )
            as String !=
        "") {
      email = _getUserEmail();
      password = _getUserPassword();
    }

    emit(
      state.copyWith(
        processState: LoginProcessState.idl(email: email, password: password),
      ),
    );
  }

  FutureOr<void> _updateLoginButtonEnablity(
    _UpdateLoginButtonEnablity event,
    Emitter<LoginState> emit,
  ) {
    final isValid = _areAllFieldsFilled(event);

    if (!isValid) {
      emit(
        state.copyWith(
          isLoginButtonEnabled: false,
          errorMessage: "Please fill all required fields",
        ),
      );
      // ignore: void_checks
      return "error"; // ❌ causes the error
    }

    final validationError = _validateForm(event);

    if (validationError != null) {
      emit(
        state.copyWith(
          isLoginButtonEnabled: false,
          errorMessage: validationError,
        ),
      );
      // ignore: void_checks
      return "error"; // ❌ causes the error
    }

    emit(state.copyWith(isLoginButtonEnabled: true, errorMessage: ''));
  }

  bool _areAllFieldsFilled(_UpdateLoginButtonEnablity event) {
    return event.email.isNotEmpty && event.password.isNotEmpty;
  }

  String? _validateForm(_UpdateLoginButtonEnablity event) {
    if (!_isValidEmail(event.email)) {
      return event.localizations.validation_email;
    }

    if (event.password.length < 6) {
      return event.localizations.validation_passwordLength;
    }

    return null; // no error
  }

  bool _isValidEmail(String email) {
    final emailRegex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
    return emailRegex.hasMatch(email);
  }

  String _getUserEmail() {
    return DataBaseManagerBase.getFromDatabase(
          key: DatabaseUserCredentials.userEmail,
          defaultValue: "",
        )
        as String;
  }

  String _getUserPassword() {
    return DataBaseManagerBase.getFromDatabase(
          key: DatabaseUserCredentials.userPassword,
          defaultValue: "",
        )
        as String;
  }

  FutureOr<void> _loginPressed(
    _LoginPressed event,
    Emitter<LoginState> emit,
  ) async {
    emit(
      state.copyWith(
        errorMessage: "",
        processState: const LoginProcessState.loading(),
      ),
    );

    final value = await FirebaseAuthRepository.loginUser(
      email: event.email,
      password: event.password,
    );

    if (value.containsKey(true)) {
      final accessToken = value[true];
      final mapToSave = {
        DatabaseUserCredentials.isUserLoggedIn: "YES",
        DatabaseUserCredentials.userEmail: event.email,
        DatabaseUserCredentials.userPassword: event.password,
        DatabaseUserCredentials.accessToken: accessToken ?? "",
      };

      if (event.savedCradintial) {
        mapToSave[DatabaseUserCredentials.isUserChooceShowCradintial] = "YES";
      }
      await DataBaseManagerBase.saveMultipleInDatabase(data: mapToSave);

      emit(
        state.copyWith(
          errorMessage: "",
          processState: const LoginProcessState.success(),
        ),
      );
    } else if (value.containsKey(false)) {
      // The operation failed
      final error = value[false];
      emit(
        state.copyWith(
          errorMessage: error.toString(),
          processState: LoginProcessState.error(error.toString()),
        ),
      );
    }
  }
}
