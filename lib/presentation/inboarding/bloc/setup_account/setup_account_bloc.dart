import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:islam_app/domain/usecase/setup_user_setting_usecase.dart';

part 'setup_account_event.dart';
part 'setup_account_state.dart';
part 'setup_account_bloc.freezed.dart';

class SetupAccountBloc extends Bloc<SetupAccountEvent, SetupAccountState> {
  SetupAccountBloc() : super(const SetupAccountState()) {
    on<_Setup>(_setup);
  }

  Future<void> setupAccount() async {
    await SetupUserSettingUseCase.setupUTCOffset();
    await SetupUserSettingUseCase.setupMadhabByCountryCode();
    await SetupUserSettingUseCase.setupPrayCalculationMethod();
    await SetupUserSettingUseCase.setupHighLatitudeRule();
  }

  FutureOr<void> _setup(_Setup event, Emitter<SetupAccountState> emit) async {
    emit(state.copyWith(isLoading: false));
  }
}
