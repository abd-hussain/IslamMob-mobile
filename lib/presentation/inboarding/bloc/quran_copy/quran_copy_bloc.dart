import 'dart:async';
import 'dart:io';

import 'package:device_info_plus/device_info_plus.dart';
import 'package:firebase_manager/firebase_manager.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:internet_connection_checkup/internet_connection_checkup.dart';
import 'package:islam_app/domain/constants/language_constant.dart';
import 'package:islam_app/domain/usecase/quran_prints_usecase.dart';
import 'package:islam_app/domain/model/quran_copy.dart';
import 'package:islam_app/domain/model/quran_prints.dart';
import 'package:islam_app/domain/usecase/download_file_usecase.dart';
import 'package:islam_app/domain/usecase/setup_user_setting_usecase.dart';
import 'package:logger_manager/logger_manager.dart';
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';

part 'quran_copy_event.dart';
part 'quran_copy_state.dart';
part 'quran_copy_bloc.freezed.dart';

class QuranCopyBloc extends Bloc<QuranCopyEvent, QuranCopyState> {
  final DownloadFileUsecase downloadFileUsecase = DownloadFileUsecase();
  final SetupUserSettingUseCase setupUserSettingUseCase =
      SetupUserSettingUseCase();
  final QuranPrintsUsecase quranPrintsUsecase = QuranPrintsUsecase();

  QuranCopyBloc() : super(const QuranCopyState()) {
    on<_GetListOfPrints>(_getListOfPrints);

    on<_UpdateInternetConnectionStatus>(_handleInternetConnectionStatusUpdate);
    on<_UpdatePrintsDownloading>(_handlePrintsDownloadingUpdate);
    on<_SetupCopy>(_handleSetupCopy);
  }

  /// Checks the internet connection status and emits an event.
  Future<bool> _checkInternetConnection() async {
    final isConnected = await NetworkUseCase.checkInternetConeection();
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

  /// Requests storage permission based on platform and device SDK.
  Future<bool> requestStoragePermission() async {
    final deviceInfo = DeviceInfoPlugin();

    if (Platform.isAndroid) {
      final androidInfo = await deviceInfo.androidInfo;
      if (androidInfo.version.sdkInt < 33) {
        return (await Permission.storage.request()).isGranted;
      }
    }

    return (await Permission.storage.request()).isGranted;
  }

  /// Gets a language name by its code.
  String getLanguageNameByCode(String languageCode) {
    return LanguageConstant.languages
        .firstWhere(
          (lang) => lang.languageCode == languageCode,
          orElse: () => LanguageConstant.languages[0],
        )
        .name;
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
      _UpdatePrintsDownloading event, Emitter<QuranCopyState> emit) {
    emit(state.copyWith(printsAlreadyDownloaded: event.print));
  }

  FutureOr<void> _handleSetupCopy(
      _SetupCopy event, Emitter<QuranCopyState> emit) async {
    final String fileName = event.printItem.fieldName!;

    final Directory dir = await getApplicationDocumentsDirectory();
    final filePath = Directory('${dir.path}/$fileName');

    FirebaseAnalyticsRepository.logEvent(
      name: "use_file",
      parameters: {"file": event.printItem.fieldName!},
    );

    await setupUserSettingUseCase.setQuranCopy(QuranCopy(
      fileName: fileName,
      filePath: filePath.path,
      lastPageNumber: 1,
      juz2ToPageNumbers: event.printItem.juz2ToPageNumbers,
      sorahToPageNumbers: event.printItem.sorahToPageNumbers,
    ));
  }

  FutureOr<void> _getListOfPrints(
      _GetListOfPrints event, Emitter<QuranCopyState> emit) async {
    final hasInternet = await _checkInternetConnection();
    if (!hasInternet) return;

    if (!await FirebaseManagerBase.isFirebaseInitialized()) {
      await FirebaseManagerBase.initialize();
    }

    final listOfPrints = await quranPrintsUsecase.getQuranPrints();

    if (listOfPrints.isEmpty) {
      LoggerManagerBase.logDebugMessage(
          message: 'No documents found in the collection.');
      return;
    }

    final downloadedList = await _prepareDownloadingList(listOfPrints);

    emit(state.copyWith(
      listOfPrints: listOfPrints,
      printsAlreadyDownloaded: downloadedList,
    ));
  }
}
