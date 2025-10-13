import 'dart:convert';

import 'package:flutter/services.dart' show rootBundle;
import 'package:islam_app/domain/model/hisn_al_muslim.dart';
import 'package:islam_app/my_app/locator.dart';
import 'package:preferences/preferences.dart';

/// A use case class that handles loading and managing Hisn Al Muslim (Fortress of the Muslim) data.
///
/// This class provides functionality to:
/// - Load Islamic supplications and prayers from JSON assets
/// - Parse JSON data into structured [HisnAlMuslimModel] objects
/// - Manage favorite supplications list
/// - Handle both text-based and counter-based supplications
/// - Support multi-language content (Arabic and English)
class HisnAlMuslimUseCase {
  /// Loads and returns a list of all Hisn Al Muslim supplications.
  ///
  /// This method reads the Hisn Al Muslim JSON file from assets, parses it,
  /// and returns a list of [HisnAlMuslimModel] objects. Each model contains
  /// Islamic supplications with their Arabic and English translations,
  /// references, and favorite status.
  ///
  /// The method handles two types of supplications:
  /// - Text-based: Simple supplications with text and references
  /// - Counter-based: Supplications with specific repetition counts
  ///
  /// Returns a [Future<List<HisnAlMuslimModel>>] containing all supplications
  /// with their current favorite status applied.
  ///
  /// Throws [//FlutterError] if the asset file cannot be loaded.
  /// Throws [FormatException] if the JSON format is invalid.
  static Future<List<HisnAlMuslimModel>> getHisnAlMuslimList() async {
    // Load JSON file from assets
    final String jsonString = await rootBundle.loadString(
      'assets/json/hisn_al_muslim.json',
    );

    // Parse JSON into List
    final List<dynamic> jsonData = jsonDecode(jsonString) as List<dynamic>;

    // Extract favorite IDs (Replace this with actual storage method)
    final List<int> favoriteIds = _getFavoriteIds();

    // Convert JSON data to List of HisnAlMuslimModel
    return jsonData
        .map(
          (item) =>
              _parseHisnAlMuslimItem(item as Map<String, dynamic>, favoriteIds),
        )
        .whereType<HisnAlMuslimModel>()
        .toList();
  }

  /// Parses an individual Hisn Al Muslim item from JSON.
  static HisnAlMuslimModel? _parseHisnAlMuslimItem(
    Map<String, dynamic> item,
    List<int> favoriteIds,
  ) {
    final details = item['details'] as Map<String, dynamic>;

    // Parse title as MultiLanguageString
    final MultiLanguageString title = _parseMultiLanguageString(
      item['title'] as Map<String, dynamic>,
    );

    if (details['type'] == 'text') {
      return HisnAlMuslimModel(
        id: (item['id'] as int?) ?? 0,
        title: title,
        isFavorite: favoriteIds.contains((item['id'] as int?) ?? 0),
        details: HisnAlMuslimModelState.text(
          list: (details['list'] as List<dynamic>)
              // ignore: unnecessary_lambdas
              .map((e) => _parseMultiLanguageString(e as Map<String, dynamic>))
              .toList(),
          referance: (details['referances'] as List<dynamic>)
              // ignore: unnecessary_lambdas
              .map((e) => _parseMultiLanguageString(e as Map<String, dynamic>))
              .toList(),
        ),
      );
    } else if (details['type'] == 'counter') {
      return HisnAlMuslimModel(
        id: (item['id'] as int?) ?? 0,
        title: title,
        isFavorite: favoriteIds.contains((item['id'] as int?) ?? 0),
        details: HisnAlMuslimModelState.counter(
          (details['list'] as List<dynamic>)
              // ignore: unnecessary_lambdas
              .map((d) => _parseHisnAlMuslimDetails(d as Map<String, dynamic>))
              .toList(),
        ),
      );
    }

    return null; // Handle unexpected cases
  }

  /// Parses a HisnAlMuslimDetailsModel from JSON.
  static HisnAlMuslimCounterDetailsModel _parseHisnAlMuslimDetails(
    Map<String, dynamic> json,
  ) {
    return HisnAlMuslimCounterDetailsModel(
      descriptionTitle: _parseMultiLanguageString(
        json['descriptionTitle'] as Map<String, dynamic>,
      ),
      description: _parseMultiLanguageString(
        json['description'] as Map<String, dynamic>,
      ),
      references: (json['references'] as List<dynamic>)
          // ignore: unnecessary_lambdas
          .map((e) => _parseMultiLanguageString(e as Map<String, dynamic>))
          .toList(),
      readCount: (json['readCount'] as int?) ?? 1,
    );
  }

  /// Parses a MultiLanguageString from JSON.
  static MultiLanguageString _parseMultiLanguageString(
    Map<String, dynamic> json,
  ) {
    return MultiLanguageString(
      ar: (json['ar'] as String?) ?? '',
      en: (json['en'] as String?) ?? '',
    );
  }

  /// Retrieves favorite IDs from the database.
  static List<int> _getFavoriteIds() {
    final data = locator<IslamPreferences>().getValue(
      key: DatabaseFieldInHisnAlMuslimConstant.favoriteList,
      defaultValue: [],
    );
    return data.map((e) => e as int).toList(); // Ensures List<int>
  }

  /// Adds or removes an item from the favorites list.
  ///
  /// This method toggles the favorite status of a supplication identified by [id].
  /// If the item is currently in favorites, it will be removed. If it's not in
  /// favorites, it will be added.
  ///
  /// The updated favorites list is automatically saved to the database.
  ///
  /// Parameters:
  /// - [id]: The unique identifier of the supplication to toggle
  static void addRemoveNewItemToFavoriteList(int id) {
    final data = locator<IslamPreferences>().getValue(
      key: DatabaseFieldInHisnAlMuslimConstant.favoriteList,
      defaultValue: [],
    );

    final List<int> favoriteIds = data.map((e) => e as int).toList();

    if (favoriteIds.contains(id)) {
      favoriteIds.remove(id);
    } else {
      favoriteIds.add(id);
    }

    locator<IslamPreferences>().setValue(
      key: DatabaseFieldInHisnAlMuslimConstant.favoriteList,
      value: favoriteIds,
    );
  }
}
