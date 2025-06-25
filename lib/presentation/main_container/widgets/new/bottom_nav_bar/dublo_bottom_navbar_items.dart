import 'package:flutter/material.dart';

class DubloBottomNavBarItems {
  final String title;
  final Widget selectedIcon;
  final Widget unselectedIcon;

  const DubloBottomNavBarItems({
    required this.selectedIcon,
    required this.unselectedIcon,
    required this.title,
  });
}
