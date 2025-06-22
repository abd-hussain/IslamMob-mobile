import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islam_app/domain/extensions/localization.dart';
import 'package:islam_app/domain/usecase/quran_referances_usecase.dart';
import 'package:islam_app/l10n/gen/app_localizations.dart';
import 'package:islam_app/presentation/quran_pages_index/bloc/quran_pages_index_bloc.dart';
import 'package:islam_app/presentation/quran_pages_index/widgets/sub_widgets/pages_tile_view.dart';

/// A widget that displays a list of bookmarked Quran pages.
///
/// This widget retrieves bookmarked pages from the [QuranPagesIndexBloc] and
/// displays them in a sorted list. Each page tile shows the Surah name and
/// indicates whether it's the currently selected page. Users can tap on any
/// bookmarked page to navigate to it.
///
/// The widget features:
/// - Sorted list of bookmarked pages
/// - Localized Surah names for each page
/// - Visual indication of the current page
/// - Tap-to-navigate functionality
class QuranBookmarkPagesView extends StatelessWidget {
  /// The current page number being displayed in the Quran reader.
  ///
  /// This is used to highlight the current page in the bookmarks list
  /// with a visual indicator.
  final int currentPageNumber;

  /// Callback function executed when a bookmarked page is selected.
  ///
  /// The function receives the selected page number as a parameter
  /// and should handle navigation to that page.
  final Function(int selectedPageNumber) onPageSelected;

  /// Creates a [QuranBookmarkPagesView] widget.
  ///
  /// Both [currentPageNumber] and [onPageSelected] are required parameters.
  const QuranBookmarkPagesView({
    super.key,
    required this.currentPageNumber,
    required this.onPageSelected,
  });

  @override
  Widget build(BuildContext context) {
    final listOfBookMark = List<int>.from(
      context.read<QuranPagesIndexBloc>().bookmarkedPages,
    );
    listOfBookMark.sort();
    return Padding(
      padding: const EdgeInsets.all(4),
      child: ListView.builder(
        itemCount: listOfBookMark.length,
        itemBuilder: (context, index) {
          final pageNumber = listOfBookMark[index];
          final surahReferenceName =
              QuranReferancesUsecase.getSurahReferenceNameFromPageNumber(
                pageNumber,
              );
          final surahName = IslamMobLocalizations.of(
            context,
          ).getLocalizedString(surahReferenceName);
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
