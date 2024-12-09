import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islam_app/presentation/main_container/bloc/main_container_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

/// Builds the bottom navigation bar with tabs.
class BottomNavigationBarView extends StatelessWidget {
  const BottomNavigationBarView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MainContainerBloc, MainContainerState>(
      builder: (context, state) {
        return ConvexAppBar(
          initialActiveIndex: state.selectedIndex,
          backgroundColor: Colors.white,
          activeColor: const Color(0xff007F37),
          color: const Color(0xff444444),
          height: 55,
          style: TabStyle.react,
          items: [
            TabItem(
              icon: Icons.home,
              title: AppLocalizations.of(context)!.home,
            ),
            TabItem(
              icon: Icons.menu_book_rounded,
              title: AppLocalizations.of(context)!.qurankareem,
            ),
            TabItem(
              icon: Icons.settings,
              title: AppLocalizations.of(context)!.settings,
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

// bottomNavigationBar: Builder(
//   builder: (innerContext) => ConvexAppBar(
//     initialActiveIndex: 1,
//     backgroundColor: Colors.white,
//     activeColor: const Color(0xff007F37),
//     color: const Color(0xff444444),
//     height: 55,
//     style: TabStyle.react,
//     items: [
//       TabItem(icon: Icons.home, title: AppLocalizations.of(context)!.home),
//       TabItem(icon: Icons.menu_book_rounded, title: AppLocalizations.of(context)!.qurankareem),
//       TabItem(icon: Icons.settings, title: AppLocalizations.of(context)!.settings),
//     ],
//     onTap: (int index) {
//       innerContext.read<MainContainerBloc>().add(MainContainerEvent.changeSelectedIndex(index));
//     },
//   ),
// ),
