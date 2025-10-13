import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:islam_app/domain/usecase/apple_signin_usecase.dart';
import 'package:islam_app/domain/usecase/check_user_existance_use_case.dart';
import 'package:islam_app/domain/usecase/google_signin_usecase.dart';
import 'package:islam_app/my_app/locator.dart';
import 'package:logger_manager/logger_manager.dart';
import 'package:preferences/preferences.dart';

part 'welcome_login_bloc.freezed.dart';
part 'welcome_login_event.dart';
part 'welcome_login_state.dart';

class WelcomeLoginBloc extends Bloc<WelcomeLoginEvent, WelcomeLoginState> {
  WelcomeLoginBloc() : super(const WelcomeLoginState()) {
    on<_GoogleSignin>(_onGoogleSignin);
    on<_AppleSignin>(_onAppleSignin);
    on<_CheckUserExistance>(_onCheckUserExistance);
  }

  FutureOr<void> _onGoogleSignin(event, Emitter<WelcomeLoginState> emit) async {
    emit(
      state.copyWith(proccessState: const WelcomeLoginProccessState.loading()),
    );
    final result = await GoogleSigninUseCase().call().run();
    await result.fold(
      (error) {
        // If user cancelled Google sign-in, just reset to initial state without showing error
        if (error.message == 'CANCELLED') {
          emit(
            state.copyWith(
              proccessState: const WelcomeLoginProccessState.idle(),
            ),
          );
          return;
        }
        // Log and show only actual errors (not cancellations)
        LoggerManagerBase.logErrorMessage(
          error: error,
          message: 'Google Signin Error: ${error.message}',
        );
        emit(
          state.copyWith(
            proccessState: WelcomeLoginProccessState.error(error.message),
          ),
        );
      },
      (data) async {
        await locator<IslamPreferences>().saveMultiValue(
          data: {
            DatabaseUserCredentials.userEmail: data.email,
            DatabaseUserCredentials.accessToken: data.token,
            DatabaseUserCredentials.userUID: data.uid,
            DatabaseUserCredentials.isUserLoggedIn: true,
            DatabaseUserCredentials.isSocialLogin: true,
          },
        );
        add(const WelcomeLoginEvent.checkUserExistance(signInMethod: "google"));
      },
    );
  }

  FutureOr<void> _onAppleSignin(event, Emitter<WelcomeLoginState> emit) async {
    emit(
      state.copyWith(proccessState: const WelcomeLoginProccessState.loading()),
    );
    final result = await AppleSigninUseCase().call().run();
    await result.fold(
      (error) {
        // If user cancelled Google sign-in, just reset to initial state without showing error
        if (error.message == 'CANCELLED') {
          emit(
            state.copyWith(
              proccessState: const WelcomeLoginProccessState.idle(),
            ),
          );
          return;
        }

        // Log and show only actual errors (not cancellations)
        LoggerManagerBase.logErrorMessage(
          error: error,
          message: 'Apple Signin Error: ${error.message}',
        );
        emit(
          state.copyWith(
            proccessState: WelcomeLoginProccessState.error(error.message),
          ),
        );
      },
      (data) async {
        await locator<IslamPreferences>().saveMultiValue(
          data: {
            DatabaseUserCredentials.userEmail: data.email,
            DatabaseUserCredentials.accessToken: data.token,
            DatabaseUserCredentials.userUID: data.uid,
            DatabaseUserCredentials.isUserLoggedIn: true,
            DatabaseUserCredentials.isSocialLogin: true,
          },
        );
        add(const WelcomeLoginEvent.checkUserExistance(signInMethod: "apple"));
      },
    );
  }

  FutureOr<void> _onCheckUserExistance(
    _CheckUserExistance event,
    Emitter<WelcomeLoginState> emit,
  ) async {
    final result = await CheckUserExistanceUseCase().call().run();

    await result.fold(
      (error) {
        emit(
          state.copyWith(
            proccessState: WelcomeLoginProccessState.error(error.toString()),
          ),
        );
      },
      (data) async {
        if (data) {
          emit(
            state.copyWith(
              proccessState: WelcomeLoginProccessState.success(data),
            ),
          );
        } else {
          // Determine which use case to use based on the sign-in method
          final bool isGoogleSignIn = event.signInMethod == "google";
          final registrationSuccess = isGoogleSignIn
              ? await GoogleSigninUseCase().registerSocialUserInFirestore(
                  signInMethod: "google",
                )
              : await AppleSigninUseCase().registerSocialUserInFirestore(
                  signInMethod: "apple",
                );

          if (registrationSuccess) {
            emit(
              state.copyWith(
                proccessState: const WelcomeLoginProccessState.success(true),
              ),
            );
          } else {
            emit(
              state.copyWith(
                proccessState: const WelcomeLoginProccessState.error(
                  "Failed to register user in Firestore",
                ),
              ),
            );
          }
        }
      },
    );
  }
}
