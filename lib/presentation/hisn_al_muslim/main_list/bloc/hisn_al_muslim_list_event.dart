part of 'hisn_al_muslim_list_bloc.dart';

/// Events for the Hisn Al-Muslim List BLoC.
///
/// This sealed class defines all possible events for managing the main list
/// of Islamic supplications from Hisn Al-Muslim (Fortress of the Muslim).
/// These events handle:
/// - **Supplication list loading** from the Islamic database
/// - **Tab navigation** between all supplications and favorites
/// - **Favorite management** for bookmarking important supplications
/// - **Search functionality** for finding specific Islamic prayers
///
/// The events support Muslims in accessing and organizing authentic Islamic
/// supplications for various life situations and daily spiritual practices.
@freezed
class HisnAlMuslimListEvent with _$HisnAlMuslimListEvent {
  /// Event to load the complete list of Hisn Al-Muslim supplications.
  ///
  /// This event triggers the loading of all Islamic supplications from
  /// the Hisn Al-Muslim collection, including their Arabic text, translations,
  /// categories, and favorite status for display in the main list.
  const factory HisnAlMuslimListEvent.getListOfAzkar() = _GetListOfAzkar;

  /// Event to update the selected tab in the supplications interface.
  ///
  /// This event switches between different views such as all supplications
  /// and favorite supplications, allowing users to organize their access
  /// to Islamic prayers based on their preferences.
  ///
  /// Parameters:
  /// - [index]: The tab index to select (0 for all, 1 for favorites)
  factory HisnAlMuslimListEvent.updateSelectedTab(int index) =
      _UpdateSelectedTab;

  /// Event to add or remove a supplication from the favorites list.
  ///
  /// This event toggles the favorite status of a specific Hisn Al-Muslim
  /// supplication, allowing Muslims to bookmark important prayers for
  /// quick access during their daily Islamic practices.
  ///
  /// Parameters:
  /// - [item]: The supplication to add or remove from favorites
  const factory HisnAlMuslimListEvent.addRemoveItemToFavorite(
      HisnAlMuslimModel item) = _AddItemToFavorite;

  /// Event to search for specific supplications in the collection.
  ///
  /// This event filters the Hisn Al-Muslim supplications based on the
  /// search query, allowing Muslims to quickly find specific Islamic
  /// prayers by title or content in both Arabic and translated text.
  ///
  /// Parameters:
  /// - [value]: The search query string to filter supplications
  const factory HisnAlMuslimListEvent.search(String value) = _Search;
}
