/// Constants for database keys related to Tasbeeh (dhikr counter) data.
///
/// This class provides string constants used as database keys for storing
/// Tasbeeh-related data, including the last saved date and count information.
/// Tasbeeh refers to the Islamic practice of counting prayers or dhikr
/// (remembrance of Allah) using prayer beads or a digital counter.
class DatabaseFieldTasbeehConstant {
  /// Database key for the last saved date of Tasbeeh counts.
  ///
  /// Stores the date when the Tasbeeh counts were last saved to the database.
  /// This is used to track when the user last updated their dhikr counts.
  static const String tasbeehLastSavedDate = "tasbeehLastSavedDate";

  /// Database key for the saved Tasbeeh counts in JSON format.
  ///
  /// Stores the Tasbeeh count data as a JSON string, which may include
  /// different types of dhikr, their counts, and related metadata.
  /// This allows for flexible storage of various Tasbeeh configurations.
  static const String tasbeehSavedCountsJson = "tasbeehSavedCountsJson";
}
