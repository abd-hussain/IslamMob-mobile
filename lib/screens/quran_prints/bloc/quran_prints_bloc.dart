import 'dart:async';
import 'dart:io';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:islam_app/models/rest_api/quran_prints.dart';
import 'package:islam_app/my_app/locator.dart';
import 'package:islam_app/services/general/firebase_services.dart';
import 'package:islam_app/services/general/network_info_service.dart';
import 'package:islam_app/utils/constants/app_constant.dart';
import 'package:islam_app/utils/constants/firebase_constants.dart';
import 'package:islam_app/utils/download_file.dart';
import 'package:islam_app/utils/logger.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:permission_handler/permission_handler.dart';

part 'quran_prints_event.dart';
part 'quran_prints_state.dart';
part 'quran_prints_bloc.freezed.dart';

class QuranPrintsBloc extends Bloc<QuranPrintsEvent, QuranPrintsState> {
  QuranPrintsBloc() : super(const QuranPrintsState()) {
    on<_UpdatelistOfPrints>(_updatelistOfPrints);
    on<_UpdateInternetConnectionStatus>(_updateInternetConnectionStatus);
    on<_UpdatePrintsDownloading>(_updatePrintsDownloading);

    initial();
  }

  Future<void> initial() async {
    _checkInternetConnectionStatus().then((value) async {
      if (!await isFirebaseInitialized()) {
        await Firebase.initializeApp();
      }
      _getListOfPrints();
    });
  }

  Future<bool> isFirebaseInitialized() async {
    return Firebase.apps.isNotEmpty;
  }

  Future<bool> _checkInternetConnectionStatus() async {
    if (!await locator<NetworkInfoService>().checkConnectivityonLunching()) {
      add(QuranPrintsEvent.updateInternetConnectionStatus(false));
      return false;
    } else {
      add(QuranPrintsEvent.updateInternetConnectionStatus(true));
      return true;
    }
  }

  Future<void> _getListOfPrints() async {
    try {
      final documents =
          await locator<FirestoreService>().getAllDocumentsFromFireStore(
        collectionName: FirebaseConstants.quranPrints,
      );
      final listOfPrints = documents.map((doc) {
        return QuranPrints(
          nameReferance: doc["name_referance"] ?? "",
          description: doc["description"] ?? "",
          language: doc["language"] ?? "",
          previewImage: doc["previewImage"] ?? "",
          attachmentLocation: doc["attachmentLocation"] ?? "",
          addedPagesAttachmentLocation:
              doc["addedPagesAttachmentLocation"] ?? "",
          fieldName: doc["fieldName"] ?? "",
          juz2ToPageNumbers: doc["juz2ToPageNumbers"] ?? {},
          sorahToPageNumbers: doc["sorahToPageNumbers"] ?? {},
        );
      }).toList();

      if (listOfPrints.isEmpty) {
        logDebugMessage(message: 'No documents found in the collection.');
        return;
      }

      // Filter out prints with non-existent files and update downloading list
      final downloadingList =
          await _filterAndPrepareDownloadingList(listOfPrints);
      add(QuranPrintsEvent.updatePrintsDownloading(downloadingList));

      // Update the state with the full list of prints
      add(QuranPrintsEvent.updatelistOfPrints(listOfPrints));
    } catch (e) {
      logDebugMessage(message: 'Error fetching documents: $e');
    }
  }

  Future<List<String>> _filterAndPrepareDownloadingList(
      List<QuranPrints> listOfPrints) async {
    final downloadingList = <String>[];

    for (final item in listOfPrints) {
      final fieldName = item.fieldName ?? "";
      if (await verifyIfFileExists(fieldName) &&
          !state.printsDownloading.contains(fieldName)) {
        downloadingList.add(fieldName);
      }
    }

    return downloadingList;
  }

  Future<bool> verifyIfFileExists(String fileName) async {
    return await FileDownload().checkIfFileExists(fileName);
  }

  String getNameByLanguageCode(String languageCode) {
    for (var language in AppConstant.languages) {
      if (language.languageCode == languageCode) {
        return language.name;
      }
    }
    return "";
  }

  Future<bool> permissionRequest() async {
    final plugin = DeviceInfoPlugin();
    PermissionStatus? storageStatus;

    if (Platform.isAndroid) {
      final android = await plugin.androidInfo;

      storageStatus = android.version.sdkInt < 33
          ? await Permission.storage.request()
          : PermissionStatus.granted;
    } else {
      storageStatus = await Permission.storage.request();
    }

    if (storageStatus.isGranted) {
      return true;
    } else {
      return false;
    }
  }

  FutureOr<void> _updatelistOfPrints(
      _UpdatelistOfPrints event, Emitter<QuranPrintsState> emit) {
    emit(state.copyWith(listOfPrints: event.list));
  }

  FutureOr<void> _updateInternetConnectionStatus(
      _UpdateInternetConnectionStatus event, Emitter<QuranPrintsState> emit) {
    emit(state.copyWith(internetConnectionStauts: event.status));
  }

  FutureOr<void> _updatePrintsDownloading(
      _UpdatePrintsDownloading event, Emitter<QuranPrintsState> emit) {
    emit(state.copyWith(printsDownloading: event.print));
  }
}
