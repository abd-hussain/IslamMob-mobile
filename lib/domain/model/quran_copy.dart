import 'package:freezed_annotation/freezed_annotation.dart';

part 'quran_copy.freezed.dart';

/// A model representing a Quran copy (Mushaf) with its navigation mappings.
///
/// This immutable data class encapsulates information about a specific Quran
/// print or digital copy (Mushaf), including its file reference and navigation
/// mappings for different organizational systems:
///
/// - **File identification** for loading the correct Quran PDF or content
/// - **Page count information** for navigation boundaries
/// - **Juz (Para) mappings** for 30-part navigation system
/// - **Surah (Chapter) mappings** for 114-chapter navigation system
///
/// Different Quran prints may have varying page layouts, fonts, and page counts.
/// This model allows the app to support multiple Mushaf versions while
/// maintaining accurate navigation to specific Surahs and Juz sections.
///
/// The navigation mappings are essential for features like:
/// - Jumping to specific Surahs or Juz
/// - Bookmark management
/// - Index navigation
/// - Cross-referencing between different organizational systems
@freezed
class QuranCopy with _$QuranCopy {
  /// Creates a [QuranCopy] instance representing a specific Quran print/copy.
  ///
  /// Parameters:
  /// - [fileName]: The file name or identifier for this Quran copy
  /// - [lastPageNumber]: The total number of pages in this Mushaf (as string)
  /// - [juz2ToPageNumbers]: Optional mapping from Juz numbers to starting page numbers
  /// - [sorahToPageNumbers]: Optional mapping from Surah names/numbers to starting page numbers
  ///
  /// The [fileName] should correspond to an actual PDF file or content identifier
  /// in the app's assets or downloaded content. The [lastPageNumber] helps with
  /// navigation boundaries and progress tracking.
  ///
  /// The mapping dictionaries allow for quick navigation to specific sections:
  /// - [juz2ToPageNumbers]: Maps Juz identifiers to their starting pages
  /// - [sorahToPageNumbers]: Maps Surah identifiers to their starting pages
  ///
  /// These mappings can be null if navigation data is not available for this copy.
  ///
  /// Example:
  /// ```dart
  /// final mushaf = QuranCopy(
  ///   fileName: 'quran_madinah.pdf',
  ///   lastPageNumber: '604',
  ///   juz2ToPageNumbers: {'1': 1, '2': 22, '3': 42, ...},
  ///   sorahToPageNumbers: {'Al-Fatihah': 1, 'Al-Baqarah': 2, ...},
  /// );
  /// ```
  factory QuranCopy({
    required String fileName,
    required String lastPageNumber,
    required Map<String, dynamic>? juz2ToPageNumbers,
    required Map<String, dynamic>? sorahToPageNumbers,
  }) = _QuranCopy;
}
