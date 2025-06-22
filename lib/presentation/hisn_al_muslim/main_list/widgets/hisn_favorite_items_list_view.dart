import 'package:flutter/material.dart';
import 'package:islam_app/domain/model/hisn_al_muslim.dart';
import 'package:islam_app/l10n/gen/app_localizations.dart';
import 'package:islam_app/presentation/hisn_al_muslim/main_list/widgets/hisn_main_card_view.dart';
import 'package:islam_app/shared_widgets/custom_text.dart';

/// Widget displaying the user's favorite Hisn Al-Muslim supplications.
///
/// This widget provides a curated view of Islamic supplications that
/// users have marked as favorites from the Hisn Al-Muslim collection.
/// It features:
/// - **Filtered favorite list** showing only bookmarked supplications
/// - **Card-based layout** for easy access to preferred prayers
/// - **Empty state handling** with guidance for adding favorites
/// - **Language support** for proper Arabic and RTL text display
///
/// The widget helps Muslims quickly access their most important and
/// frequently used Islamic supplications, supporting their daily
/// spiritual practices and personal dhikr routines.
class HisnFavoriteItemsListView extends StatelessWidget {
  /// List of Hisn Al-Muslim supplications to filter for favorites.
  final List<HisnAlMuslimModel> list;

  /// Whether the current language requires right-to-left text direction.
  final bool isRtlLanguage;

  /// Creates a [HisnFavoriteItemsListView] widget for displaying favorite supplications.
  ///
  /// Parameters:
  /// - [list]: Complete list of supplications to filter for favorites
  /// - [isRtlLanguage]: Boolean for RTL language support (Arabic, Farsi)
  const HisnFavoriteItemsListView({
    super.key,
    required this.list,
    required this.isRtlLanguage,
  });

  @override
  Widget build(BuildContext context) {
    final favoriteList = list.where((element) => element.isFavorite).toList();
    return favoriteList.isEmpty
        ? Center(
            child: CustomText(
              title: IslamMobLocalizations.of(context).noItemToShow,
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: const Color(0xff444444),
            ),
          )
        : ListView.builder(
            physics: const ClampingScrollPhysics(),
            itemCount: favoriteList.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(bottom: 8),
                child: HisnMainCardView(
                  isRtlLanguage: isRtlLanguage,
                  item: favoriteList[index],
                ),
              );
            },
          );
  }
}
