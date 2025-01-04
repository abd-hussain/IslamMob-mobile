import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:islam_app/core/constants/firebase_constants.dart';
import 'package:islam_app/domain/model/quran_prints.dart';
import 'package:islam_app/domain/repository/firebase_firestore.dart';
import 'package:islam_app/my_app/locator.dart';
import 'package:islam_app/utils/logger.dart';

class QuranPrintsUsecase {
  Future<List<QuranPrints>> getQuranPrints() async {
    try {
      final documents =
          await locator<FirebaseFirestoreRepository>().getAllDocuments(
        collectionName: FirebaseCollectionConstants.quranPrints,
      );

      final listOfPrints = _mapDocumentsToQuranPrints(documents);

      return listOfPrints;
    } catch (e) {
      logDebugMessage(message: 'Error fetching documents: $e');
      return [];
    }
  }

  /// Maps Firestore documents to `QuranPrints` objects
  static List<QuranPrints> _mapDocumentsToQuranPrints(
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
}
