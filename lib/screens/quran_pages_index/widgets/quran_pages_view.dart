import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islam_app/screens/quran_pages_index/bloc/quran_pages_index_bloc.dart';
import 'package:islam_app/screens/quran_pages_index/widgets/sub_widgets/pages_tile_view.dart';
import 'package:islam_app/utils/extensions/localization.dart';
import 'package:islam_app/utils/quran_referances.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class QuranPagesView extends StatelessWidget {
  final int currentPageNumber;
  final Function(int selectedPageNumber) onPageSelected;

  const QuranPagesView(
      {super.key,
      required this.currentPageNumber,
      required this.onPageSelected});

  @override
  Widget build(BuildContext context) {
    final totalPages = QuranReferances.getNumberOfPagesForSelectedPrint();

    return Padding(
      padding: const EdgeInsets.all(4),
      child: ListView.builder(
        itemCount: totalPages,
        itemBuilder: (context, index) {
          final pageNumber = index + 1;
          final surahReferenceName =
              QuranReferances.getSurahReferenceNameFromPageNumber(pageNumber);
          final surahName = AppLocalizations.of(context)!
              .getLocalizedString(surahReferenceName);
          final isCurrentPage = currentPageNumber == pageNumber;
          final isBookmarked = context
              .read<QuranPagesIndexBloc>()
              .bookmarkedPages
              .contains(pageNumber);

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
