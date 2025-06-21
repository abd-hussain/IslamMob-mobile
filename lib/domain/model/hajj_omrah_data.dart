import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:islam_app/domain/model/hisn_al_muslim.dart';

part 'hajj_omrah_data.freezed.dart';

/// A model representing Hajj or Omrah pilgrimage guidance data and content.
///
/// This immutable data class encapsulates comprehensive information about
/// Islamic pilgrimage rituals, including both Hajj (the major pilgrimage)
/// and Omrah (the minor pilgrimage). The model includes:
/// - Unique identification for different pilgrimage steps or rituals
/// - Multi-language titles for international Muslim accessibility
/// - Visual guidance through images
/// - Detailed step-by-step instructions and explanations
///
/// Hajj and Omrah are among the most important Islamic practices:
/// - Hajj is one of the Five Pillars of Islam, obligatory for able Muslims
/// - Omrah is a recommended pilgrimage that can be performed year-round
/// - Both involve specific rituals performed in and around Makkah, Saudi Arabia
/// - Proper guidance is essential for performing these sacred rituals correctly
///
/// The content typically includes ritual instructions, supplications (duas),
/// historical context, and practical guidance for pilgrims.
@freezed
class HajjOmrahData with _$HajjOmrahData {
  /// Creates a [HajjOmrahData] instance representing pilgrimage guidance content.
  ///
  /// Parameters:
  /// - [id]: A unique identifier for this specific pilgrimage step or ritual
  /// - [title]: The multi-language title of the pilgrimage content
  /// - [mainImagePath]: The file path to the main image illustrating this ritual or step
  /// - [details]: A map containing detailed content organized by language codes,
  ///   where each language contains a list of instructional content strings
  ///
  /// The [mainImagePath] should point to an image that visually represents
  /// the pilgrimage ritual or location, helping pilgrims understand the
  /// physical aspects of the practice.
  ///
  /// The [details] map uses language codes as keys (e.g., 'ar', 'en') and
  /// contains lists of strings representing different sections of guidance:
  /// - Step-by-step ritual instructions
  /// - Required supplications (duas) in Arabic
  /// - Translations and transliterations
  /// - Historical and spiritual significance
  /// - Practical tips and recommendations
  ///
  /// Example:
  /// ```dart
  /// final hajjStep = HajjOmrahData(
  ///   id: 1,
  ///   title: MultiLanguageString(ar: 'الإحرام', en: 'Ihram'),
  ///   mainImagePath: 'assets/images/ihram.jpg',
  ///   details: {
  ///     'ar': ['نية الإحرام...', 'الدعاء المستحب...'],
  ///     'en': ['Intention for Ihram...', 'Recommended supplications...'],
  ///   },
  /// );
  /// ```
  factory HajjOmrahData({
    required int id,
    required MultiLanguageString title,
    required String mainImagePath,
    required Map<String, List<String>> details,
  }) = _HajjOmrahData;
}
