import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islam_app/domain/usecase/quran_pages_index_usecase.dart';
import 'package:islam_app/l10n/gen/app_localizations.dart';
import 'package:islam_app/presentation/quran_pages_index/bloc/quran_pages_index_bloc.dart';
import 'package:islam_app/presentation/quran_pages_index/widgets/sub_widgets/sworah_tile_view.dart';
import 'package:islam_app/shared_widgets/custom_text_field.dart';

/// A widget that displays a searchable list of Quran Surahs (chapters) for navigation.
///
/// This widget provides a comprehensive Surah index interface that allows users to:
/// - Browse through all 114 Surahs of the Quran
/// - Search for specific Surahs using a search field
/// - See the type of each Surah (Meccan or Medinan)
/// - Identify the currently active Surah with visual highlighting
/// - Navigate directly to any Surah by tapping on it
///
/// The widget includes a search functionality that filters the Surah list in real-time
/// as the user types. It integrates with the QuranPagesIndexBloc to manage the search
/// state and filtered results. Each Surah is displayed as a tile showing the Surah
/// name, its type (Meccan/Medinan), and visual indicators for the current selection.
///
/// The interface features a decorative header image and a search field with an
/// appropriate hint text based on the user's language preference.
class QuranSowarView extends StatelessWidget {
  /// The name of the currently active Surah in the Quran reader.
  ///
  /// This Surah will be visually highlighted in the list to help users
  /// identify their current position. The name should match the format
  /// used in the Surah list data.
  final String currentSowrahName;

  /// Callback function triggered when a user selects a Surah from the list.
  ///
  /// This function receives the selected Surah name as a parameter and
  /// should handle navigation to that Surah in the Quran reader interface.
  /// The Surah name passed will be in the same format as stored in the data.
  final Function(String sowrahName) onSowrahSelected;

  /// Creates a [QuranSowarView] widget.
  ///
  /// Both [currentSowrahName] and [onSowrahSelected] are required parameters
  /// for proper functionality of the Surah navigation interface.
  const QuranSowarView({
    super.key,
    required this.onSowrahSelected,
    required this.currentSowrahName,
  });

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
              Builder(
                builder: (context) {
                  return CustomTextField(
                    controller: searchController,
                    hintText: IslamMobLocalizations.of(context).searchField,
                    prefixIcon: Icons.search,
                    onChanged: (p0) => context.read<QuranPagesIndexBloc>().add(
                      QuranPagesIndexEvent.search(context, p0),
                    ),
                  );
                },
              ),
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
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
