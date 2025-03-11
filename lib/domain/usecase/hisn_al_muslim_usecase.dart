import 'dart:convert';

import 'package:database_manager/database_manager.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:islam_app/domain/model/hisn_al_muslim.dart';

class HisnAlMuslimUseCase {
  static Future<List<HisnAlMuslimModel>> getHisnAlMuslimList() async {
    // Load JSON file from assets
    final String jsonString =
        await rootBundle.loadString('assets/json/hisn_al_muslim.json');

    // Parse JSON into List
    final List<dynamic> jsonData = jsonDecode(jsonString);

    // Extract favorite IDs (Replace this with actual storage method)
    final List<int> favoriteIds = _getFavoriteIds();
    //TODO :add and localize these

    // Convert JSON to List of HisnAlMuslimModel
    return jsonData
        .map((item) {
          final details = item['details'];

          if (details['type'] == 'text') {
            return HisnAlMuslimModel(
              id: item['id'],
              title: item['title'],
              isFavorite: favoriteIds.contains(item['id']),
              details: HisnAlMuslimModelState.text(
                List<String>.from(details['data']),
                List<String>.from(details['references'] ?? []),
              ),
            );
          } else if (details['type'] == 'counter') {
            return HisnAlMuslimModel(
              id: item['id'],
              title: item['title'],
              isFavorite: _getFavoriteIds().contains(item['id']),
              details: HisnAlMuslimModelState.counter(
                (details['data'] as List)
                    .map((d) => HisnAlMuslimDetailsModel(
                          descriptionTitle: d['descriptionTitle'] ?? "",
                          description: d['description'],
                          references: List<String>.from(d['references'] ?? []),
                          readCount: d['readCount'] ?? 1,
                        ))
                    .toList(),
              ),
            );
          }
          return null; // Handle unexpected cases
        })
        .whereType<HisnAlMuslimModel>()
        .toList();
  }

  static List<int> _getFavoriteIds() {
    final data = DataBaseManagerBase.getFromDatabase(
      key: DatabaseFieldInHisnAlMuslimConstant.favoriteList,
      defaultValue: [1, 2, 3],
    );

    return (data as List).map((e) => e as int).toList(); // Ensures List<int>
  }

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
