import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islam_app/domain/extensions/localization.dart';
import 'package:islam_app/domain/usecase/quran_referances_usecase.dart';
import 'package:islam_app/l10n/gen/app_localizations.dart';
import 'package:islam_app/presentation/quran_pages_index/bloc/quran_pages_index_bloc.dart';
import 'package:islam_app/presentation/quran_pages_index/widgets/sub_widgets/pages_tile_view.dart';

class QuranBookmarkPagesView extends StatelessWidget {
  final int currentPageNumber;
  final Function(int selectedPageNumber) onPageSelected;
  const QuranBookmarkPagesView({
    super.key,
    required this.currentPageNumber,
    required this.onPageSelected,
  });

  @override
  Widget build(BuildContext context) {
    final listOfBookMark =
        List<int>.from(context.read<QuranPagesIndexBloc>().bookmarkedPages);
    listOfBookMark.sort();
    return Padding(
      padding: const EdgeInsets.all(4),
      child: ListView.builder(
        itemCount: listOfBookMark.length,
        itemBuilder: (context, index) {
          final pageNumber = listOfBookMark[index];
          final surahReferenceName =
              QuranReferancesUsecase.getSurahReferenceNameFromPageNumber(
                  pageNumber);
          final surahName = IslamMobLocalizations.of(context)
              .getLocalizedString(surahReferenceName);
          final isCurrentPage = currentPageNumber == pageNumber;
          final isBookmarked = context
              .read<QuranPagesIndexBloc>()
              .bookmarkedPages
              .contains(pageNumber);
          return PagesTileView(
            index: pageNumber - 1,
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
