import 'dart:convert';

import 'package:flutter/services.dart' show rootBundle;
import 'package:islam_app/domain/model/estekara_data.dart';
import 'package:islam_app/domain/model/hisn_al_muslim.dart';

class EstekaraUsecase {
  static Future<List<EstekaraData>> getEstekaraList() =>
      _loadDataFromJson('assets/json/estekara.json');

  static Future<List<EstekaraData>> _loadDataFromJson(String path) async {
    final jsonString = await rootBundle.loadString(path);
    final List<dynamic> jsonData = jsonDecode(jsonString);
    return jsonData
        .whereType<Map<String, dynamic>>()
        .map(_parseHajjOmrahItem)
        .whereType<EstekaraData>()
        .toList();
  }

  static EstekaraData _parseHajjOmrahItem(Map<String, dynamic> item) {
    return EstekaraData(
      id: item['id'] ?? "",
      title: _parseMultiLanguageString(item['title']),
      details: _parseDetails(item['details']),
    );
  }

  /// Parses a MultiLanguageString from JSON.
  static MultiLanguageString _parseMultiLanguageString(
      Map<String, dynamic>? json) {
    if (json == null) return MultiLanguageString(ar: '', en: '');
    return MultiLanguageString(
      ar: json['ar'] ?? '',
      en: json['en'] ?? '',
    );
  }

  static Map<String, List<String>> _parseDetails(
      Map<String, dynamic>? details) {
    if (details == null) return {'ar': [], 'en': []};
    return {
      'ar': List<String>.from(details['ar'] ?? []),
      'en': List<String>.from(details['en'] ?? []),
    };
  }
}
