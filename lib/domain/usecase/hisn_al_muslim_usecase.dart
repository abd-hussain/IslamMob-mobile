import 'dart:convert';

import 'package:database_manager/database_manager.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:islam_app/domain/model/hisn_al_muslim.dart';

//TODO: Continue Filling the JSON File
class HisnAlMuslimUseCase {
  static Future<List<HisnAlMuslimModel>> getHisnAlMuslimList() async {
    // Load JSON file from assets
    final String jsonString =
        await rootBundle.loadString('assets/json/hisn_al_muslim.json');

    // Parse JSON into List
    final List<dynamic> jsonData = jsonDecode(jsonString);

    // Extract favorite IDs (Replace this with actual storage method)
    final List<int> favoriteIds = _getFavoriteIds();

    // Convert JSON data to List of HisnAlMuslimModel
    return jsonData
        .map((item) => _parseHisnAlMuslimItem(item, favoriteIds))
        .whereType<HisnAlMuslimModel>()
        .toList();
  }

  /// Parses an individual Hisn Al Muslim item from JSON.
  static HisnAlMuslimModel? _parseHisnAlMuslimItem(
      Map<String, dynamic> item, List<int> favoriteIds) {
    final details = item['details'];

    // Parse title as MultiLanguageString
    final MultiLanguageString title = _parseMultiLanguageString(item['title']);

    if (details['type'] == 'text') {
      return HisnAlMuslimModel(
        id: item['id'],
        title: title,
        isFavorite: favoriteIds.contains(item['id']),
        details: HisnAlMuslimModelState.text(
          list: (details['list'] as List)
              // ignore: unnecessary_lambdas
              .map((e) => _parseMultiLanguageString(e))
              .toList(),
          referance: (details['referances'] as List)
              // ignore: unnecessary_lambdas
              .map((e) => _parseMultiLanguageString(e))
              .toList(),
        ),
      );
    } else if (details['type'] == 'counter') {
      return HisnAlMuslimModel(
        id: item['id'],
        title: title,
        isFavorite: favoriteIds.contains(item['id']),
        details: HisnAlMuslimModelState.counter(
          (details['list'] as List)
              // ignore: unnecessary_lambdas
              .map((d) => _parseHisnAlMuslimDetails(d))
              .toList(),
        ),
      );
    }

    return null; // Handle unexpected cases
  }

  /// Parses a HisnAlMuslimDetailsModel from JSON.
  static HisnAlMuslimCounterDetailsModel _parseHisnAlMuslimDetails(
      Map<String, dynamic> json) {
    return HisnAlMuslimCounterDetailsModel(
      descriptionTitle: _parseMultiLanguageString(json['descriptionTitle']),
      description: _parseMultiLanguageString(json['description']),
      // ignore: unnecessary_lambdas
      references: (json['references'] as List)
          .map((e) => _parseMultiLanguageString(e))
          .toList(),
      readCount: json['readCount'] ?? 1,
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

  /// Retrieves favorite IDs from the database.
  static List<int> _getFavoriteIds() {
    final data = DataBaseManagerBase.getFromDatabase(
      key: DatabaseFieldInHisnAlMuslimConstant.favoriteList,
      defaultValue: [],
    );
    return (data as List).map((e) => e as int).toList(); // Ensures List<int>
  }

  /// Adds or removes an item from the favorites list.
  static void addRemoveNewItemToFavoriteList(int id) {
    final data = DataBaseManagerBase.getFromDatabase(
      key: DatabaseFieldInHisnAlMuslimConstant.favoriteList,
      defaultValue: [],
    );

    final List<int> favoriteIds = (data as List).map((e) => e as int).toList();

    if (favoriteIds.contains(id)) {
      favoriteIds.remove(id);
    } else {
      favoriteIds.add(id);
    }

    DataBaseManagerBase.saveInDatabase(
        key: DatabaseFieldInHisnAlMuslimConstant.favoriteList,
        value: favoriteIds);
  }
}
