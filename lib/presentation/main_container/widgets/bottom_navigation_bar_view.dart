import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islam_app/l10n/gen/app_localizations.dart';
import 'package:islam_app/presentation/main_container/bloc/main_container_bloc.dart';
import 'package:islam_app/presentation/main_container/widgets/new/bottom_nav_bar/dublo_bottom_navbar_items.dart';
import 'package:islam_app/presentation/main_container/widgets/new/bottom_nav_bar/duplo_bottom_navbar.dart';

/// Builds the bottom navigation bar with tabs.
class BottomNavigationBarView extends StatefulWidget {
  /// Creates a [BottomNavigationBarView] widget.
  const BottomNavigationBarView({super.key});

  @override
  State<BottomNavigationBarView> createState() =>
      _BottomNavigationBarViewState();
}

class _BottomNavigationBarViewState extends State<BottomNavigationBarView> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MainContainerBloc, MainContainerState>(
      builder: (context, state) {
        final localization = IslamMobLocalizations.of(context);
        return DuploBottomNavbar(
          selectedIndex: state.selectedIndex,
          navItems: [
            DubloBottomNavBarItems(
              title: localization.home,
              selectedIcon: const Icon(Icons.home, color: Colors.white),
              unselectedIcon: const Icon(Icons.home, color: Color(0xff98A2B3)),
            ),
            DubloBottomNavBarItems(
              title: localization.qurankareem,
              selectedIcon: const Icon(
                Icons.menu_book_rounded,
                color: Colors.white,
              ),
              unselectedIcon: const Icon(
                Icons.menu_book_rounded,
                color: Color(0xff98A2B3),
              ),
            ),
            DubloBottomNavBarItems(
              title: localization.settings,
              selectedIcon: const Icon(Icons.settings, color: Colors.white),
              unselectedIcon: const Icon(
                Icons.settings,
                color: Color(0xff98A2B3),
              ),
            ),
          ],
          onNavBarCallBack: (int index) {
            context.read<MainContainerBloc>().add(
              MainContainerEvent.changeSelectedIndex(index),
            );
          },
        );
      },
    );
  }
}
