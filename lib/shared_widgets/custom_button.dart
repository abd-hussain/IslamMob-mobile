import 'package:flutter/material.dart';
import 'package:islam_app/l10n/gen/app_localizations.dart';

/// A customizable button widget with consistent styling for the Islam app.
///
/// This widget provides a reusable elevated button with customizable colors,
/// text, dimensions, and enabled state. It automatically handles localization
/// for the default "Submit" text and applies disabled styling when [isEnabled] is false.
class CustomButton extends StatelessWidget {
  /// The text to display on the button. Defaults to "Submit" which gets localized.
  final String title;

  /// The color of the button text. Defaults to white.
  final Color titleColor;

  /// Whether the button is enabled and can be tapped.
  final bool isEnabled;

  /// The background color of the button when enabled. Defaults to teal (0xff008480).
  final Color color;

  /// Callback function called when the button is tapped.
  final VoidCallback onTap;

  /// Optional width of the button. If null, the button will size itself.
  final double? width;

  /// The padding around the button. Defaults to 16px on all sides.
  final EdgeInsetsGeometry padding;

  /// Creates a [CustomButton] with the specified properties.
  const CustomButton({
    super.key,
    this.title = "Submit",
    this.titleColor = Colors.white,
    required this.isEnabled,
    this.width,
    this.color = const Color(0xff008480),
    required this.onTap,
    this.padding = const EdgeInsets.all(16),
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: isEnabled ? color : const Color(0xffB1B1B1),
          padding: EdgeInsets.zero,
        ),
        onPressed: isEnabled ? onTap : null,
        child: SizedBox(
          height: 45,
          width: width,
          child: Center(
            child: Text(
              title == "Submit"
                  ? IslamMobLocalizations.of(context).submit
                  : title,
              style: TextStyle(
                color: titleColor,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
