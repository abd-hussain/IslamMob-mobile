import 'package:flutter/material.dart';
import 'package:islam_app/screens/quran_pages_index/widgets/sub_widgets/sworah_tile_view.dart';

class QuranSowarView extends StatelessWidget {
  const QuranSowarView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4),
      child: ListView.builder(
          itemCount: 604,
          itemBuilder: (context, index) {
            return SowrahTileView(
              index: index,
              sowrahName: "B", //TOOD
              isBookMarked: false, //TOOD
              isCurrentPage: false, //TOOD
              sowrahType: SowrahType.makyeh, //TOOD
              onTap: () {
                //TODO
              },
            );
          }),
    );
  }
}
