import 'package:flutter/material.dart';
import 'package:islam_app/presentation/quran_pages_index/widgets/sub_widgets/arrow_view.dart';
import 'package:custom_widgets/widgets/custom_text.dart';

class PartTileView extends StatelessWidget {
  final VoidCallback onTap;
  final int index;
  final bool isCurrentPart;
  final String partName;

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
          padding: const EdgeInsets.all(8.0),
          child: InkWell(
            onTap: () => onTap(),
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
