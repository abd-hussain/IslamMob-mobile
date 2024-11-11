import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islam_app/my_app/islam_mob_app/routes.dart';
import 'package:islam_app/my_app/locator.dart';
import 'package:islam_app/screens/main_container/bloc/main_container_bloc.dart';
import 'package:islam_app/screens/main_container/widgets/tab_navigator.dart';
import 'package:islam_app/shared_widgets/appbar/main_appbar.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class MainContainer extends StatefulWidget {
  const MainContainer({super.key});

  @override
  State<MainContainer> createState() => _MainContainerState();
}

class _MainContainerState extends State<MainContainer> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => locator<MainContainerBloc>(),
      child: Scaffold(
        backgroundColor: const Color(0xffF5F6F7),
        resizeToAvoidBottomInset: false,
        appBar: const MainCustomAppBar(),
        body: SafeArea(
          child: BlocBuilder<MainContainerBloc, MainContainerState>(
            buildWhen: (previous, current) {
              return previous.selectedIndex != current.selectedIndex;
            },
            builder: (context, state) {
              return IndexedStack(
                index: state.selectedIndex,
                children: const [
                  TabNavigator(initialRoute: RoutesConstants.homeScreen),
                  TabNavigator(initialRoute: RoutesConstants.quranScreen),
                  TabNavigator(initialRoute: RoutesConstants.settingsScreen),
                ],
              );
            },
          ),
        ),
        bottomNavigationBar: Builder(
          builder: (innerContext) => ConvexAppBar(
            initialActiveIndex: 1,
            backgroundColor: Colors.white,
            activeColor: const Color(0xff007F37),
            color: const Color(0xff444444),
            height: 50,
            style: TabStyle.react,
            items: [
              TabItem(
                  icon: Icons.home, title: AppLocalizations.of(context)!.home),
              TabItem(
                  icon: Icons.menu_book_rounded,
                  title: AppLocalizations.of(context)!.qurankareem),
              TabItem(
                  icon: Icons.settings,
                  title: AppLocalizations.of(context)!.settings),
            ],
            onTap: (int index) {
              innerContext
                  .read<MainContainerBloc>()
                  .add(MainContainerEvent.changeSelectedIndex(index));
            },
          ),
        ),
      ),
    );
  }
}
