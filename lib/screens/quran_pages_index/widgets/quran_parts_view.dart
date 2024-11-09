import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islam_app/screens/quran_pages_index/bloc/quran_pages_index_bloc.dart';
import 'package:islam_app/screens/quran_pages_index/widgets/sub_widgets/part_tile_view.dart';

class QuranPartsView extends StatelessWidget {
  final String currentPartName;
  final Function(String partNumber) onPartSelected;

  const QuranPartsView(
      {super.key, required this.onPartSelected, required this.currentPartName});

  @override
  Widget build(BuildContext context) {
    final list =
        context.read<QuranPagesIndexBloc>().getAllPartsName(context: context);

    return Padding(
      padding: const EdgeInsets.all(4),
      child: ListView.builder(
          itemCount: list.length,
          itemBuilder: (context, index) {
            return PartTileView(
              index: index,
              isCurrentPart: currentPartName == list[index],
              partName: list[index],
              onTap: () => onPartSelected((index + 1).toString()),
            );
          }),
    );
  }
}
