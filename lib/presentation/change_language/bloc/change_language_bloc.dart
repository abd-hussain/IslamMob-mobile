import 'dart:async';

import 'package:database_manager/database_manager.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:islam_app/domain/model/language.dart';

part 'change_language_bloc.freezed.dart';
part 'change_language_event.dart';
part 'change_language_state.dart';

/// BLoC for managing language selection and changes in the Islam Mob app.
///
/// This BLoC handles the business logic for the language selection interface,
/// allowing users to choose their preferred language for the Islamic application.
/// It manages:
/// - **Language selection** from available language options
/// - **Language persistence** saving user preferences to local storage
/// - **UI state updates** for language selection interface
/// - **Language application** triggering app-wide language changes
///
/// The language selection supports the global Muslim community by providing
/// the Islamic app interface in multiple languages, ensuring accessibility
/// for Muslims worldwide while maintaining Islamic authenticity across
/// different linguistic contexts.
class ChangeLanguageBloc
    extends Bloc<ChangeLanguageEvent, ChangeLanguageState> {
  /// Creates a [ChangeLanguageBloc] with initial state and event handlers.
  ///
  /// Initializes the BLoC with empty language selection state and sets up
  /// event handlers for language selection and persistence operations.
  ChangeLanguageBloc() : super(const ChangeLanguageState()) {
    on<_ChangeSelectedCheckBoxLanguage>(_changeSelectedCheckBoxLanguage);
    on<_PlaceNewLanguage>(_placeNewLanguage);
  }
  FutureOr<void> _changeSelectedCheckBoxLanguage(
      _ChangeSelectedCheckBoxLanguage event,
      Emitter<ChangeLanguageState> emit) {
    emit(state.copyWith(selectedLanguage: event.type));
  }

  FutureOr<void> _placeNewLanguage(
      _PlaceNewLanguage event, Emitter<ChangeLanguageState> emit) async {
    await DataBaseManagerBase.saveInDatabase(
        key: DatabaseFieldConstant.userLanguageCode, value: event.langCode);
  }
}
