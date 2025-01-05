import 'package:firebase_manager/firebase_manager.dart';
import 'package:islam_app/domain/model/quran_prints.dart';
import 'package:logger_manager/logger_manager.dart';

class QuranPrintsUsecase {
  Future<List<QuranPrints>> getQuranPrints() async {
    try {
      final documents = await FirebaseFirestoreRepository.getAllDocuments(
        collectionName: FirebaseCollectionConstants.quranPrints,
      );

      final listOfPrints = mapDocumentsToQuranPrints(documents);

      return listOfPrints;
    } catch (e) {
      LoggerManagerBase.logDebugMessage(
          message: 'Error fetching documents: $e');
      return [];
    }
  }

  /// Maps Firestore documents to `QuranPrints` objects
  static List<QuranPrints> mapDocumentsToQuranPrints(
      List<Map<String, dynamic>> documents) {
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
