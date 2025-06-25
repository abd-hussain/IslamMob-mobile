import 'package:flutter/material.dart';
import 'package:islam_app/presentation/main_container/widgets/new/bottom_nav_bar/bottom_navbar.dart';
import 'package:islam_app/presentation/main_container/widgets/new/bottom_nav_bar/bottom_navbar_items.dart';
import 'package:islam_app/presentation/main_container/widgets/new/bottom_nav_bar/dublo_bottom_navbar_items.dart';

class DuploBottomNavbar extends StatelessWidget {
  const DuploBottomNavbar({
    super.key,
    required this.navItems,
    this.selectedIndex = 0,
    this.onNavBarCallBack,
  });
  final List<DubloBottomNavBarItems> navItems;
  final int selectedIndex;
  final void Function(int)? onNavBarCallBack;

  @override
  Widget build(BuildContext context) {
    return BottomNavbar(
      onNavBarCallBack: onNavBarCallBack,
      initialIndex: selectedIndex,
      navItems: navItems
          .map(
            (e) => BottomNavbarItems(
              label: e.title,
              selectedIcon: e.selectedIcon,
              unselectedIcon: e.unselectedIcon,
            ),
          )
          .toList(),
    );
  }
}
