import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:firebase_manager/firebase_manager.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:islam_app/l10n/gen/app_localizations.dart';
import 'package:islam_app/my_app/locator.dart';
import 'package:preferences/preferences.dart';

part 'manual_login_bloc.freezed.dart';
part 'manual_login_event.dart';
part 'manual_login_state.dart';

class ManualLoginBloc extends Bloc<ManualLoginEvent, ManualLoginState> {
  ManualLoginBloc() : super(const ManualLoginState()) {
    on<_ManualInitialValues>(_initialValues);
    on<_ManualUpdateLoginButtonEnablity>(_updateLoginButtonEnablity);
    on<_ManualLoginPressed>(_loginPressed);
  }

  FutureOr<void> _initialValues(
    _ManualInitialValues event,
    Emitter<ManualLoginState> emit,
  ) {
    String email = "";
    String password = "";

    if (locator<IslamPreferences>().getValue(
          key: DatabaseUserCredentials.isUserChooceShowCradintial,
          defaultValue: "",
        ) !=
        "") {
      email = _getUserEmail();
      password = _getUserPassword();
    }

    emit(
      state.copyWith(
        processState: ManualLoginProcessState.idl(
          email: email,
          password: password,
        ),
      ),
    );
  }

  FutureOr<void> _updateLoginButtonEnablity(
    _ManualUpdateLoginButtonEnablity event,
    Emitter<ManualLoginState> emit,
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

  bool _areAllFieldsFilled(_ManualUpdateLoginButtonEnablity event) {
    return event.email.isNotEmpty && event.password.isNotEmpty;
  }

  String? _validateForm(_ManualUpdateLoginButtonEnablity event) {
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
    return locator<IslamPreferences>().getValue(
      key: DatabaseUserCredentials.userEmail,
      defaultValue: "",
    );
  }

  String _getUserPassword() {
    return locator<IslamPreferences>().getValue(
      key: DatabaseUserCredentials.userPassword,
      defaultValue: "",
    );
  }

  FutureOr<void> _loginPressed(
    _ManualLoginPressed event,
    Emitter<ManualLoginState> emit,
  ) async {
    emit(
      state.copyWith(
        errorMessage: "",
        processState: const ManualLoginProcessState.loading(),
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
      await locator<IslamPreferences>().saveMultiValue(data: mapToSave);

      emit(
        state.copyWith(
          errorMessage: "",
          processState: const ManualLoginProcessState.success(),
        ),
      );
    } else if (value.containsKey(false)) {
      // The operation failed
      final error = value[false];
      emit(
        state.copyWith(
          errorMessage: error.toString(),
          processState: ManualLoginProcessState.error(error.toString()),
        ),
      );
    }
  }
}
