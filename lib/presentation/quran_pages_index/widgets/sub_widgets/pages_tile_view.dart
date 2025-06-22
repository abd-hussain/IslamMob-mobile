import 'package:flutter/material.dart';
import 'package:islam_app/presentation/quran_pages_index/widgets/sub_widgets/arrow_view.dart';
import 'package:islam_app/shared_widgets/custom_text.dart';

/// A tile widget that displays a Quran page with its number, Surah name, and bookmark status.
///
/// This widget creates a clickable tile that shows a page number, the name of the
/// Surah on that page, a bookmark icon (if bookmarked), and an arrow indicator.
/// The styling changes based on whether this page is currently selected.
class PagesTileView extends StatelessWidget {
  /// The zero-based index of the page.
  ///
  /// This index is used to calculate the display number (index + 1)
  /// shown in the tile. For example, index 0 displays as "1".
  final int index;

  /// The name of the Surah (chapter) on this page.
  ///
  /// This is typically the Arabic name of the Surah that appears
  /// on this Quran page.
  final String sowrahName;

  /// Whether this page is currently selected or active.
  ///
  /// When true, the page number and Surah name are displayed in a
  /// highlighted color (teal). When false, they are displayed in white.
  final bool isCurrentPage;

  /// Whether this page has been bookmarked by the user.
  ///
  /// When true, a red bookmark icon is displayed. When false,
  /// an empty space is shown instead.
  final bool isBookedMarked;

  /// Callback function executed when the tile is tapped.
  ///
  /// This function is called when the user taps on the page tile,
  /// typically used to navigate to the selected page.
  final VoidCallback onTap;

  /// Creates a [PagesTileView] with the specified parameters.
  ///
  /// All parameters are required:
  /// - [index]: Zero-based index of the page
  /// - [sowrahName]: Name of the Surah on this page
  /// - [isCurrentPage]: Whether this page is currently selected
  /// - [onTap]: Callback for when the tile is tapped
  /// - [isBookedMarked]: Whether this page is bookmarked
  const PagesTileView({
    super.key,
    required this.index,
    required this.sowrahName,
    required this.isCurrentPage,
    required this.onTap,
    required this.isBookedMarked,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2),
      child: Container(
        height: 60,
        color: const Color(0xff292929),
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: InkWell(
            onTap: onTap,
            child: Row(
              children: [
                _buildPageNumber(context),
                Container(width: 1, color: Colors.white),
                const SizedBox(width: 10),
                _buildSowrahName(context),
                const SizedBox(width: 10),
                _buildBookmarkIcon(),
                const SizedBox(width: 10),
                const ArrowView(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Builds the page number widget with styling based on whether it is the current page.
  Widget _buildPageNumber(BuildContext context) {
    return SizedBox(
      width: 50,
      child: Center(
        child: CustomText(
          title: (index + 1).toString(),
          fontSize: 20,
          color: isCurrentPage ? const Color(0xff008480) : Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  /// Builds the Surah name widget with styling based on whether it is the current page.
  Widget _buildSowrahName(BuildContext context) {
    return Expanded(
      child: CustomText(
        title: sowrahName,
        fontSize: 20,
        color: isCurrentPage ? const Color(0xff008480) : Colors.white,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  /// Builds the bookmark icon if the page is bookmarked.
  Widget _buildBookmarkIcon() {
    return isBookedMarked
        ? const SizedBox(
            width: 30,
            child: Icon(Icons.bookmark, color: Colors.redAccent),
          )
        : const SizedBox(width: 30);
  }
}
