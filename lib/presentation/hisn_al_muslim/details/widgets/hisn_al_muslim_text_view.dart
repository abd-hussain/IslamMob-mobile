import 'package:flutter/material.dart';

/// Widget for displaying text-based Hisn Al-Muslim supplications.
///
/// This widget provides a clean, readable interface for Islamic supplications
/// that are displayed as text without counter functionality. It features:
/// - **Scrollable text display** for longer supplications and descriptions
/// - **Arabic typography** using the Uthman font for authentic Islamic text
/// - **Reference information** showing sources and Islamic authenticity
/// - **Organized layout** with clear separation between content and references
///
/// The widget supports Muslims in reading and studying Islamic supplications
/// from Hisn Al-Muslim, providing proper typography and layout for Arabic
/// text and ensuring authentic presentation of Islamic prayers and remembrances.
class HisnAlMuslimTextView extends StatelessWidget {
  /// List of supplication text content to display.
  final List<String> list;

  /// List of reference information for the supplications.
  final List<String> referance;

  /// Creates a [HisnAlMuslimTextView] widget for text-based supplications.
  ///
  /// Parameters:
  /// - [list]: The main supplication text content
  /// - [referance]: Reference information and sources for the supplications
  const HisnAlMuslimTextView({
    super.key,
    required this.list,
    required this.referance,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8, left: 4, right: 4),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: SingleChildScrollView(
            child: Column(
              children: [
                _buildDescriptionText(context, list),
                const Divider(color: Color(0xff444444)),
                _buildReferenceText(context, referance),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildDescriptionText(BuildContext context, List<String> list) {
    return ListView.builder(
      shrinkWrap: true, // Ensures it takes only required space
      physics:
          const NeverScrollableScrollPhysics(), // Disables internal scrolling
      itemCount: list.length,
      itemBuilder: (ctx, index) {
        return Text(
          list[index],
          style: _uthmanTextStyle(fontSize: 22),
          textAlign: TextAlign.center,
        );
      },
    );
  }

  Widget _buildReferenceText(BuildContext context, List<String> referance) {
    return ListView.builder(
      shrinkWrap: true, // Ensures it takes only required space
      physics:
          const NeverScrollableScrollPhysics(), // Disables internal scrolling
      itemCount: referance.length,
      itemBuilder: (ctx, index) {
        return Text(
          referance[index],
          style: _uthmanTextStyle(fontSize: 16),
          textAlign: TextAlign.start,
        );
      },
    );
  }

  TextStyle _uthmanTextStyle({required double fontSize}) {
    return const TextStyle(
      color: Color(0xff444444),
      fontFamily: 'Uthman',
      fontWeight: FontWeight.bold,
    ).copyWith(fontSize: fontSize);
  }
}
