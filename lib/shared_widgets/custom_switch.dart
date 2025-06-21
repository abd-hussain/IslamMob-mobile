import 'package:flutter/material.dart';

/// Enum representing text direction for the switch animation.
enum Direction {
  /// Left-to-right direction.
  ltr,

  /// Right-to-left direction.
  rtl
}

/// A custom switch widget with directional support and smooth animations.
///
/// This widget provides a toggle switch with customizable direction behavior
/// that supports both LTR and RTL layouts. The switch animates smoothly
/// between on and off states with a teal color when active.
class CustomSwitch extends StatelessWidget {
  /// The current state of the switch (true for on, false for off).
  final bool value;

  /// The direction for the switch animation (LTR or RTL).
  final Direction direction;

  /// Callback function called when the switch state changes.
  final ValueChanged<bool> onChanged;

  /// Creates a [CustomSwitch] with the specified [value], [direction], and [onChanged] callback.
  const CustomSwitch({
    super.key,
    required this.value,
    required this.onChanged,
    required this.direction,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onChanged(!value),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 60),
        width: 40,
        height: 25,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24),
          color: value ? const Color(0xff008480) : const Color(0xffDFE1E3),
        ),
        child: Padding(
          padding: const EdgeInsets.all(2),
          child: AnimatedAlign(
            alignment: _getAlignment(direction, value),
            duration: const Duration(milliseconds: 60),
            child: Container(
              width: 20,
              height: 20,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }

  Alignment _getAlignment(Direction direction, bool isToggled) {
    if (direction == Direction.rtl) {
      return isToggled ? Alignment.centerLeft : Alignment.centerRight;
    } else {
      return isToggled ? Alignment.centerRight : Alignment.centerLeft;
    }
  }
}
