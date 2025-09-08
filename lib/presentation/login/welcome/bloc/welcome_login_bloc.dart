import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:islam_app/domain/usecase/check_user_existance_use_case.dart';
import 'package:islam_app/domain/usecase/google_signin_usecase.dart';
import 'package:logger_manager/logger_manager.dart';

part 'welcome_login_bloc.freezed.dart';
part 'welcome_login_event.dart';
part 'welcome_login_state.dart';

class WelcomeLoginBloc extends Bloc<WelcomeLoginEvent, WelcomeLoginState> {
  WelcomeLoginBloc() : super(const WelcomeLoginState()) {
    on<_GoogleSignin>(_onGoogleSignin);
    on<_AppleSignin>(_onAppleSignin);
    on<_FacebookSignin>(_onFacebookSignin);
    on<_CheckUserExistance>(_onCheckUserExistance);
  }

  FutureOr<void> _onGoogleSignin(event, Emitter<WelcomeLoginState> emit) async {
    emit(
      state.copyWith(proccessState: const WelcomeLoginProccessState.loading()),
    );
    final result = await GoogleSigninUseCase().call().run();
    result.fold(
      (error) {
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
      (data) {
        add(const WelcomeLoginEvent.checkUserExistance());
      },
    );
  }

  FutureOr<void> _onAppleSignin(event, Emitter<WelcomeLoginState> emit) async {
    emit(
      state.copyWith(proccessState: const WelcomeLoginProccessState.loading()),
    );
    //TODO: Implement the Apple Signin Use Case
  }

  FutureOr<void> _onFacebookSignin(
    event,
    Emitter<WelcomeLoginState> emit,
  ) async {
    emit(
      state.copyWith(proccessState: const WelcomeLoginProccessState.loading()),
    );
    //TODO: Implement the Facebook Signin Use Case
  }

  FutureOr<void> _onCheckUserExistance(
    event,
    Emitter<WelcomeLoginState> emit,
  ) async {
    final result = await CheckUserExistanceUseCase().call().run();

    result.fold(
      (error) {
        emit(
          state.copyWith(
            proccessState: WelcomeLoginProccessState.error(error.toString()),
          ),
        );
      },
      (data) {
        emit(
          state.copyWith(
            proccessState: WelcomeLoginProccessState.success(data),
          ),
        );
      },
    );
  }
}
