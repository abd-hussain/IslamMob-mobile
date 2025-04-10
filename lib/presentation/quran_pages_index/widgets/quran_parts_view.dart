import 'package:flutter/material.dart';
import 'package:islam_app/domain/usecase/quran_pages_index_usecase.dart';
import 'package:islam_app/presentation/quran_pages_index/widgets/sub_widgets/part_tile_view.dart';

class QuranPartsView extends StatelessWidget {
  final String currentPartName;
  final Function(String partNumber) onPartSelected;

  const QuranPartsView(
      {super.key, required this.onPartSelected, required this.currentPartName});

  @override
  Widget build(BuildContext context) {
    final partNames = QuranPagesIndexUseCase.getAllJuzNames(context: context);

    return Padding(
      padding: const EdgeInsets.all(4),
      child: ListView.builder(
          itemCount: partNames.length,
          itemBuilder: (context, index) {
            final partName = partNames[index];
            final isCurrent = currentPartName == partName;
            return PartTileView(
              index: index,
              partName: partName,
              isCurrentPart: isCurrent,
              onTap: () => onPartSelected((index + 1).toString()),
            );
          }),
    );
  }
}
