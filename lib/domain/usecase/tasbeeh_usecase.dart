import 'dart:convert';

import 'package:database_manager/database_manager.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:islam_app/domain/model/hisn_al_muslim.dart';
import 'package:islam_app/domain/model/tasbeeh.dart';

/// A use case class that handles loading and managing Tasbeeh (Islamic prayer beads) data.
///
/// This class provides functionality to:
/// - Load Tasbeeh prayers and dhikr from JSON assets
/// - Parse JSON data into structured [TasbeehModel] objects
/// - Handle saved count data for daily tracking
/// - Support multi-language content (Arabic and English)
/// - Manage daily reset functionality for prayer counts
///
/// Tasbeeh is used for counting Islamic prayers and dhikr (remembrance of Allah).
/// The system tracks daily counts and resets them automatically each day.
class TasbeehUseCase {
  /// Loads and returns a list of Tasbeeh prayers and dhikr.
  ///
  /// This method reads the Tasbeeh JSON file from assets, parses it into
  /// [TasbeehModel] objects, and applies saved count data if it's from
  /// the same day. Each Tasbeeh item contains:
  /// - Arabic and English text
  /// - Target count for completion
  /// - Current count (restored from today's saved data or reset to 0)
  ///
  /// The method automatically handles daily reset functionality - if the
  /// saved data is from a previous day, counts are reset to 0.
  ///
  /// Returns a [Future<List<TasbeehModel>>] containing all Tasbeeh items
  /// with their current count status.
  ///
  /// Throws [//FlutterError] if the asset file cannot be loaded.
  /// Throws [FormatException] if the JSON format is invalid.
  static Future<List<TasbeehModel>> getTasbeehList() async {
    // Load JSON file from assets
    final jsonString = await rootBundle.loadString('assets/json/tasbeeh.json');
    // Parse JSON into List
    final List<dynamic> jsonData = jsonDecode(jsonString) as List<dynamic>;

    // Convert JSON data to List of HisnAlMuslimModel
    return jsonData
        .whereType<Map<String, dynamic>>()
        .map(_parseTasbeehItem)
        .whereType<TasbeehModel>()
        .toList();
  }

  /// Parses an individual Hisn Al Muslim item from JSON.
  static TasbeehModel? _parseTasbeehItem(Map<String, dynamic> item) {
    final id = item['id'] as int?;
    if (id == null) return null;
    // Parse title as MultiLanguageString
    final title = _parseMultiLang(item['title'] as Map<String, dynamic>?);
    final desc = _parseMultiLang(item['desc'] as Map<String, dynamic>?);
    final maxCount = item['count'] as int? ?? 0;

    return TasbeehModel(
      id: id,
      title: title.ar,
      desc: desc.ar,
      maxCount: maxCount,
      currentCount: _shouldUseSavedData() ? _getSavedCount(id) : 0,
    );
  }

  /// Parses a MultiLanguageString from JSON.
  static MultiLanguageString _parseMultiLang(Map<String, dynamic>? json) {
    return MultiLanguageString(
      ar: (json?['ar'] as String?) ?? '',
      en: (json?['en'] as String?) ?? '',
    );
  }

  /// Determines whether to use saved count data based on the last saved date.
  ///
  /// This method checks if the saved Tasbeeh count data is from today.
  /// If the data is from a previous day, it should not be used (counts reset daily).
  /// This implements the Islamic practice of daily dhikr tracking.
  ///
  /// Returns true if saved data is from today and should be used, false otherwise.
  static bool _shouldUseSavedData() {
    final dateStr = DataBaseManagerBase.getFromDatabase(
      key: DatabaseFieldTasbeehConstant.tasbeehLastSavedDate,
      defaultValue: "",
    ) as String;

    final parsedDate = DateTime.tryParse(dateStr);
    return parsedDate != null &&
        DateTime.now().difference(parsedDate).inDays == 0;
  }

  /// Retrieves the saved count for a specific Tasbeeh item by ID.
  ///
  /// This method looks up the saved count data for a particular Tasbeeh item
  /// from the database. It handles JSON parsing and error recovery gracefully.
  ///
  /// Parameters:
  /// - [id]: The unique identifier of the Tasbeeh item
  ///
  /// Returns the saved count for the specified Tasbeeh item, or 0 if not found
  /// or if there's an error parsing the saved data.
  static int _getSavedCount(int id) {
    final rawData = DataBaseManagerBase.getFromDatabase(
      key: DatabaseFieldTasbeehConstant.tasbeehSavedCountsJson,
      defaultValue: "",
    ) as String;

    try {
      final List<dynamic> jsonList = jsonDecode(rawData) as List<dynamic>;
      final savedList = jsonList
          .map((e) => TasbeehModel.fromJson(e as Map<String, dynamic>))
          .where((e) => e.id == id)
          .toList();
      return savedList.isNotEmpty ? savedList.first.currentCount : 0;
    } catch (_) {
      return 0;
    }
  }
}
