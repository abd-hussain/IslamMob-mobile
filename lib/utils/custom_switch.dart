import 'package:flutter/material.dart';

enum Direction {
  ltr,
  rtl,
}

class CustomSwitch extends StatefulWidget {
  final bool value;
  final Direction direction;

  final ValueChanged<bool> onChanged;
  const CustomSwitch({
    super.key,
    this.value = false,
    required this.onChanged,
    required this.direction,
  });
  @override
  State<CustomSwitch> createState() => _CustomSwitchState();
}

class _CustomSwitchState extends State<CustomSwitch>
    with SingleTickerProviderStateMixin {
  bool toggleNotifier = false;

  @override
  void initState() {
    toggleNotifier = widget.value;
    setState(() {});
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        toggleNotifier = !toggleNotifier;
        setState(() {});
        widget.onChanged(toggleNotifier);
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 60),
        width: 40,
        height: 25,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24),
          color: toggleNotifier
              ? const Color(0xff34C759)
              : const Color(0xffDFE1E3),
        ),
        child: Padding(
          padding: const EdgeInsets.all(2),
          child: AnimatedAlign(
            alignment: widget.direction == Direction.rtl
                ? (toggleNotifier == true
                    ? Alignment.centerLeft
                    : Alignment.centerRight)
                : (toggleNotifier == true
                    ? Alignment.centerRight
                    : Alignment.centerLeft),
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
}
