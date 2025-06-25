import 'package:flutter/material.dart';
import 'package:islam_app/shared_widgets/custom_text.dart';

class BottomNavbarItems extends StatelessWidget {
  const BottomNavbarItems({
    super.key,
    this.label,
    required this.selectedIcon,
    required this.unselectedIcon,
    this.isSelected = false,
  });

  final String? label;
  final Widget selectedIcon;
  final Widget unselectedIcon;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        if (isSelected) selectedIcon else unselectedIcon,
        const SizedBox(height: 4),
        if (label != null)
          FittedBox(
            child: CustomText(
              title: label!,
              fontSize: 14,
              color: isSelected ? Colors.white : const Color(0xFF98A2B3),
            ),
          ),
      ],
    );
  }

  BottomNavbarItems copyWith({
    Key? key,
    String? label,
    Widget? selectedIcon,
    Widget? unselectedIcon,
    bool? isSelected,
  }) {
    return BottomNavbarItems(
      key: key ?? this.key,
      label: label ?? this.label,
      selectedIcon: selectedIcon ?? this.selectedIcon,
      unselectedIcon: unselectedIcon ?? this.unselectedIcon,
      isSelected: isSelected ?? this.isSelected,
    );
  }
}
