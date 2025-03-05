import 'package:flutter/material.dart';
import 'package:islam_app/domain/model/hisn_al_muslim.dart';
import 'package:islam_app/l10n/gen/app_localizations.dart';
import 'package:islam_app/presentation/hisn_al_muslim/main_list/widgets/hisn_main_card_view.dart';
import 'package:islam_app/shared_widgets/custom_text.dart';

class HisnFavoriteItemsListView extends StatelessWidget {
  final List<HisnAlMuslimModel> list;
  const HisnFavoriteItemsListView({super.key, required this.list});

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
                  item: favoriteList[index],
                ),
              );
            },
          );
  }
}
