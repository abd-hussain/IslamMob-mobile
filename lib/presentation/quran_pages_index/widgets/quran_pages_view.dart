import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islam_app/domain/extensions/localization.dart';
import 'package:islam_app/domain/usecase/quran_referances_usecase.dart';
import 'package:islam_app/l10n/gen/app_localizations.dart';
import 'package:islam_app/presentation/quran_pages_index/bloc/quran_pages_index_bloc.dart';
import 'package:islam_app/presentation/quran_pages_index/widgets/sub_widgets/pages_tile_view.dart';

/// A widget that displays a scrollable list of all Quran pages for navigation.
///
/// This widget provides a comprehensive page index interface that allows users to:
/// - Browse through all available Quran pages
/// - See the Surah (chapter) name associated with each page
/// - Identify the currently active page with visual highlighting
/// - View bookmarked pages with special indicators
/// - Navigate directly to any page by tapping on it
///
/// The widget dynamically generates the page list based on the selected Quran print
/// and retrieves Surah references for each page. It integrates with the QuranPagesIndexBloc
/// to access bookmark information and provides localized Surah names based on the
/// user's language preference.
///
/// Each page is displayed as a tile showing the page number, associated Surah name,
/// and visual indicators for current page and bookmark status.
class QuranPagesView extends StatelessWidget {
  /// The currently active page number in the Quran reader.
  ///
  /// This page will be visually highlighted in the list to help users
  /// identify their current position. The value should be 1-based
  /// (first page = 1, not 0).
  final int currentPageNumber;

  /// Callback function triggered when a user selects a page from the list.
  ///
  /// This function receives the selected page number as a parameter and
  /// should handle navigation to that page in the Quran reader interface.
  /// The page number passed will be 1-based.
  final Function(int selectedPageNumber) onPageSelected;

  /// Creates a [QuranPagesView] widget.
  ///
  /// Both [currentPageNumber] and [onPageSelected] are required parameters
  /// for proper functionality of the page navigation interface.
  const QuranPagesView(
      {super.key,
      required this.currentPageNumber,
      required this.onPageSelected});

  @override
  Widget build(BuildContext context) {
    final totalPages =
        QuranReferancesUsecase.getNumberOfPagesForSelectedPrint();

    return Padding(
      padding: const EdgeInsets.all(4),
      child: ListView.builder(
        itemCount: totalPages,
        itemBuilder: (context, index) {
          final pageNumber = index + 1;
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
