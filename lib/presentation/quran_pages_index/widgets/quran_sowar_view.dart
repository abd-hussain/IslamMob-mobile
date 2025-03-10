import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islam_app/domain/usecase/quran_pages_index_usecase.dart';
import 'package:islam_app/l10n/gen/app_localizations.dart';
import 'package:islam_app/presentation/quran_pages_index/bloc/quran_pages_index_bloc.dart';
import 'package:islam_app/presentation/quran_pages_index/widgets/sub_widgets/sworah_tile_view.dart';
import 'package:islam_app/shared_widgets/custom_text_field.dart';

class QuranSowarView extends StatelessWidget {
  final String currentSowrahName;
  final Function(String sowrahName) onSowrahSelected;

  const QuranSowarView(
      {super.key,
      required this.onSowrahSelected,
      required this.currentSowrahName});

  @override
  Widget build(BuildContext context) {
    // final surahList = QuranPagesIndexUseCase.getAllSurahNames(context: context);
    final TextEditingController searchController = TextEditingController();

    return Padding(
      padding: const EdgeInsets.all(4),
      child: Column(
        children: [
          Stack(
            children: [
              Image.asset("assets/images/hisnalmuslim.png"),
              Builder(builder: (context) {
                return CustomTextField(
                  controller: searchController,
                  hintText: IslamMobLocalizations.of(context).searchField,
                  prefixIcon: Icons.search,
                  onChanged: (p0) => context
                      .read<QuranPagesIndexBloc>()
                      .add(QuranPagesIndexEvent.search(context, p0)),
                );
              }),
            ],
          ),
          Expanded(
            child: BlocBuilder<QuranPagesIndexBloc, QuranPagesIndexState>(
              buildWhen: (previous, current) =>
                  previous.sowarList != current.sowarList,
              builder: (context, state) {
                return ListView.builder(
                    itemCount: state.sowarList.length,
                    itemBuilder: (context, index) {
                      final surahName = state.sowarList[index];
                      final isCurrent = currentSowrahName == surahName;
                      return SowrahTileView(
                        index: index,
                        sowrahName: surahName,
                        isCurrentPage: isCurrent,
                        sowrahType: QuranPagesIndexUseCase.getSurahType(
                          context: context,
                          surahName: surahName,
                        ),
                        onTap: () => onSowrahSelected(surahName),
                      );
                    });
              },
            ),
          ),
        ],
      ),
    );
  }
}
