import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

/// A customizable text widget with consistent styling for the Islamic app.
///
/// This widget provides a standardized text component with configurable
/// styling options for use throughout the Islamic application. It features:
/// - **Google Fonts integration** using Questrial font for consistent typography
/// - **Flexible styling** with customizable color, size, and weight options
/// - **Text overflow handling** with ellipsis for long content
/// - **Alignment control** for proper text positioning
/// - **Multi-line support** with configurable line limits
///
/// The widget ensures consistent text presentation across the Islamic app
/// while providing flexibility for different content types including Arabic
/// text, Islamic terms, and general application content.
class CustomText extends StatelessWidget {
  /// The text content to display.
  final String title;

  /// The font size for the text in logical pixels.
  final double fontSize;

  /// The color of the text.
  final Color color;

  /// The maximum number of lines for the text.
  final int maxLines;

  /// How text overflow should be handled.
  final TextOverflow overflow;

  /// The alignment of the text within its container.
  final TextAlign textAlign;

  /// The font weight of the text.
  final FontWeight fontWeight;

  /// Creates a [CustomText] widget with configurable styling options.
  ///
  /// Parameters:
  /// - [title]: The text content to display (required)
  /// - [fontSize]: Font size in logical pixels (required)
  /// - [color]: Text color (defaults to white)
  /// - [maxLines]: Maximum number of lines (defaults to 1)
  /// - [overflow]: Text overflow behavior (defaults to ellipsis)
  /// - [textAlign]: Text alignment (defaults to start)
  /// - [fontWeight]: Font weight (defaults to normal)
  const CustomText({
    super.key,
    required this.title,
    required this.fontSize,
    this.maxLines = 1,
    this.overflow = TextOverflow.ellipsis,
    this.textAlign = TextAlign.start,
    this.color = Colors.white,
    this.fontWeight = FontWeight.normal,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      maxLines: maxLines,
      overflow: overflow,
      textAlign: textAlign,
      style: GoogleFonts.questrial(
        fontSize: fontSize,
        color: color,
        fontWeight: fontWeight,
      ),
    );
  }
}
