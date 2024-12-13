import 'dart:async';
import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:islam_app/domain/model/quran_prints.dart';
import 'package:islam_app/my_app/locator.dart';
import 'package:islam_app/domain/repository/firebase_firestore.dart';
import 'package:islam_app/domain/repository/network_info.dart';
import 'package:islam_app/core/constants/app_constant.dart';
import 'package:islam_app/core/constants/firebase_constants.dart';
import 'package:islam_app/utils/download_file.dart';
import 'package:islam_app/utils/logger.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:permission_handler/permission_handler.dart';

part 'quran_prints_event.dart';
part 'quran_prints_state.dart';
part 'quran_prints_bloc.freezed.dart';

class QuranPrintsBloc extends Bloc<QuranPrintsEvent, QuranPrintsState> {
  QuranPrintsBloc() : super(const QuranPrintsState()) {
    on<_UpdatelistOfPrints>(_handleUpdateListOfPrints);
    on<_UpdateInternetConnectionStatus>(_handleUpdateInternetConnectionStatus);
    on<_UpdatePrintsDownloading>(_handleUpdatePrintsDownloading);

    initialize();
  }

  /// Initialization method
  Future<void> initialize() async {
    final hasInternet = await _checkInternetConnectionStatus();

    if (hasInternet) {
      if (!await _isFirebaseInitialized()) {
        await Firebase.initializeApp();
      }
      _fetchQuranPrints();
    }
  }

  /// Checks if Firebase is initialized
  Future<bool> _isFirebaseInitialized() async {
    return Firebase.apps.isNotEmpty;
  }

  /// Checks internet connection and updates the state
  Future<bool> _checkInternetConnectionStatus() async {
    final hasInternet =
        await locator<NetworkInfoRepository>().checkConnectivityOnLaunch();

    add(QuranPrintsEvent.updateInternetConnectionStatus(hasInternet));
    return hasInternet;
  }

  /// Fetches the list of Quran prints
  Future<void> _fetchQuranPrints() async {
    try {
      final documents =
          await locator<FirebaseFirestoreRepository>().getAllDocuments(
        collectionName: FirebaseCollectionConstants.quranPrints,
      );

      final listOfPrints = _mapDocumentsToQuranPrints(documents);

      if (listOfPrints.isEmpty) {
        logDebugMessage(message: 'No documents found in the collection.');
        return;
      }

      final downloadingList = await _prepareDownloadingList(listOfPrints);
      add(QuranPrintsEvent.updatePrintsDownloading(downloadingList));
      add(QuranPrintsEvent.updatelistOfPrints(listOfPrints));
    } catch (e) {
      logDebugMessage(message: 'Error fetching documents: $e');
    }
  }

  /// Maps Firestore documents to `QuranPrints` objects
  List<QuranPrints> _mapDocumentsToQuranPrints(
      List<QueryDocumentSnapshot<Object?>> documents) {
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
    return await FileDownload().fileExists(fileName);
  }

  /// Gets the display name for a language code
  String getNameByLanguageCode(String languageCode) {
    return AppConstant.languages
        .firstWhere(
          (language) => language.languageCode == languageCode,
          orElse: () => AppConstant.languages.first,
        )
        .name;
  }

  /// Requests permission for storage access
  Future<bool> permissionRequest() async {
    final plugin = DeviceInfoPlugin();
    PermissionStatus? storageStatus;

    if (Platform.isAndroid) {
      final androidInfo = await plugin.androidInfo;

      storageStatus = androidInfo.version.sdkInt < 33
          ? await Permission.storage.request()
          : PermissionStatus.granted;
    } else {
      storageStatus = await Permission.storage.request();
    }

    return storageStatus.isGranted;
  }

  /// Event handlers
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
