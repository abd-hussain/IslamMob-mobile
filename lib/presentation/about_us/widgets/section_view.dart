import 'package:flutter/material.dart';
import 'package:islam_app/shared_widgets/custom_text.dart';

/// A reusable widget for displaying sectioned content with title and descriptions.
///
/// This widget provides a consistent layout for displaying information in
/// sections, commonly used in legal documents, about pages, and informational
/// content. It features:
/// - **Bold section title** for clear topic identification
/// - **Multiple description paragraphs** for detailed content
/// - **Consistent spacing** and typography throughout
/// - **Responsive text handling** with proper line limits
///
/// This widget is particularly useful for displaying Islamic content,
/// legal information, app descriptions, and other structured text content
/// that needs clear organization and readability.
class SectionView extends StatelessWidget {
  /// The title of the section displayed in bold.
  final String title;

  /// List of description paragraphs for the section content.
  final List<String> descriptions;

  /// Creates a [SectionView] widget with title and descriptions.
  ///
  /// Parameters:
  /// - [title]: The section title displayed prominently at the top
  /// - [descriptions]: List of description strings, each displayed as a paragraph
  ///
  /// The widget automatically handles spacing and formatting for consistent
  /// presentation across different sections of content.
  const SectionView(
      {super.key, required this.title, required this.descriptions});

  /// Builds the section view with title and description content.
  ///
  /// This method creates a column layout with:
  /// - Bold title text at the top
  /// - Multiple description paragraphs with proper spacing
  /// - Consistent typography and color scheme
  /// - Appropriate bottom margin for section separation
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomText(
          title: title,
          fontSize: 16,
          color: const Color(0xff444444),
          fontWeight: FontWeight.bold,
        ),
        const SizedBox(height: 4),
        ...descriptions.map(
          (desc) => Padding(
            padding: const EdgeInsets.only(bottom: 4),
            child: CustomText(
              title: desc,
              fontSize: 16,
              color: const Color(0xff444444),
              maxLines: 5,
            ),
          ),
        ),
        const SizedBox(height: 20),
      ],
    );
  }
}
