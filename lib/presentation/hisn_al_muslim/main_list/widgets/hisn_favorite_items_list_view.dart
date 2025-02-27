import 'package:flutter/material.dart';
import 'package:islam_app/domain/model/hisn_al_muslim.dart';
import 'package:islam_app/presentation/hisn_al_muslim/main_list/widgets/hisn_main_card_view.dart';

class HisnFavoriteItemsListView extends StatelessWidget {
  final List<HisnAlMuslimModel> list;
  const HisnFavoriteItemsListView({super.key, required this.list});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const ClampingScrollPhysics(),
      itemCount: list.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 8),
          child: HisnMainCardView(
            item: list[index],
          ),
        );
      },
    );
  }
}
