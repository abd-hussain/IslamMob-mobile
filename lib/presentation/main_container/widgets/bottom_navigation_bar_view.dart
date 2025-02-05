import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islam_app/l10n/gen/app_localizations.dart';
import 'package:islam_app/presentation/main_container/bloc/main_container_bloc.dart';

/// Builds the bottom navigation bar with tabs.
class BottomNavigationBarView extends StatelessWidget {
  const BottomNavigationBarView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MainContainerBloc, MainContainerState>(
      builder: (context, state) {
        final localization = IslamMobLocalizations.of(context);

        return ConvexAppBar(
          initialActiveIndex: state.selectedIndex,
          backgroundColor: Colors.white,
          key: context.read<MainContainerBloc>().appBarKey,
          activeColor: const Color(0xff008480),
          color: const Color(0xff444444),
          height: 55,
          style: TabStyle.react,
          items: [
            TabItem(
              icon: Icons.home,
              title: localization.home,
            ),
            TabItem(
              icon: Icons.menu_book_rounded,
              title: localization.qurankareem,
            ),
            TabItem(
              icon: Icons.settings,
              title: localization.settings,
            ),
          ],
          onTap: (int index) {
            context.read<MainContainerBloc>().add(
                  MainContainerEvent.changeSelectedIndex(index),
                );
          },
        );
      },
    );
  }
}
