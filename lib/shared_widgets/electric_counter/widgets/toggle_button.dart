import 'package:flutter/material.dart';

/// A toggle button widget with icon and selection state styling.
///
/// This widget displays a rounded rectangular button with an icon that changes
/// color based on the selection state. When selected, the icon appears in yellow,
/// otherwise it appears in a darker color. The button size is proportional to the width.
class ToggleButton extends StatelessWidget {
  /// The icon to display in the button.
  final IconData icon;

  /// The width used for calculating the button's dimensions.
  final double width;

  /// Whether the button is currently selected/active.
  final bool isSelected;

  /// Optional callback function called when the button is pressed.
  final void Function()? onPressed;

  /// Creates a [ToggleButton] with the specified properties.
  const ToggleButton({
    super.key,
    required this.icon,
    required this.width,
    required this.isSelected,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        width: width * 0.07,
        height: width * 0.07,
        decoration: BoxDecoration(
          color: const Color(0xFF6A8584),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Icon(
          icon,
          color: _toggleButtonIconColor(isSelected),
        ),
      ),
    );
    // return ElevatedButton(
    //   style: ElevatedButton.styleFrom(
    //     shape: const CircleBorder(),
    //     padding: const EdgeInsets.all(8),
    //     backgroundColor: const Color(0xFF89ABAA),
    //   ),
    //   onPressed: onPressed,
    //   child: Icon(
    //     icon,
    //     color: _toggleButtonIconColor(isSelected),
    //     size: 32,
    //   ),
    // );
  }

  Color _toggleButtonIconColor(bool state) {
    return state ? const Color(0xFFFFCB42) : const Color(0xFF4B5E5E);
  }
}
