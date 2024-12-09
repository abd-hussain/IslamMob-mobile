import 'package:flutter/material.dart';
import 'package:islam_app/presentation/quran_pages_index/widgets/sub_widgets/arrow_view.dart';
import 'package:islam_app/shared_widgets/custom_text.dart';

class PagesTileView extends StatelessWidget {
  final int index;
  final String sowrahName;
  final bool isCurrentPage;
  final bool isBookedMarked;
  final VoidCallback onTap;

  const PagesTileView(
      {super.key,
      required this.index,
      required this.sowrahName,
      required this.isCurrentPage,
      required this.onTap,
      required this.isBookedMarked});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2),
      child: Container(
        height: 60,
        color: const Color(0xff292929),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: InkWell(
            onTap: () => onTap(),
            child: Row(
              children: [
                _buildPageNumber(context),
                Container(
                  width: 1,
                  color: Colors.white,
                ),
                const SizedBox(width: 10),
                _buildSowrahName(context),
                const SizedBox(width: 10),
                _buildBookmarkIcon(),
                const SizedBox(width: 10),
                const ArrowView()
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
          color: isCurrentPage ? const Color(0xff007F37) : Colors.white,
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
        color: isCurrentPage ? const Color(0xff007F37) : Colors.white,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  /// Builds the bookmark icon if the page is bookmarked.
  Widget _buildBookmarkIcon() {
    return isBookedMarked
        ? const SizedBox(
            width: 30,
            child: Icon(
              Icons.bookmark,
              color: Colors.redAccent,
            ),
          )
        : const SizedBox(width: 30);
  }
}
