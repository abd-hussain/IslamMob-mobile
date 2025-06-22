import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:database_manager/database_manager.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:islam_app/domain/model/hajj_omrah_data.dart';
import 'package:islam_app/domain/usecase/hajj_omrah_usecase.dart';

part 'hajj_omrah_bloc.freezed.dart';
part 'hajj_omrah_event.dart';
part 'hajj_omrah_state.dart';

/// A BLoC that manages the state and logic for Hajj and Omrah guidance functionality.
///
/// This BLoC handles:
/// - Loading Hajj guidance data from JSON assets
/// - Loading Omrah guidance data from JSON assets
/// - Managing loading states during data fetching
/// - Language direction detection (RTL for Arabic/Farsi)
/// - State management for guidance content display
///
/// The BLoC automatically determines the appropriate content based on the
/// screen type (Hajj or Omrah) and configures the UI for the user's language
/// preference, including RTL support for Arabic and Farsi languages.
class HajjOmrahBloc extends Bloc<HajjOmrahEvent, HajjOmrahState> {
  /// Creates a new [HajjOmrahBloc] instance.
  ///
  /// Automatically sets up event handlers for:
  /// - Initial value loading (Hajj or Omrah data)
  /// - Loading state management
  ///
  /// The BLoC starts with an empty state and waits for events to
  /// trigger data loading and state updates.
  HajjOmrahBloc() : super(const HajjOmrahState()) {
    on<_FillInitialValue>(_fillInitialValue);
    on<_LoadingState>(_loadingState);
  }

  FutureOr<void> _fillInitialValue(
    _FillInitialValue event,
    Emitter<HajjOmrahState> emit,
  ) async {
    switch (event.screenType) {
      case _Hajj():
        emit(
          state.copyWith(
            listOfItems: await HajjOmrahUsecase.getHajjList(),
            isRtlLanguage: _isRtlLanguage(),
          ),
        );
      case _Omrah():
        emit(
          state.copyWith(
            listOfItems: await HajjOmrahUsecase.getOmrahList(),
            isRtlLanguage: _isRtlLanguage(),
          ),
        );
    }
  }

  FutureOr<void> _loadingState(
    _LoadingState event,
    Emitter<HajjOmrahState> emit,
  ) {
    emit(state.copyWith(processState: event.state));
  }

  bool _isRtlLanguage() {
    final String languageCode =
        DataBaseManagerBase.getFromDatabase(
              key: DatabaseFieldConstant.userLanguageCode,
              defaultValue: "en",
            )
            as String;
    return languageCode == "ar" || languageCode == "fa";
  }
}
