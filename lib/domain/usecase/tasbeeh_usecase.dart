import 'dart:convert';

import 'package:flutter/services.dart' show rootBundle;
import 'package:islam_app/domain/model/hisn_al_muslim.dart';
import 'package:islam_app/domain/model/tasbeeh.dart';

class TasbeehUseCase {
  static Future<List<TasbeehModel>> getTasbeehList() async {
    // Load JSON file from assets
    final String jsonString =
        await rootBundle.loadString('assets/json/tasbeeh.json');

    // Parse JSON into List
    final List<dynamic> jsonData = jsonDecode(jsonString);

    // Convert JSON data to List of HisnAlMuslimModel
    // ignore: unnecessary_lambdas
    return jsonData
        .map((item) => _parseTasbeehItem(item))
        .whereType<TasbeehModel>()
        .toList();
  }

  /// Parses an individual Hisn Al Muslim item from JSON.
  static TasbeehModel? _parseTasbeehItem(Map<String, dynamic> item) {
    // Parse title as MultiLanguageString
    final MultiLanguageString title = _parseMultiLanguageString(item['title']);
    final MultiLanguageString desc = _parseMultiLanguageString(item['desc']);

    return TasbeehModel(
      id: item['id'],
      title: title,
      desc: desc,
      maxCount: item['count'],
      currentCount: 0, //TODO: fitch where user reach today
    );
  }

  /// Parses a MultiLanguageString from JSON.
  static MultiLanguageString _parseMultiLanguageString(
      Map<String, dynamic> json) {
    return MultiLanguageString(
      ar: json['ar'] ?? '',
      en: json['en'] ?? '',
    );
  }
}
