import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islam_app/presentation/quran_pages_index/bloc/quran_pages_index_bloc.dart';
import 'package:islam_app/presentation/quran_pages_index/widgets/sub_widgets/sworah_tile_view.dart';

class QuranSowarView extends StatelessWidget {
  final String currentSowrahName;
  final Function(String sowrahName) onSowrahSelected;

  const QuranSowarView(
      {super.key,
      required this.onSowrahSelected,
      required this.currentSowrahName});

  @override
  Widget build(BuildContext context) {
    final surahList =
        context.read<QuranPagesIndexBloc>().getAllSurahNames(context: context);

    return Padding(
      padding: const EdgeInsets.all(4),
      child: ListView.builder(
          itemCount: surahList.length,
          itemBuilder: (context, index) {
            final surahName = surahList[index];
            final isCurrent = currentSowrahName == surahName;
            return SowrahTileView(
              index: index,
              sowrahName: surahName,
              isCurrentPage: isCurrent,
              sowrahType: context.read<QuranPagesIndexBloc>().getSurahType(
                    context: context,
                    surahName: surahName,
                  ),
              onTap: () => onSowrahSelected(surahName),
            );
          }),
    );
  }
}