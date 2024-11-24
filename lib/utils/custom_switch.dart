import 'package:flutter/material.dart';

class CustomSwitch extends StatefulWidget {
  const CustomSwitch({
    super.key,
    this.value,
    this.onChanged,
    this.backgroundColorOfSelection,
    this.hight = 25.0,
    this.width = 40.0,
    this.toggleNotifier,
  });
  final bool? value;
  final Color? backgroundColorOfSelection;
  final ValueChanged<bool>? onChanged;
  final double hight;
  final double width;
  final ValueNotifier<bool>? toggleNotifier;

  @override
  State<CustomSwitch> createState() => _CustomSwitchState();
}

class _CustomSwitchState extends State<CustomSwitch> with SingleTickerProviderStateMixin {
  //TODO: refactor this page and make it rotate for arabic

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<bool>(
        valueListenable: widget.toggleNotifier ?? ValueNotifier<bool>(widget.value!),
        builder: (context, toggleNotifier, child) {
          return GestureDetector(
            onTap: () {
              widget.value == false ? widget.onChanged!(true) : widget.onChanged!(false);
            },
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 60),
              width: widget.width,
              height: widget.hight,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24),
                color: !toggleNotifier
                    ? const Color(0xffDFE1E3)
                    : widget.backgroundColorOfSelection ?? const Color(0xff34C759),
              ),
              child: Padding(
                padding: const EdgeInsets.all(1.5),
                child: AnimatedAlign(
                  alignment: toggleNotifier == true ? Alignment.centerRight : Alignment.centerLeft,
                  duration: const Duration(milliseconds: 60),
                  child: Container(
                    width: 20,
                    height: 20,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xffFFFFFF),
                    ),
                  ),
                ),
              ),
            ),
          );
        });
  }
}
