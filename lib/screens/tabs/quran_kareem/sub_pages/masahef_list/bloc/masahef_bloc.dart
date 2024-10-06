import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
// import 'package:hive_flutter/hive_flutter.dart';
import 'package:islam_app/models/rest_api/quran_prints.dart';
import 'package:islam_app/services/general/firebase_services.dart';
import 'package:islam_app/utils/constants/app_constant.dart';
// import 'package:islam_app/utils/constants/database_constant.dart';
import 'package:islam_app/utils/constants/firebase_constants.dart';
import 'package:islam_app/utils/logger.dart';

part 'masahef_event.dart';
part 'masahef_state.dart';
part 'masahef_bloc.freezed.dart';

class MasahefBloc extends Bloc<MasahefEvent, MasahefState> {
  MasahefBloc() : super(const MasahefState()) {
    on<_UpdatelistOfPrints>(_updatelistOfPrints);

    _getListOfPrints();
  }
  // final _box = Hive.box(DatabaseBoxConstant.userInfo);

  Future<void> _getListOfPrints() async {
    final List<QueryDocumentSnapshot<Object?>> documents;
    try {
      documents = await FirestoreService().getAllDocumentsFromFireStore(
          collectionName: FirebaseConstants.quranPrints);
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
      obj.addedPagesAttachmentLocation =
          doc["addedPagesAttachmentLocation"] ?? "";
      // obj.juz2ToPageNumbers = doc["juz2ToPageNumbers"] ?? [];
      // obj.sorahToPageNumbers = doc["sorahToPageNumbers"] ?? [];

      listOfPrints.add(obj);
    }
    // //TODO

    add(MasahefEvent.updatelistOfPrints(listOfPrints));
  }

  String getNameByLanguageCode(String languageCode) {
    for (var language in AppConstant.languages) {
      if (language.languageCode == languageCode) {
        return language.name;
      }
    }
    return "";
  }

  FutureOr<void> _updatelistOfPrints(
      _UpdatelistOfPrints event, Emitter<MasahefState> emit) {
    emit(state.copyWith(listOfPrints: event.list));
  }
}
