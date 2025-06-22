import 'package:flutter/material.dart';
import 'package:islam_app/domain/sealed/sorah_type_state.dart';
import 'package:islam_app/presentation/quran_pages_index/widgets/sub_widgets/arrow_view.dart';
import 'package:islam_app/shared_widgets/custom_text.dart';

/// Widget for displaying individual Surah (chapter) tiles in the Quran index.
///
/// This widget represents a single Surah in the Quran navigation interface,
/// providing essential information and navigation functionality for each
/// chapter of the Holy Quran. It features:
/// - **Surah number** with visual highlighting for current selection
/// - **Surah name** in Arabic with proper Islamic typography
/// - **Revelation type indicator** showing Meccan or Medinan classification
/// - **Navigation functionality** for jumping to specific Quran pages
/// - **Visual feedback** with color changes for current page indication
///
/// The tile supports Muslims in navigating the Quran efficiently, providing
/// clear visual organization of the 114 Surahs with their traditional
/// Islamic classifications and proper Arabic presentation.
class SowrahTileView extends StatelessWidget {
  /// Callback function triggered when the tile is tapped.
  final VoidCallback onTap;

  /// The zero-based index of this Surah in the Quran.
  final int index;

  /// The Arabic name of the Surah.
  final String sowrahName;

  /// Whether this Surah contains the currently displayed Quran page.
  final bool isCurrentPage;

  /// The revelation type of this Surah (Meccan or Medinan).
  final SowrahTypeState sowrahType;

  /// Creates a [SowrahTileView] widget for Quran Surah navigation.
  ///
  /// Parameters:
  /// - [onTap]: Callback for tile tap interactions
  /// - [index]: Zero-based Surah index (0-113)
  /// - [sowrahName]: Arabic name of the Surah
  /// - [isCurrentPage]: Whether this Surah is currently being viewed
  /// - [sowrahType]: Revelation classification (Meccan/Medinan)
  const SowrahTileView({
    super.key,
    required this.onTap,
    required this.index,
    required this.sowrahName,
    required this.isCurrentPage,
    required this.sowrahType,
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
                _buildNumber(context),
                Container(width: 1, color: Colors.white),
                const SizedBox(width: 10),
                _buildSowrahName(context),
                _buildSowrahTypeIcon(sowrahType),
                const SizedBox(width: 10),
                const ArrowView(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Builds the number widget with dynamic styling based on selection.
  Widget _buildNumber(BuildContext context) {
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

  /// Builds the Sowrah name widget with dynamic styling based on selection.
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

  /// Returns the icon representing the Sowrah type.
  Widget _buildSowrahTypeIcon(SowrahTypeState type) {
    final imagePath = type == const SowrahTypeState.makyeh()
        ? "assets/images/sorah_type/macca.png"
        : "assets/images/sorah_type/madenah.png";
    return SizedBox(width: 35, child: Image.asset(imagePath));
  }
}
