import 'package:firebase_manager/firebase_manager.dart';
import 'package:islam_app/domain/constants/language_constant.dart';
import 'package:islam_app/domain/model/quran_prints.dart';
import 'package:logger_manager/logger_manager.dart';

/// A use case class that handles loading and managing Quran print editions.
///
/// This class provides functionality to:
/// - Fetch Quran print editions from Firebase Firestore
/// - Filter out hidden print editions
/// - Map Firestore documents to [QuranPrints] models
/// - Resolve language names from language codes
/// - Handle errors gracefully with logging
class QuranPrintsUsecase {
  /// Retrieves a list of available Quran print editions from Firestore.
  ///
  /// This method fetches all Quran print documents from the Firebase collection,
  /// filters out any hidden editions, and returns them as [QuranPrints] objects.
  /// Each print edition contains information about different Quran layouts,
  /// page numbering systems, and language variants.
  ///
  /// Returns a [Future<List<QuranPrints>>] containing all visible Quran print editions.
  /// Returns an empty list if an error occurs during fetching.
  ///
  /// The method handles the following data:
  /// - Print edition metadata (name, description, language)
  /// - Preview images and attachment locations
  /// - Page number mappings for Juz and Surah navigation
  /// - Visibility status (hidden/visible)
  ///
  /// Throws no exceptions - errors are logged and an empty list is returned.
  Future<List<QuranPrints>> getQuranPrints() async {
    try {
      final documents = await FirebaseFirestoreRepository.getAllDocuments(
        collectionName: FirebaseCollectionConstants.quranPrints,
      );

      final listOfPrints = mapDocumentsToQuranPrints(documents);

      final filteredList = listOfPrints
          .where((element) => !element.hidden!)
          .toList();

      return filteredList;
    } catch (e) {
      LoggerManagerBase.logErrorMessage(
        error: e,
        message: 'Error fetching documents',
      );
      return [];
    }
  }

  /// Maps Firestore documents to `QuranPrints` objects
  static List<QuranPrints> mapDocumentsToQuranPrints(
    List<Map<String, dynamic>> documents,
  ) {
    return documents.map((doc) {
      return QuranPrints(
        nameReferance: (doc["name_referance"] as String?) ?? "",
        description: (doc["description"] as String?) ?? "",
        language: (doc["language"] as String?) ?? "",
        previewImage: (doc["previewImage"] as String?) ?? "",
        attachmentLocation: (doc["attachmentLocation"] as String?) ?? "",
        addedPagesAttachmentLocation:
            (doc["addedPagesAttachmentLocation"] as String?) ?? "",
        fieldName: (doc["fieldName"] as String?) ?? "",
        juz2ToPageNumbers:
            (doc["juz2ToPageNumbers"] as Map<String, dynamic>?) ?? {},
        sorahToPageNumbers:
            (doc["sorahToPageNumbers"] as Map<String, dynamic>?) ?? {},
        hidden: (doc["hidden"] as bool?) ?? false,
      );
    }).toList();
  }

  /// Gets a language name by its code.
  String getLanguageNameByCode(String languageCode) {
    return LanguageConstant.languages
        .firstWhere(
          (lang) => lang.languageCode == languageCode,
          orElse: () => LanguageConstant.languages.first,
        )
        .name;
  }
}
