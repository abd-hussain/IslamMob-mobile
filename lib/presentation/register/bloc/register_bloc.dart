import 'dart:async';
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:database_manager/database_manager.dart';
import 'package:firebase_manager/firebase_manager.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:islam_app/l10n/gen/app_localizations.dart';

part 'register_bloc.freezed.dart';
part 'register_event.dart';
part 'register_state.dart';

class RegisterBloc extends Bloc<RegisterEvent, RegisterState> {
  RegisterBloc() : super(const RegisterState()) {
    on<_UpdateLoginButtonEnablity>(_updateLoginButtonEnablity);
    on<_RegisterPressed>(_registerPressed);
  }

  FutureOr<void> _updateLoginButtonEnablity(
    _UpdateLoginButtonEnablity event,
    Emitter<RegisterState> emit,
  ) {
    final isValid = _areAllFieldsFilled(event);

    if (!isValid) {
      emit(
        state.copyWith(
          isRegisterButtonEnabled: false,
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
          isRegisterButtonEnabled: false,
          errorMessage: validationError,
        ),
      );
      // ignore: void_checks
      return "error"; // ❌ causes the error
    }

    emit(state.copyWith(isRegisterButtonEnabled: true, errorMessage: ''));
  }

  bool _areAllFieldsFilled(_UpdateLoginButtonEnablity event) {
    return event.email.isNotEmpty &&
        event.password.isNotEmpty &&
        event.confirmPassword.isNotEmpty &&
        event.fullName.isNotEmpty &&
        event.gender.isNotEmpty &&
        event.country.isNotEmpty &&
        event.countryFlag.isNotEmpty &&
        event.dateOfBirth.isNotEmpty;
  }

  String? _validateForm(_UpdateLoginButtonEnablity event) {
    if (!_isValidEmail(event.email)) {
      return event.localizations.validation_email;
    }

    if (event.password != event.confirmPassword) {
      return event.localizations.validation_passwordAndConfirm;
    }

    if (event.password.length < 8) {
      return event.localizations.validation_passwordLength;
    }

    return null; // no error
  }

  bool _isValidEmail(String email) {
    final emailRegex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
    return emailRegex.hasMatch(email);
  }

  FutureOr<void> _registerPressed(
    _RegisterPressed event,
    Emitter<RegisterState> emit,
  ) async {
    emit(
      state.copyWith(
        errorMessage: "",
        processState: const RegisterProcessState.loading(),
      ),
    );

    final value = await FirebaseAuthRepository.registerUser(
      email: event.email,
      password: event.password,
      fullName: event.fullName,
      gender: event.gender,
      dateOfBirth: event.dateOfBirth,
      profilePic: event.profilePic,
      country: event.country,
      countryFlag: event.countryFlag,
    );

    if (value.containsKey(true)) {
      // The operation was successful
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
          processState: const RegisterProcessState.success(),
        ),
      );
    } else if (value.containsKey(false)) {
      // The operation failed
      final error = value[false];
      emit(
        state.copyWith(
          errorMessage: error.toString(),
          processState: RegisterProcessState.error(error.toString()),
        ),
      );
    }
  }
}
