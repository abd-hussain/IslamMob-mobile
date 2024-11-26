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
  late bool _isToggled;

  @override
  void initState() {
    super.initState();
    _isToggled = widget.value;
  }

  void _toggleSwitch() {
    setState(() {
      _isToggled = !_isToggled;
    });
    widget.onChanged(_isToggled);
  }

  Alignment _getAlignment() {
    if (widget.direction == Direction.rtl) {
      return _isToggled ? Alignment.centerLeft : Alignment.centerRight;
    } else {
      return _isToggled ? Alignment.centerRight : Alignment.centerLeft;
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _toggleSwitch,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 60),
        width: 40,
        height: 25,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24),
          color: _isToggled ? const Color(0xff34C759) : const Color(0xffDFE1E3),
        ),
        child: Padding(
          padding: const EdgeInsets.all(2),
          child: AnimatedAlign(
            alignment: _getAlignment(),
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
