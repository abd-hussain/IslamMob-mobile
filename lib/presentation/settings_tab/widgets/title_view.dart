import 'package:flutter/material.dart';
import 'package:islam_app/shared_widgets/custom_text.dart';

/// A widget that displays a section title with consistent styling and padding.
///
/// This widget is typically used to display section headers or category titles
/// in settings screens or other list-based interfaces. It applies consistent
/// typography, color, and spacing to create visual separation between sections.
class TitleView extends StatelessWidget {
  /// The title text to display.
  ///
  /// This string will be rendered as a section title with predefined
  /// styling including font size, weight, and color.
  final String title;

  /// Creates a [TitleView] with the specified title.
  ///
  /// The [title] parameter is required and contains the text to display
  /// as the section title.
  const TitleView({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8, top: 16, right: 8, bottom: 16),
      child: CustomText(
        title: title,
        fontSize: 14,
        color: const Color(0xff444444),
        fontWeight: FontWeight.w600,
      ),
    );
  }
}
