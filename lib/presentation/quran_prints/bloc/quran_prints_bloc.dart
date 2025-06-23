import 'dart:async';

import 'package:firebase_manager/firebase_manager.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:internet_connection_checkup/internet_connection_checkup.dart';
import 'package:islam_app/domain/model/quran_prints.dart';
import 'package:islam_app/domain/usecase/download_file_usecase.dart';
import 'package:islam_app/domain/usecase/quran_prints_usecase.dart';
import 'package:islam_app/my_app/locator.dart';
import 'package:logger_manager/logger_manager.dart';

part 'quran_prints_bloc.freezed.dart';
part 'quran_prints_event.dart';
part 'quran_prints_state.dart';

/// BLoC for managing Quran prints functionality.
///
/// This BLoC handles the state management for Quran prints including:
/// - Fetching available Quran prints from Firebase
/// - Managing internet connectivity status
/// - Tracking download progress and file availability
/// - Language code to name conversion
/// - Firebase initialization when needed
class QuranPrintsBloc extends Bloc<QuranPrintsEvent, QuranPrintsState> {
  /// Use case for Quran prints operations.
  ///
  /// Handles fetching Quran prints data and language name conversions.
  QuranPrintsUsecase quranPrintsUsecase = locator<QuranPrintsUsecase>();

  /// Use case for file download operations.
  ///
  /// Handles file existence checks and download functionality.
  final DownloadFileUsecase downloadFileUsecase =
      locator<DownloadFileUsecase>();

  /// Creates a [QuranPrintsBloc] with initial state and event handlers.
  ///
  /// Sets up event handlers for all QuranPrintsEvent types and initializes
  /// the bloc with an empty QuranPrintsState.
  QuranPrintsBloc() : super(const QuranPrintsState()) {
    on<_InitializeFetchingData>(_initializeFetchingData);
    on<_UpdatelistOfPrints>(_handleUpdateListOfPrints);
    on<_UpdateInternetConnectionStatus>(_handleUpdateInternetConnectionStatus);
    on<_UpdatePrintsDownloading>(_handleUpdatePrintsDownloading);
  }

  /// Checks internet connection and updates the state
  Future<bool> _checkInternetConnectionStatus() async {
    final hasInternet = await NetworkUseCase.checkInternetConnection();

    add(QuranPrintsEvent.updateInternetConnectionStatus(status: hasInternet));
    return hasInternet;
  }

  /// Fetches the list of Quran prints
  Future<void> _fetchQuranPrints() async {
    final listOfPrints = await quranPrintsUsecase.getQuranPrints();

    if (listOfPrints.isEmpty) {
      LoggerManagerBase.logWarning(
        message: 'No documents found in the collection.',
      );
      return;
    }

    final downloadingList = await _prepareDownloadingList(listOfPrints);
    add(QuranPrintsEvent.updatePrintsDownloading(print: downloadingList));
    add(QuranPrintsEvent.updatelistOfPrints(list: listOfPrints));
  }

  /// Prepares the list of prints that are ready for downloading
  Future<List<String>> _prepareDownloadingList(
    List<QuranPrints> listOfPrints,
  ) async {
    final downloadingList = <String>[];

    for (final printItem in listOfPrints) {
      final fieldName = printItem.fieldName ?? "";

      if (await _fileExists(fieldName) &&
          !state.printsDownloading.contains(fieldName)) {
        downloadingList.add(fieldName);
      }
    }
    return downloadingList;
  }

  /// Checks if a file exists locally
  Future<bool> _fileExists(String fileName) async {
    return downloadFileUsecase.fileExists(fileName);
  }

  /// Gets the display name for a language code.
  ///
  /// Converts a language code (e.g., 'en', 'ar') to its corresponding
  /// display name (e.g., 'English', 'Arabic') for UI presentation.
  ///
  /// Parameters:
  /// - [languageCode]: The language code to convert
  ///
  /// Returns:
  ///   The display name of the language corresponding to the code
  String getLanguageNameByCode(String languageCode) {
    return quranPrintsUsecase.getLanguageNameByCode(languageCode);
  }

  /// Event handlers
  FutureOr<void> _initializeFetchingData(
    _InitializeFetchingData event,
    Emitter<QuranPrintsState> emit,
  ) async {
    final hasInternet = await _checkInternetConnectionStatus();

    if (hasInternet) {
      if (!await FirebaseManagerBase.isFirebaseInitialized()) {
        await FirebaseManagerBase.initialize();
      }
      await _fetchQuranPrints();
    }
  }

  FutureOr<void> _handleUpdateListOfPrints(
    _UpdatelistOfPrints event,
    Emitter<QuranPrintsState> emit,
  ) {
    emit(state.copyWith(listOfPrints: event.list));
  }

  FutureOr<void> _handleUpdateInternetConnectionStatus(
    _UpdateInternetConnectionStatus event,
    Emitter<QuranPrintsState> emit,
  ) {
    emit(state.copyWith(internetConnectionStauts: event.status));
  }

  FutureOr<void> _handleUpdatePrintsDownloading(
    _UpdatePrintsDownloading event,
    Emitter<QuranPrintsState> emit,
  ) {
    emit(state.copyWith(printsDownloading: event.print));
  }
}
