import 'dart:async';

import 'package:firebase_manager/firebase_manager.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:internet_connection_checkup/internet_connection_checkup.dart';
import 'package:islam_app/domain/model/quran_copy.dart';
import 'package:islam_app/domain/model/quran_prints.dart';
import 'package:islam_app/domain/usecase/download_file_usecase.dart';
import 'package:islam_app/domain/usecase/quran_prints_usecase.dart';
import 'package:islam_app/domain/usecase/setup_user_setting_usecase.dart';
import 'package:islam_app/my_app/locator.dart';
import 'package:logger_manager/logger_manager.dart';

part 'quran_copy_bloc.freezed.dart';
part 'quran_copy_event.dart';
part 'quran_copy_state.dart';

/// BLoC for managing Quran copy selection and download during Islamic app onboarding.
///
/// This BLoC handles the business logic for selecting and downloading different
/// Quran copies (Mushaf) during the onboarding process, which is essential for
/// Islamic Quran reading functionality. It manages:
/// - **Quran prints listing** from Firebase with available Mushaf copies
/// - **Download management** for Quran copy files and resources
/// - **Internet connectivity** checking for download operations
/// - **Copy selection** for setting the user's preferred Quran Mushaf
/// - **Progress tracking** for download status and completion
///
/// Quran copy selection is fundamental to Islamic practice as different
/// Muslims prefer different Mushaf layouts and scripts. This BLoC ensures
/// Muslims can choose their preferred Quran copy for optimal reading experience.
class QuranCopyBloc extends Bloc<QuranCopyEvent, QuranCopyState> {
  /// Download file use case instance for managing Quran copy downloads.
  final DownloadFileUsecase downloadFileUsecase =
      locator<DownloadFileUsecase>();

  /// Quran prints use case instance for fetching available Mushaf copies.
  final QuranPrintsUsecase quranPrintsUsecase = locator<QuranPrintsUsecase>();

  /// Creates a [QuranCopyBloc] with initial state and event handlers.
  ///
  /// Initializes the BLoC with empty Quran copy state and sets up event
  /// handlers for prints listing, download management, and copy selection.
  QuranCopyBloc() : super(const QuranCopyState()) {
    on<_GetListOfPrints>(_getListOfPrints);
    on<_UpdateInternetConnectionStatus>(_handleInternetConnectionStatusUpdate);
    on<_UpdatePrintsDownloading>(_handlePrintsDownloadingUpdate);
    on<_SetupCopy>(_handleSetupCopy);
  }

  /// Checks the internet connection status and emits an event.
  Future<bool> _checkInternetConnection() async {
    final isConnected = await NetworkUseCase.checkInternetConnection();
    add(QuranCopyEvent.updateInternetConnectionStatus(isConnected));
    return isConnected;
  }

  /// Prepares a list of prints ready for downloading by verifying file existence.
  Future<List<String>> _prepareDownloadingList(List<QuranPrints> prints) async {
    final downloadingList = <String>[];

    for (final print in prints) {
      final fieldName = print.fieldName ?? "";
      if (await downloadFileUsecase.fileExists(fieldName) &&
          !state.printsAlreadyDownloaded.contains(fieldName)) {
        downloadingList.add(fieldName);
      }
    }

    return downloadingList;
  }

  /// Gets a language name by its code.
  String getLanguageNameByCode(String languageCode) {
    return quranPrintsUsecase.getLanguageNameByCode(languageCode);
  }

  /// Handles updating the internet connection status in the state.
  void _handleInternetConnectionStatusUpdate(
    _UpdateInternetConnectionStatus event,
    Emitter<QuranCopyState> emit,
  ) {
    emit(state.copyWith(internetConnectionStauts: event.status));
  }

  /// Handles updating the list of downloading prints in the state.
  void _handlePrintsDownloadingUpdate(
    _UpdatePrintsDownloading event,
    Emitter<QuranCopyState> emit,
  ) {
    emit(state.copyWith(printsAlreadyDownloaded: event.print));
  }

  FutureOr<void> _handleSetupCopy(
    _SetupCopy event,
    Emitter<QuranCopyState> emit,
  ) async {
    final String fileName = event.printItem.fieldName!;

    await FirebaseAnalyticsRepository.logEvent(
      name: "use_file",
      parameters: {"file": event.printItem.fieldName!},
    );

    await SetupUserSettingUseCase.setQuranCopyInDB(
      QuranCopy(
        fileName: fileName,
        lastPageNumber: "1",
        juz2ToPageNumbers: event.printItem.juz2ToPageNumbers,
        sorahToPageNumbers: event.printItem.sorahToPageNumbers,
      ),
    );
  }

  FutureOr<void> _getListOfPrints(
    _GetListOfPrints event,
    Emitter<QuranCopyState> emit,
  ) async {
    final hasInternet = await _checkInternetConnection();
    if (!hasInternet) return;

    if (!await FirebaseManagerBase.isFirebaseInitialized()) {
      await FirebaseManagerBase.initialize();
    }

    final listOfPrints = await quranPrintsUsecase.getQuranPrints();

    if (listOfPrints.isEmpty) {
      LoggerManagerBase.logWarning(
        message: 'No documents found in the collection.',
      );
      return;
    }

    final downloadedList = await _prepareDownloadingList(listOfPrints);

    emit(
      state.copyWith(
        listOfPrints: listOfPrints,
        printsAlreadyDownloaded: downloadedList,
      ),
    );
  }
}
