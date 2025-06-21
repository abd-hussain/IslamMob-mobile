import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:islam_app/domain/model/hajj_omrah_data.dart';
import 'package:islam_app/domain/model/hisn_al_muslim.dart';

/// A use case class that handles loading and parsing Hajj and Omrah data.
///
/// This class provides functionality to:
/// - Load Hajj guidance data from JSON assets
/// - Load Omrah guidance data from JSON assets
/// - Parse JSON data into structured [HajjOmrahData] models
/// - Handle multi-language content (Arabic and English)
class HajjOmrahUsecase {
  /// Loads and returns a list of Hajj guidance data.
  ///
  /// This method reads the Hajj JSON file from assets and parses it into
  /// a list of [HajjOmrahData] objects containing step-by-step guidance
  /// for performing Hajj pilgrimage.
  ///
  /// Returns a [Future<List<HajjOmrahData>>] containing all Hajj guidance items.
  ///
  /// Throws [//FlutterError] if the asset file cannot be loaded.
  static Future<List<HajjOmrahData>> getHajjList() =>
      _loadDataFromJson('assets/json/hajj_omrah/hajj.json');

  /// Loads and returns a list of Omrah guidance data.
  ///
  /// This method reads the Omrah JSON file from assets and parses it into
  /// a list of [HajjOmrahData] objects containing step-by-step guidance
  /// for performing Omrah pilgrimage.
  ///
  /// Returns a [Future<List<HajjOmrahData>>] containing all Omrah guidance items.
  ///
  /// Throws [//FlutterError] if the asset file cannot be loaded.
  static Future<List<HajjOmrahData>> getOmrahList() =>
      _loadDataFromJson('assets/json/hajj_omrah/omrah.json');

  static Future<List<HajjOmrahData>> _loadDataFromJson(String path) async {
    final jsonString = await rootBundle.loadString(path);
    final List<dynamic> jsonData = jsonDecode(jsonString) as List<dynamic>;
    return jsonData
        .whereType<Map<String, dynamic>>()
        .map(_parseHajjOmrahItem)
        .whereType<HajjOmrahData>()
        .toList();
  }

  static HajjOmrahData _parseHajjOmrahItem(Map<String, dynamic> item) {
    return HajjOmrahData(
      id: (item['id'] as int?) ?? 0,
      title: _parseMultiLanguageString(item['title'] as Map<String, dynamic>?),
      mainImagePath: (item['mainImagePath'] as String?) ?? "",
      details: _parseDetails(item['details'] as Map<String, dynamic>?),
    );
  }

  /// Parses a MultiLanguageString from JSON.
  static MultiLanguageString _parseMultiLanguageString(
      Map<String, dynamic>? json) {
    if (json == null) return MultiLanguageString(ar: '', en: '');
    return MultiLanguageString(
      ar: (json['ar'] as String?) ?? '',
      en: (json['en'] as String?) ?? '',
    );
  }

  static Map<String, List<String>> _parseDetails(
      Map<String, dynamic>? details) {
    if (details == null) return {'ar': [], 'en': []};
    return {
      'ar': List<String>.from((details['ar'] as List<dynamic>?) ?? []),
      'en': List<String>.from((details['en'] as List<dynamic>?) ?? []),
    };
  }
}
