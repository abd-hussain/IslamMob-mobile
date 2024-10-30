import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:islam_app/models/rest_api/quran_prints.dart';
import 'package:islam_app/services/general/firebase_services.dart';
import 'package:islam_app/utils/constants/app_constant.dart';
import 'package:islam_app/utils/constants/firebase_constants.dart';
import 'package:islam_app/utils/download_file.dart';
import 'package:islam_app/utils/logger.dart';
import 'package:permission_handler/permission_handler.dart';

part 'quran_list_prints_event.dart';
part 'quran_list_prints_state.dart';
part 'quran_list_prints_bloc.freezed.dart';

class QuranListPrintsBloc extends Bloc<QuranListPrintsEvent, QuranListPrintsState> {
  QuranListPrintsBloc() : super(const QuranListPrintsState()) {
    on<_UpdatelistOfPrints>(_updatelistOfPrints);

    _getListOfPrints();
  }

  Future<void> _getListOfPrints() async {
    final List<QueryDocumentSnapshot<Object?>> documents;
    print("_getListOfPrints");
    try {
      documents = await FirestoreService().getAllDocumentsFromFireStore(collectionName: FirebaseConstants.quranPrints);
    } catch (e) {
      logDebugMessage(message: 'Error fetching documents: $e ');
      return;
    }

    List<QuranPrints> listOfPrints = [];

    for (final doc in documents) {
      QuranPrints obj = QuranPrints();

      obj.nameReferance = doc["name_referance"] ?? "";
      obj.description = doc["description"] ?? "";
      obj.language = doc["language"] ?? "";
      obj.previewImage = doc["previewImage"] ?? "";
      obj.attachmentLocation = doc["attachmentLocation"] ?? "";
      obj.addedPagesAttachmentLocation = doc["addedPagesAttachmentLocation"] ?? "";
      obj.fieldName = doc["fieldName"] ?? "";
      obj.juz2ToPageNumbers = doc["juz2ToPageNumbers"] ?? {};
      obj.sorahToPageNumbers = doc["sorahToPageNumbers"] ?? {};
      listOfPrints.add(obj);
    }

    add(QuranListPrintsEvent.updatelistOfPrints(listOfPrints));
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
    final android = await plugin.androidInfo;

    final storageStatus = android.version.sdkInt < 33 ? await Permission.storage.request() : PermissionStatus.granted;

    if (storageStatus.isGranted) {
      return true;
    } else {
      return false;
    }
  }

  Future<bool> verifyIfFileExists(String fileName) async {
    return await FileDownload().checkIfFileExists(fileName);
  }

  Future<String> getFilePath(String fileName) async {
    return await FileDownload().getFilePath(fileName);
  }

  FutureOr<void> _updatelistOfPrints(_UpdatelistOfPrints event, Emitter<QuranListPrintsState> emit) {
    emit(state.copyWith(listOfPrints: event.list));
  }
}
