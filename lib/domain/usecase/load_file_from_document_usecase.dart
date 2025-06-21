import 'dart:io';

import 'package:database_manager/database_manager.dart';
import 'package:path_provider/path_provider.dart';

/// Use case for loading Quran files from the app's document directory.
///
/// This class handles the retrieval of downloaded Quran PDF files (Mushaf)
/// from the device's local storage. It's essential for:
/// - **Offline Quran reading** when internet is unavailable
/// - **Loading user-selected Mushaf** based on their preferences
/// - **File path resolution** for PDF viewer integration
/// - **Storage management** of Islamic content
///
/// The use case works with the user's selected Quran print edition,
/// which is stored in the app's database as a preference. This allows
/// users to choose from different Mushaf styles (Madinah, Uthmani, etc.)
/// and have their choice remembered for consistent reading experience.
///
/// This is crucial for maintaining offline functionality, ensuring Muslims
/// can access the Quran even without internet connectivity, which is
/// particularly important for prayer and study purposes.
class LoadFileFromDocumentUseCase {
  /// Retrieves the file path for the currently selected Quran print edition.
  ///
  /// This method loads the user's preferred Quran print name from the database
  /// and constructs the complete file path where the PDF should be located
  /// in the app's document directory.
  ///
  /// The process involves:
  /// 1. Reading the selected Quran print name from user preferences
  /// 2. Getting the app's document directory path
  /// 3. Constructing the complete file path for the Mushaf PDF
  ///
  /// Returns the complete file path as a string where the selected Quran
  /// PDF file should be located. Returns null if no print name is configured
  /// or if there's an error accessing the file system.
  ///
  /// This path can then be used with PDF viewers to display the Quran
  /// content for reading, study, and prayer purposes.
  ///
  /// Example:
  /// ```dart
  /// final usecase = LoadFileFromDocumentUseCase();
  /// final quranPath = await usecase.call();
  /// if (quranPath != null) {
  ///   // Load the Quran PDF from the path
  ///   loadPdfViewer(quranPath);
  /// }
  /// ```
  Future<String?> call() async {
    final printName = DataBaseManagerBase.getFromDatabase(
      key: DatabaseFieldQuranCopyConstant.quranKaremPrintNameToUse,
      defaultValue: "",
    );
    final Directory dir = await getApplicationDocumentsDirectory();
    final filePath = Directory('${dir.path}/$printName');

    return filePath.path;
  }
}
