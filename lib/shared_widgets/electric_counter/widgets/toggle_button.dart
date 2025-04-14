import 'package:flutter/material.dart';

class ToggleButton extends StatelessWidget {
  final IconData icon;
  final double width;
  final bool isSelected;
  final void Function()? onPressed;

  const ToggleButton({
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
