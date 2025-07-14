import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:firebase_manager/firebase_manager.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:islam_app/l10n/gen/app_localizations.dart';

part 'forgot_password_bloc.freezed.dart';
part 'forgot_password_event.dart';
part 'forgot_password_state.dart';

class ForgotPasswordBloc
    extends Bloc<ForgotPasswordEvent, ForgotPasswordState> {
  ForgotPasswordBloc() : super(const ForgotPasswordState()) {
    on<_UpdateButtonEnablity>(_updateButtonEnablity);
    on<_ForgotPressed>(_forgotPressed);
  }

  FutureOr<void> _updateButtonEnablity(
    _UpdateButtonEnablity event,
    Emitter<ForgotPasswordState> emit,
  ) {
    if (event.email.isEmpty) {
      emit(
        state.copyWith(
          isForgotButtonEnabled: false,
          errorMessage: "Please fill all required fields",
        ),
      );
      // ignore: void_checks
      return "error"; // ❌ causes the error
    }

    if (!_isValidEmail(event.email)) {
      emit(
        state.copyWith(
          isForgotButtonEnabled: false,
          errorMessage: event.localizations.validation_email,
        ),
      );
      // ignore: void_checks
      return "error"; // ❌ causes the error
    }

    emit(state.copyWith(isForgotButtonEnabled: true, errorMessage: ''));
  }

  bool _isValidEmail(String email) {
    final emailRegex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
    return emailRegex.hasMatch(email);
  }

  FutureOr<void> _forgotPressed(
    _ForgotPressed event,
    Emitter<ForgotPasswordState> emit,
  ) async {
    emit(
      state.copyWith(
        errorMessage: "",
        processState: const ForgotPasswordProcessState.loading(),
      ),
    );

    final value = await FirebaseAuthRepository.resetPassword(
      email: event.email,
    );

    if (value) {
      emit(
        state.copyWith(
          errorMessage: "",
          processState: const ForgotPasswordProcessState.success(),
        ),
      );
    } else {
      emit(
        state.copyWith(
          errorMessage: event.localizations.cantResetPassword,
          processState: ForgotPasswordProcessState.error(
            event.localizations.cantResetPassword,
          ),
        ),
      );
    }
  }
}
