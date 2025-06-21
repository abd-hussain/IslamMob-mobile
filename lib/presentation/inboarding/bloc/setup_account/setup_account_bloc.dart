import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:islam_app/domain/usecase/setup_user_setting_usecase.dart';

part 'setup_account_bloc.freezed.dart';
part 'setup_account_event.dart';
part 'setup_account_state.dart';

/// BLoC for managing Islamic account setup during app onboarding.
///
/// This BLoC handles the business logic for configuring Islamic-specific
/// account settings during the onboarding process, which is essential for
/// accurate Islamic prayer time calculations and religious observance. It manages:
/// - **UTC offset configuration** for accurate prayer time calculations
/// - **Madhab selection** based on geographical location for prayer methods
/// - **Prayer calculation method** setup according to Islamic authorities
/// - **High latitude rules** for regions with extreme daylight variations
///
/// Account setup is crucial for Islamic practice as prayer times vary
/// significantly based on location, calculation method, and Islamic school
/// of thought (Madhab). This BLoC ensures Muslims receive accurate prayer
/// times according to their specific religious and geographical requirements.
class SetupAccountBloc extends Bloc<SetupAccountEvent, SetupAccountState> {
  /// Creates a [SetupAccountBloc] with initial state and event handlers.
  ///
  /// Initializes the BLoC with empty setup state and sets up event
  /// handlers for Islamic account configuration during onboarding.
  SetupAccountBloc() : super(const SetupAccountState()) {
    on<_Setup>(_setup);
  }

  /// Configures all Islamic account settings automatically.
  ///
  /// This method sets up essential Islamic configurations including:
  /// - UTC offset for accurate prayer time calculations
  /// - Madhab selection based on user's country for prayer methods
  /// - Prayer calculation method according to Islamic authorities
  /// - High latitude rules for regions with extreme daylight variations
  ///
  /// The setup ensures Muslims receive accurate prayer times according
  /// to their geographical location and Islamic requirements.
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
