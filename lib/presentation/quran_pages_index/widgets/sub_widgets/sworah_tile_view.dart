import 'package:flutter/material.dart';
import 'package:islam_app/domain/sealed/sorah_type_state.dart';
import 'package:islam_app/presentation/quran_pages_index/widgets/sub_widgets/arrow_view.dart';
import 'package:islam_app/shared_widgets/custom_text.dart';

class SowrahTileView extends StatelessWidget {
  final VoidCallback onTap;
  final int index;
  final String sowrahName;
  final bool isCurrentPage;
  final SowrahTypeState sowrahType;

  const SowrahTileView(
      {super.key,
      required this.onTap,
      required this.index,
      required this.sowrahName,
      required this.isCurrentPage,
      required this.sowrahType});

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
                Container(
                  width: 1,
                  color: Colors.white,
                ),
                const SizedBox(width: 10),
                _buildSowrahName(context),
                _buildSowrahTypeIcon(sowrahType),
                const SizedBox(width: 10),
                const ArrowView()
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
    return SizedBox(
      width: 35,
      child: Image.asset(imagePath),
    );
  }
}
