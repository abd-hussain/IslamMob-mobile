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

class QuranPrintsBloc extends Bloc<QuranPrintsEvent, QuranPrintsState> {
  QuranPrintsUsecase quranPrintsUsecase = locator<QuranPrintsUsecase>();
  final DownloadFileUsecase downloadFileUsecase =
      locator<DownloadFileUsecase>();

  QuranPrintsBloc() : super(const QuranPrintsState()) {
    on<_InitializeFetchingData>(_initializeFetchingData);
    on<_UpdatelistOfPrints>(_handleUpdateListOfPrints);
    on<_UpdateInternetConnectionStatus>(_handleUpdateInternetConnectionStatus);
    on<_UpdatePrintsDownloading>(_handleUpdatePrintsDownloading);
  }

  /// Checks internet connection and updates the state
  Future<bool> _checkInternetConnectionStatus() async {
    final hasInternet = await NetworkUseCase.checkInternetConeection();

    add(QuranPrintsEvent.updateInternetConnectionStatus(status: hasInternet));
    return hasInternet;
  }

  /// Fetches the list of Quran prints
  Future<void> _fetchQuranPrints() async {
    final listOfPrints = await quranPrintsUsecase.getQuranPrints();

    if (listOfPrints.isEmpty) {
      LoggerManagerBase.logDebugMessage(
          message: 'No documents found in the collection.');
      return;
    }

    final downloadingList = await _prepareDownloadingList(listOfPrints);
    add(QuranPrintsEvent.updatePrintsDownloading(print: downloadingList));
    add(QuranPrintsEvent.updatelistOfPrints(list: listOfPrints));
  }

  /// Prepares the list of prints that are ready for downloading
  Future<List<String>> _prepareDownloadingList(
      List<QuranPrints> listOfPrints) async {
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

  /// Gets the display name for a language code

  String getLanguageNameByCode(String languageCode) {
    return quranPrintsUsecase.getLanguageNameByCode(languageCode);
  }

  /// Event handlers
  FutureOr<void> _initializeFetchingData(
      _InitializeFetchingData event, Emitter<QuranPrintsState> emit) async {
    final hasInternet = await _checkInternetConnectionStatus();

    if (hasInternet) {
      if (!await FirebaseManagerBase.isFirebaseInitialized()) {
        await FirebaseManagerBase.initialize();
      }
      await _fetchQuranPrints();
    }
  }

  FutureOr<void> _handleUpdateListOfPrints(
      _UpdatelistOfPrints event, Emitter<QuranPrintsState> emit) {
    emit(state.copyWith(listOfPrints: event.list));
  }

  FutureOr<void> _handleUpdateInternetConnectionStatus(
      _UpdateInternetConnectionStatus event, Emitter<QuranPrintsState> emit) {
    emit(state.copyWith(internetConnectionStauts: event.status));
  }

  FutureOr<void> _handleUpdatePrintsDownloading(
      _UpdatePrintsDownloading event, Emitter<QuranPrintsState> emit) {
    emit(state.copyWith(printsDownloading: event.print));
  }
}
