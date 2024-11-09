import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islam_app/screens/quran_pages_index/bloc/quran_pages_index_bloc.dart';
import 'package:islam_app/screens/quran_pages_index/widgets/sub_widgets/sworah_tile_view.dart';

class QuranSowarView extends StatelessWidget {
  final String currentSowrahName;
  final Function(String sowrahName) onSowrahSelected;

  const QuranSowarView(
      {super.key,
      required this.onSowrahSelected,
      required this.currentSowrahName});

  @override
  Widget build(BuildContext context) {
    final list =
        context.read<QuranPagesIndexBloc>().getAllSowarName(context: context);
    return Padding(
      padding: const EdgeInsets.all(4),
      child: ListView.builder(
          itemCount: list.length,
          itemBuilder: (context, index) {
            return SowrahTileView(
              index: index,
              sowrahName: list[index],
              isCurrentPage: currentSowrahName == list[index],
              sowrahType: context.read<QuranPagesIndexBloc>().getSorahType(
                    context: context,
                    sorahName: list[index],
                  ),
              onTap: () => onSowrahSelected(list[index]),
            );
          }),
    );
  }
}
