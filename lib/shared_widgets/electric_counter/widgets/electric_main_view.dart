import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:islam_app/shared_widgets/electric_counter/widgets/electric_counter_display.dart';
import 'package:islam_app/shared_widgets/electric_counter/widgets/electric_max_counter_view.dart';
import 'package:islam_app/shared_widgets/electric_counter/widgets/toggle_button.dart';

class ElectricMainView extends StatelessWidget {
  final int currentCount;
  final int maxCount;
  final double width;
  final void Function() onRefresh;
  final void Function() onIncrease;
  final void Function() onVibrationSelected;
  final void Function() onSoundSelected;
  final bool isVibrationSelected;
  final bool isSoundSelected;

  const ElectricMainView({
    super.key,
    required this.currentCount,
    required this.maxCount,
    required this.width,
    required this.onVibrationSelected,
    required this.onSoundSelected,
    required this.onRefresh,
    required this.onIncrease,
    required this.isVibrationSelected,
    required this.isSoundSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        // Tasbeeh Counter outer image
        _buildTasbeehImage(
          assetPath: 'assets/images/tasbeeh_counter_layout.svg',
          color: const Color(0xFF89ABAA),
          size: width * 0.8,
        ),
        // Tasbeeh Counter inner image
        _buildTasbeehImage(
          assetPath: 'assets/images/tasbeeh_counter_layout.svg',
          color: const Color(0xFF4B5E5E),
          size: width * 0.75,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElectricCounterDisplay(
              width: width,
              hight: width * 0.2,
              currentCount: currentCount,
            ),
            SizedBox(height: width * 0.02),
            _buildButtonRow(
              context: context,
              maxCount: maxCount,
              width: width,
              onRefresh: onRefresh,
              isVibrationSelected: isVibrationSelected,
              isSoundSelected: isSoundSelected,
              onSoundSelected: onSoundSelected,
              onVibrationSelected: onVibrationSelected,
            ),
            SizedBox(height: width * 0.03),
            _buildIncrementButton(context: context, width: width, onPressed: onIncrease),
          ],
        ),
      ],
    );
  }
}

/// Builds the Tasbeeh counter image with specified color and padding.
Widget _buildTasbeehImage({
  required String assetPath,
  required Color color,
  required double size,
}) {
  return SvgPicture.asset(
    assetPath,
    colorFilter: ColorFilter.mode(color, BlendMode.srcIn),
    height: size,
    width: size,
  );
}

/// Builds the row containing the reset button.
Widget _buildButtonRow({
  required BuildContext context,
  required int maxCount,
  required double width,
  required bool isSoundSelected,
  required bool isVibrationSelected,
  required void Function() onVibrationSelected,
  required void Function() onSoundSelected,
  required void Function()? onRefresh,
}) {
  return SizedBox(
    width: width * 0.45,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ToggleButton(
          width: width,
          icon: Icons.volume_up_rounded,
          isSelected: isSoundSelected,
          onPressed: onSoundSelected,
        ),
        SizedBox(width: width * 0.03),
        ToggleButton(
          width: width,
          icon: Icons.vibration_rounded,
          isSelected: isVibrationSelected,
          onPressed: onVibrationSelected,
        ),
        SizedBox(width: width * 0.03),
        ToggleButton(
          width: width,
          icon: Icons.refresh,
          isSelected: true,
          onPressed: onRefresh,
        ),
        const Expanded(child: SizedBox()),
        ElectricMaxCounterView(maxCount: maxCount, width: width),
      ],
    ),
  );
}

/// Builds the increment button.
Widget _buildIncrementButton({
  required BuildContext context,
  required double width,
  required void Function()? onPressed,
}) {
  return InkWell(
    onTap: onPressed,
    child: Container(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 14),
      width: width * 0.32,
      height: width * 0.32,
      decoration: BoxDecoration(
        color: const Color(0xFFC0C0C0),
        borderRadius: BorderRadius.circular(100),
        boxShadow: [
          BoxShadow(
            color: const Color(0xFF89ABAA).withValues(alpha: 0.1),
            spreadRadius: 5,
            blurRadius: 7,
            offset: const Offset(0, 3),
          ),
        ],
      ),
    ),
  );
}
