import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:database_manager/database_manager.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:islam_app/domain/model/estekara_data.dart';
import 'package:islam_app/domain/usecase/estekara_usecase.dart';

part 'estekara_bloc.freezed.dart';
part 'estekara_event.dart';
part 'estekara_state.dart';

/// BLoC for managing Istikhara (Islamic guidance prayer) functionality.
///
/// This BLoC handles the business logic for the Istikhara feature, which
/// provides Muslims with guidance on making important life decisions through
/// Islamic prayer and supplication. It manages:
/// - **Istikhara content loading** with prayers and guidance text
/// - **Language direction** for proper Arabic and RTL text display
/// - **Istikhara data** including prayers, instructions, and guidance
///
/// Istikhara is an important Islamic practice where Muslims seek Allah's
/// guidance when making decisions. This BLoC provides the necessary content
/// and functionality to help Muslims perform this spiritual practice correctly
/// with proper prayers and guidance according to Islamic teachings.
class EstekaraBloc extends Bloc<EstekaraEvent, EstekaraState> {
  /// Creates an [EstekaraBloc] with initial state and event handlers.
  ///
  /// Initializes the BLoC with empty Istikhara state and sets up event
  /// handlers for loading Istikhara content and managing display preferences.
  EstekaraBloc() : super(const EstekaraState()) {
    on<_FillInitialValue>(_fillInitialValue);
  }

  FutureOr<void> _fillInitialValue(
      _FillInitialValue event, Emitter<EstekaraState> emit) async {
    emit(state.copyWith(
      listOfItems: await EstekaraUsecase.getEstekaraList(),
      isRtlLanguage: _isRtlLanguage(),
    ));
  }

  bool _isRtlLanguage() {
    final String languageCode = DataBaseManagerBase.getFromDatabase(
        key: DatabaseFieldConstant.userLanguageCode,
        defaultValue: "en") as String;
    return languageCode == "ar" || languageCode == "fa";
  }
}
