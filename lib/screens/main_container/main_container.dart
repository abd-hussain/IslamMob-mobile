import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islam_app/my_app/islam_mob_app/routes.dart';
import 'package:islam_app/screens/main_container/bloc/main_container_bloc.dart';
import 'package:islam_app/screens/main_container/widgets/tab_navigator.dart';

class MainContainer extends StatefulWidget {
  const MainContainer({super.key});

  @override
  State<MainContainer> createState() => _MainContainerState();
}

class _MainContainerState extends State<MainContainer> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => MainContainerBloc(),
      child: Scaffold(
        backgroundColor: const Color(0xffF5F6F7),
        resizeToAvoidBottomInset: false,
        body: SafeArea(
          child: BlocBuilder<MainContainerBloc, MainContainerState>(
            buildWhen: (previous, current) {
              return previous.selectedIndex != current.selectedIndex;
            },
            builder: (context, state) {
              return IndexedStack(
                index: context
                    .read<MainContainerBloc>()
                    .getSelectedIndexDependOnTab(state.selectedIndex),
                children: const [
                  TabNavigator(initialRoute: RoutesConstants.quranScreen),
                ],
              );
            },
          ),
        ),
        bottomNavigationBar: ConvexAppBar(
          initialActiveIndex: 0,
          backgroundColor: Colors.white,
          activeColor: const Color(0xff4CB6EA),
          color: const Color(0xff444444),
          cornerRadius: 8,
          height: 60,
          style: TabStyle.fixedCircle,
          items: const [
            TabItem(icon: Icons.menu_book_rounded),
          ],
          onTap: (int index) {
            context.read<MainContainerBloc>().add(
                  MainContainerEvent.changeSelectedIndex(
                    context
                        .read<MainContainerBloc>()
                        .returnSelectedTypeDependOnIndex(index),
                  ),
                );
          },
        ),
      ),
    );
  }
}
