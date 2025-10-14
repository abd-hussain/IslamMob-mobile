import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:islam_app/domain/model/hisn_al_muslim.dart';

part 'estekara_data.freezed.dart';

/// A model representing Istikhara (Islamic guidance prayer) data and content.
///
/// This immutable data class encapsulates information about Istikhara, which is
/// an Islamic prayer for seeking guidance from Allah when making important
/// decisions. The model includes:
/// - Unique identification for different Istikhara scenarios or types
/// - Multi-language titles for internationalization support
/// - Detailed content including prayers, instructions, and guidance
///
/// Istikhara is a significant Islamic practice where Muslims seek divine guidance
/// through specific prayers and supplications when facing important life decisions.
/// The content typically includes:
/// - The Istikhara prayer (Salat al-Istikhara) in Arabic
/// - Translations and transliterations
/// - Instructions on how to perform the prayer
/// - Guidance on interpreting the results
/// - When and how to use Istikhara
@freezed
abstract class EstekaraData with _$EstekaraData {
  /// Creates an [EstekaraData] instance representing Istikhara guidance content.
  ///
  /// Parameters:
  /// - [id]: A unique identifier for this specific Istikhara content or type
  /// - [title]: The multi-language title of the Istikhara content
  /// - [details]: A map containing detailed content organized by language codes,
  ///   where each language contains a list of content strings (prayers, instructions, etc.)
  ///
  /// The [details] map typically uses language codes as keys (e.g., 'ar', 'en')
  /// and contains lists of strings representing different sections of the
  /// Istikhara guidance, such as:
  /// - The Arabic prayer text
  /// - Transliteration for non-Arabic speakers
  /// - Translation in the target language
  /// - Step-by-step instructions
  /// - Explanations and guidance
  ///
  /// Example:
  /// ```dart
  /// final istikhara = EstekaraData(
  ///   id: 1,
  ///   title: MultiLanguageString(ar: 'صلاة الاستخارة', en: 'Istikhara Prayer'),
  ///   details: {
  ///     'ar': ['اللهم إني أستخيرك بعلمك...', 'تعليمات الصلاة...'],
  ///     'en': ['O Allah, I seek Your guidance...', 'Prayer instructions...'],
  ///   },
  /// );
  /// ```
  factory EstekaraData({
    required int id,
    required MultiLanguageString title,
    required Map<String, List<String>> details,
  }) = _EstekaraData;
}
