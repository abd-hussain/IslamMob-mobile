import 'package:flutter/material.dart';
import 'package:islam_app/shared_widgets/electric_counter/widgets/electric_footer_view.dart';
import 'package:islam_app/shared_widgets/electric_counter/widgets/electric_main_view.dart';

class ElectricCounterView extends StatelessWidget {
  final int currentCount;
  final int maxCount;
  final double width;
  final bool isPreviosSelected;
  final bool isNextSelected;
  final bool isVibrationSelected;
  final bool isSoundSelected;
  final bool showResetHintText;
  final void Function() onPreviosSelected;
  final void Function() onNextSelected;
  final void Function() onVibrationSelected;
  final void Function() onSoundSelected;
  final void Function() onResetCounter;
  final void Function() onIncreaseCounter;

  const ElectricCounterView({
    super.key,
    required this.currentCount,
    required this.maxCount,
    required this.width,
    required this.showResetHintText,
    required this.isPreviosSelected,
    required this.isNextSelected,
    required this.isVibrationSelected,
    required this.isSoundSelected,
    required this.onPreviosSelected,
    required this.onNextSelected,
    required this.onVibrationSelected,
    required this.onSoundSelected,
    required this.onResetCounter,
    required this.onIncreaseCounter,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElectricMainView(
          currentCount: currentCount,
          maxCount: maxCount,
          width: width,
          isSoundSelected: isSoundSelected,
          isVibrationSelected: isVibrationSelected,
          onSoundSelected: onSoundSelected,
          onVibrationSelected: onVibrationSelected,
          onRefresh: onResetCounter,
          onIncrease: onIncreaseCounter,
        ),
        ElectricFooterView(
          width: width * 1.5,
          showResetHintText: showResetHintText,
          onPreviosSelected: onPreviosSelected,
          onNextSelected: onNextSelected,
          isPreviosSelected: isPreviosSelected,
          isNextSelected: isNextSelected,
        ),
      ],
    );
  }
}
