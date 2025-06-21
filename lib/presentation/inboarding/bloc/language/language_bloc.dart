import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:islam_app/domain/model/language.dart';
import 'package:islam_app/domain/usecase/setup_user_setting_usecase.dart';
import 'package:islam_app/my_app/islam_mob_app/islam_mob_app.dart';

part 'language_bloc.freezed.dart';
part 'language_event.dart';
part 'language_state.dart';

/// BLoC for managing language selection during Islamic app onboarding.
///
/// This BLoC handles the business logic for language selection and
/// configuration during the onboarding process, ensuring the Islamic
/// application displays content in the user's preferred language. It manages:
/// - **Language selection** from available supported languages
/// - **Language application** with immediate app interface updates
/// - **Persistent storage** of language preferences for future sessions
/// - **App rebuilding** to apply language changes throughout the interface
///
/// Language selection is crucial for Islamic apps as they serve a global
/// Muslim community speaking various languages. This BLoC ensures Muslims
/// can access Islamic content, prayer times, and spiritual guidance in
/// their preferred language for better understanding and engagement.
class LanguageBloc extends Bloc<LanguageEvent, LanguageState> {
  /// Creates a [LanguageBloc] with initial state and event handlers.
  ///
  /// Initializes the BLoC with empty language state and sets up event
  /// handlers for language selection and application during onboarding.
  LanguageBloc() : super(const LanguageState()) {
    on<_ChangeSelectedLanguage>(_changeSelectedLanguage);
    on<_SetupLanguage>(_setupLanguage);
  }

  void _changeSelectedLanguage(
      _ChangeSelectedLanguage event, Emitter<LanguageState> emit) {
    emit(state.copyWith(selectedLanguage: event.type));
  }

  FutureOr<void> _setupLanguage(
      _SetupLanguage event, Emitter<LanguageState> emit) {
    SetupUserSettingUseCase.setLanguage(state.selectedLanguage!.languageCode);
    // Rebuilds the app after language change
    IslamMobApp.of(event.context)?.rebuild();
  }
}
