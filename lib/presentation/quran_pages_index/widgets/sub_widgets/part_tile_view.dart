import 'package:flutter/material.dart';
import 'package:islam_app/presentation/quran_pages_index/widgets/sub_widgets/arrow_view.dart';
import 'package:islam_app/shared_widgets/custom_text.dart';

/// A tile widget that displays a Quran part (Juz/Para) with its number and name.
///
/// This widget creates a clickable tile that shows a part number, part name,
/// and an arrow indicator. The styling changes based on whether this part
/// is currently selected, highlighting it with a different color scheme.
class PartTileView extends StatelessWidget {
  /// Callback function executed when the tile is tapped.
  ///
  /// This function is called when the user taps on the part tile,
  /// typically used to navigate to the selected part.
  final VoidCallback onTap;

  /// The zero-based index of the part.
  ///
  /// This index is used to calculate the display number (index + 1)
  /// shown in the tile. For example, index 0 displays as "1".
  final int index;

  /// Whether this part is currently selected or active.
  ///
  /// When true, the part number and name are displayed in a highlighted
  /// color (teal). When false, they are displayed in white.
  final bool isCurrentPart;

  /// The name of the Quran part.
  ///
  /// This is the Arabic or localized name of the part (Juz/Para)
  /// that will be displayed in the tile.
  final String partName;

  /// Creates a [PartTileView] with the specified parameters.
  ///
  /// All parameters are required:
  /// - [onTap]: Callback for when the tile is tapped
  /// - [index]: Zero-based index of the part
  /// - [isCurrentPart]: Whether this part is currently selected
  /// - [partName]: The name of the part to display
  const PartTileView({
    super.key,
    required this.onTap,
    required this.index,
    required this.isCurrentPart,
    required this.partName,
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
                _buildPartNumber(context),
                Container(
                  width: 1,
                  color: Colors.white,
                ),
                const SizedBox(width: 10),
                _buildPartName(context),
                const SizedBox(width: 10),
                const ArrowView()
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Builds the part number widget with styling based on the current selection.
  Widget _buildPartNumber(BuildContext context) {
    return SizedBox(
      width: 50,
      child: Center(
        child: CustomText(
          title: (index + 1).toString(),
          fontSize: 20,
          color: isCurrentPart ? const Color(0xff008480) : Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  /// Builds the part name widget with styling based on the current selection.
  Widget _buildPartName(BuildContext context) {
    return Expanded(
      child: CustomText(
        title: partName,
        fontSize: 20,
        color: isCurrentPart ? const Color(0xff008480) : Colors.white,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
