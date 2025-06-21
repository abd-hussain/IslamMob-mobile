/// A model class representing an Azkar (Islamic supplication/remembrance).
///
/// Azkar are Islamic supplications, prayers, or remembrances of Allah that
/// are recited at specific times or occasions. This model contains the
/// information needed to display and track the recitation of each Azkar,
/// including its content, recommended count, and current progress.
class AzkarModel {
  /// Unique identifier for this Azkar.
  final int id;

  /// The title or name of the Azkar.
  ///
  /// This is typically a brief description or the opening words
  /// of the supplication.
  final String title;

  /// The full text description or content of the Azkar.
  ///
  /// This contains the complete Arabic text and/or translation
  /// of the supplication to be recited.
  final String desc;

  /// The maximum recommended count for reciting this Azkar.
  ///
  /// This represents how many times the Azkar should be recited
  /// according to Islamic tradition.
  final int maxCount;

  /// The current count of how many times this Azkar has been recited.
  ///
  /// This tracks the user's progress towards completing the
  /// recommended number of recitations.
  final int currentCount;

  /// Creates an [AzkarModel] with the given parameters.
  ///
  /// [id] - Unique identifier for this Azkar.
  /// [title] - The title or name of the Azkar.
  /// [desc] - The full text description or content of the Azkar.
  /// [maxCount] - The maximum recommended count for reciting this Azkar.
  /// [currentCount] - The current count, defaults to 0 if not specified.
  AzkarModel({
    required this.id,
    required this.title,
    required this.desc,
    required this.maxCount,
    this.currentCount = 0,
  });

  /// Creates a copy of this [AzkarModel] with optionally updated values.
  ///
  /// This method allows creating a new instance with some fields updated
  /// while keeping the rest unchanged. Useful for updating the current count
  /// or other properties without modifying the original instance.
  ///
  /// Returns a new [AzkarModel] instance with the specified changes.
  AzkarModel copyWith({
    int? id,
    String? title,
    String? desc,
    int? maxCount,
    int? currentCount,
  }) {
    return AzkarModel(
      id: id ?? this.id,
      title: title ?? this.title,
      desc: desc ?? this.desc,
      maxCount: maxCount ?? this.maxCount,
      currentCount: currentCount ?? this.currentCount,
    );
  }
}
