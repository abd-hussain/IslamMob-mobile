import 'package:flutter/material.dart';
import 'package:islam_app/l10n/gen/app_localizations.dart';
import 'package:islam_app/shared_widgets/custom_text.dart';
import 'package:islam_app/shared_widgets/electric_counter/widgets/toggle_button.dart';

class ElectricFooterView extends StatelessWidget {
  final bool showResetHintText;
  final bool isPreviosSelected;
  final bool isNextSelected;
  final double width;
  final void Function() onPreviosSelected;
  final void Function() onNextSelected;

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
