import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islam_app/domain/extensions/localization.dart';
import 'package:islam_app/domain/usecase/quran_referances_usecase.dart';
import 'package:islam_app/presentation/quran_pages_index/bloc/quran_pages_index_bloc.dart';
import 'package:islam_app/presentation/quran_pages_index/widgets/sub_widgets/pages_tile_view.dart';

class QuranPagesView extends StatelessWidget {
  final int currentPageNumber;
  final Function(int selectedPageNumber) onPageSelected;

  const QuranPagesView({super.key, required this.currentPageNumber, required this.onPageSelected});

  @override
  Widget build(BuildContext context) {
    final QuranReferancesUsecase quranReferancesUsecase = QuranReferancesUsecase();

    final totalPages = quranReferancesUsecase.getNumberOfPagesForSelectedPrint();

    return Padding(
      padding: const EdgeInsets.all(4),
      child: ListView.builder(
        itemCount: totalPages,
        itemBuilder: (context, index) {
          final pageNumber = index + 1;
          final surahReferenceName = quranReferancesUsecase.getSurahReferenceNameFromPageNumber(pageNumber);
          final surahName = AppLocalizations.of(context)!.getLocalizedString(surahReferenceName);
          final isCurrentPage = currentPageNumber == pageNumber;
          final isBookmarked = context.read<QuranPagesIndexBloc>().bookmarkedPages.contains(pageNumber);

          return PagesTileView(
            index: index,
            sowrahName: surahName,
            isCurrentPage: isCurrentPage,
            isBookedMarked: isBookmarked,
            onTap: () => onPageSelected(pageNumber),
          );
        },
      ),
    );
  }
}
