import 'dart:convert';

import 'package:database_manager/database_manager.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:islam_app/domain/model/hisn_al_muslim.dart';
import 'package:islam_app/domain/model/tasbeeh.dart';

class TasbeehUseCase {
  static Future<List<TasbeehModel>> getTasbeehList() async {
    // Load JSON file from assets
    final jsonString = await rootBundle.loadString('assets/json/tasbeeh.json');
    // Parse JSON into List
    final List<dynamic> jsonData = jsonDecode(jsonString);

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
    final title = _parseMultiLang(item['title']);
    final desc = _parseMultiLang(item['desc']);
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
      ar: json?['ar'] ?? '',
      en: json?['en'] ?? '',
    );
  }

  static bool _shouldUseSavedData() {
    final dateStr = DataBaseManagerBase.getFromDatabase(
      key: DatabaseFieldTasbeehConstant.tasbeehLastSavedDate,
      defaultValue: "",
    );

    final parsedDate = DateTime.tryParse(dateStr);
    return parsedDate != null &&
        DateTime.now().difference(parsedDate).inDays == 0;
  }

  static int _getSavedCount(int id) {
    final rawData = DataBaseManagerBase.getFromDatabase(
      key: DatabaseFieldTasbeehConstant.tasbeehSavedCountsJson,
      defaultValue: "",
    );

    try {
      final List<dynamic> jsonList = jsonDecode(rawData);
      final savedList = jsonList
          .map((e) => TasbeehModel.fromJson(e))
          .where((e) => e.id == id)
          .toList();
      return savedList.isNotEmpty ? savedList.first.currentCount : 0;
    } catch (_) {
      return 0;
    }
  }
}
