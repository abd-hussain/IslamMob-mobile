import 'package:flutter/material.dart';
import 'package:islam_app/l10n/gen/app_localizations.dart';
import 'package:islam_app/shared_widgets/custom_text.dart';
import 'package:islam_app/shared_widgets/electric_counter/widgets/toggle_button.dart';

/// A footer widget for the electric counter with navigation toggle buttons.
///
/// This widget displays previous and next navigation buttons with directional
/// arrow icons that adapt to the current text direction (LTR/RTL). It optionally
/// shows a reset hint text between the buttons and handles button selection states.
class ElectricFooterView extends StatelessWidget {
  /// Whether to show the reset hint text between the navigation buttons.
  final bool showResetHintText;

  /// Whether the previous button is currently selected/active.
  final bool isPreviosSelected;

  /// Whether the next button is currently selected/active.
  final bool isNextSelected;

  /// The width for the toggle buttons.
  final double width;

  /// Callback function called when the previous button is pressed.
  final void Function() onPreviosSelected;

  /// Callback function called when the next button is pressed.
  final void Function() onNextSelected;

  /// Creates an [ElectricFooterView] with the specified properties.
  const ElectricFooterView({
    super.key,
    required this.width,
    required this.showResetHintText,
    required this.onPreviosSelected,
    required this.onNextSelected,
    required this.isPreviosSelected,
    required this.isNextSelected,
  });

  @override
  Widget build(BuildContext context) {
    final localizations = IslamMobLocalizations.of(context);

    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          // Previos toggle button
          ToggleButton(
            icon: Directionality.of(context) == TextDirection.rtl
                ? Icons.keyboard_double_arrow_right_outlined
                : Icons.keyboard_double_arrow_left_outlined,
            isSelected: isPreviosSelected,
            width: width,
            onPressed: onPreviosSelected,
          ),
          if (showResetHintText)
            CustomText(
              title: localizations.counterResetDaily,
              fontSize: 12,
              color: const Color(0xff444444),
              fontWeight: FontWeight.bold,
            ),
          // Next toggle button
          ToggleButton(
            icon: Directionality.of(context) == TextDirection.rtl
                ? Icons.keyboard_double_arrow_left_outlined
                : Icons.keyboard_double_arrow_right_outlined,
            isSelected: isNextSelected,
            width: width,
            onPressed: onNextSelected,
          ),
        ],
      ),
    );
  }
}
