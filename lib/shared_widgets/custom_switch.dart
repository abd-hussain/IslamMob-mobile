import 'package:flutter/material.dart';

enum Direction {
  ltr,
  rtl,
}

class CustomSwitch extends StatelessWidget {
  final bool value;
  final Direction direction;
  final ValueChanged<bool> onChanged;
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
          color: value ? const Color(0xff34C759) : const Color(0xffDFE1E3),
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
