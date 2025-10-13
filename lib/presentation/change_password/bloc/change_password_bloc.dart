import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:firebase_manager/firebase_manager.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:islam_app/l10n/gen/app_localizations.dart';
import 'package:islam_app/my_app/locator.dart';
import 'package:preferences/preferences.dart';

part 'change_password_bloc.freezed.dart';
part 'change_password_event.dart';
part 'change_password_state.dart';

class ChangePasswordBloc
    extends Bloc<ChangePasswordEvent, ChangePasswordState> {
  ChangePasswordBloc() : super(const ChangePasswordState()) {
    on<_UpdateButtonEnablity>(_updateButtonEnablity);
    on<_ChangePressed>(_changePressed);
  }

  FutureOr<void> _updateButtonEnablity(
    _UpdateButtonEnablity event,
    Emitter<ChangePasswordState> emit,
  ) {
    if (event.oldPassword.length < 6 ||
        event.newPassword.length < 6 ||
        event.confirmPassword.length < 6) {
      emit(
        state.copyWith(
          isButtonEnabled: false,
          errorMessage: event.localizations.validation_passwordLength,
        ),
      );
    } else if (event.newPassword != event.confirmPassword) {
      emit(
        state.copyWith(
          isButtonEnabled: false,
          errorMessage: event.localizations.validation_passwordAndConfirm,
        ),
      );
    } else {
      emit(state.copyWith(isButtonEnabled: true, errorMessage: ""));
    }
  }

  FutureOr<void> _changePressed(
    _ChangePressed event,
    Emitter<ChangePasswordState> emit,
  ) async {
    emit(
      state.copyWith(
        errorMessage: "",
        processState: const ChangePasswordProcessState.loading(),
      ),
    );
    final value = await FirebaseAuthRepository.changePassword(
      email: _getUserEmail(),
      currentPassword: event.oldPassword,
      newPassword: event.confirmPassword,
    );
    if (value) {
      await locator<IslamPreferences>().setValue(
        key: DatabaseUserCredentials.userPassword,
        value: event.confirmPassword,
      );
      emit(
        state.copyWith(
          errorMessage: "",
          processState: const ChangePasswordProcessState.success(),
        ),
      );
    } else {
      emit(
        state.copyWith(
          errorMessage: event.localizations.cantResetPassword,
          processState: ChangePasswordProcessState.error(
            event.localizations.cantResetPassword,
          ),
        ),
      );
    }
  }

  String _getUserEmail() {
    return locator<IslamPreferences>().getValue(
      key: DatabaseUserCredentials.userPassword,
      defaultValue: "",
    );
  }
}
