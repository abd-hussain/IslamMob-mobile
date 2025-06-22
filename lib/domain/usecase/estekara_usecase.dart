import 'dart:convert';

import 'package:flutter/services.dart' show rootBundle;
import 'package:islam_app/domain/model/estekara_data.dart';
import 'package:islam_app/domain/model/hisn_al_muslim.dart';

/// Use case class for handling Estekara (Islamic consultation/guidance) data operations.
///
/// This class provides functionality to load and parse Estekara data from JSON assets,
/// converting them into structured [EstekaraData] objects for use in the application.
class EstekaraUsecase {
  /// Retrieves a list of Estekara (Islamic consultation/guidance) data.
  ///
  /// Loads and parses Estekara data from the JSON asset file located at
  /// 'assets/json/estekara.json' and returns a list of [EstekaraData] objects.
  ///
  /// Returns a [Future] that completes with a [List] of [EstekaraData] objects
  /// containing the parsed Estekara information.
  ///
  /// Throws an exception if the JSON file cannot be loaded or parsed.
  static Future<List<EstekaraData>> getEstekaraList() =>
      _loadDataFromJson('assets/json/estekara.json');

  static Future<List<EstekaraData>> _loadDataFromJson(String path) async {
    final jsonString = await rootBundle.loadString(path);
    final List<dynamic> jsonData = jsonDecode(jsonString) as List<dynamic>;
    return jsonData
        .whereType<Map<String, dynamic>>()
        .map(_parseHajjOmrahItem)
        .whereType<EstekaraData>()
        .toList();
  }

  static EstekaraData _parseHajjOmrahItem(Map<String, dynamic> item) {
    return EstekaraData(
      id: (item['id'] as int?) ?? 0,
      title: _parseMultiLanguageString(item['title'] as Map<String, dynamic>?),
      details: _parseDetails(item['details'] as Map<String, dynamic>?),
    );
  }

  /// Parses a MultiLanguageString from JSON.
  static MultiLanguageString _parseMultiLanguageString(
    Map<String, dynamic>? json,
  ) {
    if (json == null) return MultiLanguageString(ar: '', en: '');
    return MultiLanguageString(
      ar: (json['ar'] as String?) ?? '',
      en: (json['en'] as String?) ?? '',
    );
  }

  static Map<String, List<String>> _parseDetails(
    Map<String, dynamic>? details,
  ) {
    if (details == null) return {'ar': [], 'en': []};
    return {
      'ar': List<String>.from((details['ar'] as List<dynamic>?) ?? []),
      'en': List<String>.from((details['en'] as List<dynamic>?) ?? []),
    };
  }
}
