import 'dart:async';
import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:islam_app/models/quran_copy.dart';
import 'package:islam_app/domain/model/quran_prints.dart';
import 'package:islam_app/domain/usecase/download_file_usecase.dart';
import 'package:islam_app/domain/usecase/setup_user_setting_usecase.dart';
import 'package:islam_app/my_app/locator.dart';
import 'package:islam_app/domain/repository/firebase_firestore.dart';
import 'package:islam_app/domain/repository/network_info.dart';
import 'package:islam_app/core/constants/app_constant.dart';
import 'package:islam_app/core/constants/firebase_constants.dart';
import 'package:islam_app/utils/logger.dart';
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';

part 'quran_copy_event.dart';
part 'quran_copy_state.dart';
part 'quran_copy_bloc.freezed.dart';

class QuranCopyBloc extends Bloc<QuranCopyEvent, QuranCopyState> {
  final DownloadFileUsecase downloadFileUsecase = DownloadFileUsecase();
  final SetupUserSettingUseCase setupUserSettingUseCase = SetupUserSettingUseCase();

  QuranCopyBloc() : super(const QuranCopyState()) {
    on<_GetListOfPrints>(_getListOfPrints);

    on<_UpdateInternetConnectionStatus>(_handleInternetConnectionStatusUpdate);
    on<_UpdatePrintsDownloading>(_handlePrintsDownloadingUpdate);
    on<_SetupCopy>(_handleSetupCopy);
  }

  /// Checks if Firebase is initialized.
  Future<bool> _isFirebaseInitialized() async {
    return Firebase.apps.isNotEmpty;
  }

  /// Checks the internet connection status and emits an event.
  Future<bool> _checkInternetConnection() async {
    final isConnected = await locator<NetworkInfoRepository>().checkConnectivityOnLaunch();
    add(QuranCopyEvent.updateInternetConnectionStatus(isConnected));
    return isConnected;
  }

  /// Maps Firestore documents to a list of [QuranPrints].
  List<QuranPrints> _mapDocumentsToPrints(List<QueryDocumentSnapshot<Object?>> documents) {
    return documents.map((doc) {
      return QuranPrints(
        nameReferance: doc["name_referance"] ?? "",
        description: doc["description"] ?? "",
        language: doc["language"] ?? "",
        previewImage: doc["previewImage"] ?? "",
        attachmentLocation: doc["attachmentLocation"] ?? "",
        addedPagesAttachmentLocation: doc["addedPagesAttachmentLocation"] ?? "",
        fieldName: doc["fieldName"] ?? "",
        juz2ToPageNumbers: doc["juz2ToPageNumbers"] ?? {},
        sorahToPageNumbers: doc["sorahToPageNumbers"] ?? {},
      );
    }).toList();
  }

  /// Prepares a list of prints ready for downloading by verifying file existence.
  Future<List<String>> _prepareDownloadingList(List<QuranPrints> prints) async {
    final downloadingList = <String>[];

    for (final print in prints) {
      final fieldName = print.fieldName ?? "";
      if (await downloadFileUsecase.fileExists(fieldName) && !state.printsAlreadyDownloaded.contains(fieldName)) {
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
    return AppConstant.languages
        .firstWhere(
          (lang) => lang.languageCode == languageCode,
          orElse: () => AppConstant.languages[0],
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
  void _handlePrintsDownloadingUpdate(_UpdatePrintsDownloading event, Emitter<QuranCopyState> emit) {
    emit(state.copyWith(printsAlreadyDownloaded: event.print));
  }

  FutureOr<void> _handleSetupCopy(_SetupCopy event, Emitter<QuranCopyState> emit) async {
    final Directory dir = await getApplicationDocumentsDirectory();
    final filePath = Directory('${dir.path}/${event.printItem.fieldName!}');

    FirebaseAnalytics.instance.logEvent(
      name: "use_file",
      parameters: {"file": event.printItem.fieldName!},
    );

    await setupUserSettingUseCase.setQuranCopy(QuranCopy(
      filePath: filePath.path,
      lastPageNumber: 1,
      juz2ToPageNumbers: event.printItem.juz2ToPageNumbers,
      sorahToPageNumbers: event.printItem.sorahToPageNumbers,
    ));
  }

  FutureOr<void> _getListOfPrints(_GetListOfPrints event, Emitter<QuranCopyState> emit) async {
    final hasInternet = await _checkInternetConnection();
    if (!hasInternet) return;

    if (!await _isFirebaseInitialized()) {
      await Firebase.initializeApp();
    }

    /// Fetches Quran prints from Firestore and updates the state.
    try {
      final documents = await locator<FirebaseFirestoreRepository>().getAllDocuments(
        collectionName: FirebaseCollectionConstants.quranPrints,
      );

      if (documents.isEmpty) {
        logDebugMessage(message: 'No documents found in the Quran prints collection.');
        return;
      }

      final prints = _mapDocumentsToPrints(documents);
      final downloadedList = await _prepareDownloadingList(prints);

      emit(state.copyWith(
        listOfPrints: prints,
        printsAlreadyDownloaded: downloadedList,
      ));
    } catch (e) {
      logDebugMessage(message: 'Error fetching Quran prints: $e');
    }
  }
}
