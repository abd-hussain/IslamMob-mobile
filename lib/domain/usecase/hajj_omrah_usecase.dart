import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:islam_app/domain/model/hajj_omrah_data.dart';
import 'package:islam_app/domain/model/hisn_al_muslim.dart';

class HajjOmrahUsecase {
  static Future<List<HajjOmrahData>> getHajjList() =>
      _loadDataFromJson('assets/json/hajj.json');

  static Future<List<HajjOmrahData>> getOmrahList() =>
      _loadDataFromJson('assets/json/omrah.json');

  static Future<List<HajjOmrahData>> _loadDataFromJson(String path) async {
    final jsonString = await rootBundle.loadString(path);
    final List<dynamic> jsonData = jsonDecode(jsonString);
    return jsonData
        .whereType<Map<String, dynamic>>()
        .map(_parseHajjOmrahItem)
        .whereType<HajjOmrahData>()
        .toList();
  }

  static HajjOmrahData _parseHajjOmrahItem(Map<String, dynamic> item) {
    return HajjOmrahData(
      id: item['id'] ?? "",
      title: _parseMultiLanguageString(item['title']),
      desc: _parseMultiLanguageString(item['desc']),
      imagePath: item['mainImagePath'] ?? "",
      descImagePath: item['descImagePath'] ?? "",
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
}
