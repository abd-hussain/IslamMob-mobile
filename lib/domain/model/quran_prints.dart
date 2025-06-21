import 'package:freezed_annotation/freezed_annotation.dart';

part 'quran_prints.freezed.dart';

/// A model representing different Quran print editions available in the app.
///
/// This immutable data class encapsulates information about various Quran
/// print editions (Mushaf) that users can download and use for reading.
/// Each print edition may have different fonts, layouts, page counts, and
/// visual styles to accommodate different preferences and traditions.
///
/// The model includes:
/// - **Identification and metadata** for the print edition
/// - **Localization support** for different languages
/// - **File locations** for downloading and storage
/// - **Navigation mappings** for Surah and Juz indexing
/// - **Visibility control** for managing available editions
///
/// This supports the app's multi-Mushaf functionality, allowing users to
/// choose from various authentic Quran print editions based on their
/// preferences, regional traditions, or visual accessibility needs.
@freezed
class QuranPrints with _$QuranPrints {
  /// Creates a [QuranPrints] instance representing a Quran print edition.
  ///
  /// Parameters:
  /// - [fieldName]: Internal identifier for this print edition
  /// - [nameReferance]: Reference name or title of the print edition
  /// - [description]: Detailed description of the print edition's features
  /// - [language]: Primary language or script used in this edition
  /// - [previewImage]: URL or path to preview image showing the print style
  /// - [attachmentLocation]: Download URL or storage location for the main file
  /// - [addedPagesAttachmentLocation]: Additional pages or supplements location
  /// - [juz2ToPageNumbers]: Mapping from Juz numbers to their starting pages
  /// - [sorahToPageNumbers]: Mapping from Surah names/numbers to their starting pages
  /// - [hidden]: Whether this print edition should be hidden from users
  ///
  /// All parameters are optional to support flexible configuration and
  /// partial data loading scenarios. The navigation mappings enable
  /// quick jumping to specific Quran sections within each print edition.
  ///
  /// Example:
  /// ```dart
  /// final madinahMushaf = QuranPrints(
  ///   fieldName: 'madinah_mushaf',
  ///   nameReferance: 'Madinah Mushaf',
  ///   description: 'Official Mushaf from King Fahd Complex',
  ///   language: 'Arabic',
  ///   previewImage: 'assets/previews/madinah.jpg',
  ///   attachmentLocation: 'https://example.com/madinah_mushaf.pdf',
  ///   juz2ToPageNumbers: {'1': 1, '2': 22, '3': 42},
  ///   sorahToPageNumbers: {'Al-Fatihah': 1, 'Al-Baqarah': 2},
  ///   hidden: false,
  /// );
  /// ```
  factory QuranPrints({
    String? fieldName,
    String? nameReferance,
    String? description,
    String? language,
    String? previewImage,
    String? attachmentLocation,
    String? addedPagesAttachmentLocation,
    Map<String, dynamic>? juz2ToPageNumbers,
    Map<String, dynamic>? sorahToPageNumbers,
    bool? hidden,
  }) = _QuranPrints;
}
