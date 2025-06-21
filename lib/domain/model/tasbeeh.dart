import 'package:freezed_annotation/freezed_annotation.dart';

part 'tasbeeh.freezed.dart';
part 'tasbeeh.g.dart';

/// A model representing a Tasbeeh (Islamic prayer beads/counter) item.
///
/// This immutable data class encapsulates information about Islamic dhikr
/// (remembrance of Allah) items that are counted using digital prayer beads
/// or counter functionality. Tasbeeh is a form of Islamic meditation and
/// worship involving the repetitive recitation of short prayers or phrases.
///
/// The model includes:
/// - **Identification** for tracking different dhikr items
/// - **Content information** with title and description
/// - **Counting mechanism** with target and current progress
/// - **Persistence support** through JSON serialization
///
/// Common Tasbeeh items include:
/// - SubhanAllah (Glory be to Allah) - typically 33 times
/// - Alhamdulillah (Praise be to Allah) - typically 33 times
/// - Allahu Akbar (Allah is Greatest) - typically 34 times
/// - La ilaha illa Allah (There is no god but Allah) - various counts
/// - Istighfar (seeking forgiveness) - typically 100 times
@freezed
class TasbeehModel with _$TasbeehModel {
  /// Creates a [TasbeehModel] instance representing a dhikr counter item.
  ///
  /// Parameters:
  /// - [id]: Unique identifier for this Tasbeeh item
  /// - [title]: The name or title of the dhikr (e.g., "SubhanAllah")
  /// - [desc]: Description or the actual Arabic text to be recited
  /// - [maxCount]: The target number of repetitions for this dhikr
  /// - [currentCount]: The current progress count (how many times recited)
  ///
  /// The [title] typically contains the transliterated name of the dhikr,
  /// while [desc] may contain the Arabic text, translation, or detailed
  /// description. The [maxCount] represents the recommended or intended
  /// number of repetitions based on Islamic traditions.
  ///
  /// The [currentCount] tracks the user's progress and should be persisted
  /// to allow users to continue their dhikr sessions across app restarts.
  ///
  /// Example:
  /// ```dart
  /// final subhanAllah = TasbeehModel(
  ///   id: 1,
  ///   title: 'SubhanAllah',
  ///   desc: 'سبحان الله - Glory be to Allah',
  ///   maxCount: 33,
  ///   currentCount: 15,
  /// );
  /// ```
  factory TasbeehModel({
    required int id,
    required String title,
    required String desc,
    required int maxCount,
    required int currentCount,
  }) = _TasbeehModel;

  /// Creates a [TasbeehModel] instance from JSON data.
  ///
  /// This factory constructor enables deserialization of Tasbeeh data
  /// from JSON format, supporting data persistence and API integration.
  /// It's used for loading saved Tasbeeh progress and configurations.
  factory TasbeehModel.fromJson(Map<String, dynamic> json) =>
      _$TasbeehModelFromJson(json);
}
