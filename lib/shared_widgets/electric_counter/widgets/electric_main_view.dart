import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:islam_app/shared_widgets/electric_counter/widgets/electric_counter_display.dart';
import 'package:islam_app/shared_widgets/electric_counter/widgets/electric_max_counter_view.dart';
import 'package:islam_app/shared_widgets/electric_counter/widgets/toggle_button.dart';

/// The main view widget for the electric counter (Tasbeeh) interface.
///
/// This widget displays a circular counter interface with layered SVG images,
/// a counter display, control buttons for sound/vibration/reset, and an
/// increment button. It provides a complete digital Tasbeeh counter experience.
class ElectricMainView extends StatelessWidget {
  /// The current count value to display.
  final int currentCount;

  /// The maximum count value for the counter.
  final int maxCount;

  /// The width used for sizing various elements in the interface.
  final double width;

  /// Callback function called when the refresh/reset button is pressed.
  final void Function() onRefresh;

  /// Callback function called when the increment button is pressed.
  final void Function() onIncrease;

  /// Callback function called when the vibration toggle button is pressed.
  final void Function() onVibrationSelected;

  /// Callback function called when the sound toggle button is pressed.
  final void Function() onSoundSelected;

  /// Whether the vibration option is currently selected/enabled.
  final bool isVibrationSelected;

  /// Whether the sound option is currently selected/enabled.
  final bool isSoundSelected;

  /// Creates an [ElectricMainView] with the specified properties.
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
            _buildIncrementButton(
              context: context,
              width: width,
              onPressed: onIncrease,
            ),
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
