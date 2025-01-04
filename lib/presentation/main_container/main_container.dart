import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islam_app/domain/usecase/version_usecase.dart';
import 'package:islam_app/my_app/islam_mob_app/routes.dart';
import 'package:islam_app/my_app/locator.dart';
import 'package:islam_app/presentation/main_container/bloc/main_container_bloc.dart';
import 'package:islam_app/presentation/main_container/widgets/bottom_navigation_bar_view.dart';
import 'package:islam_app/presentation/main_container/widgets/tab_navigator.dart';
import 'package:islam_app/shared_widgets/appbar/main_appbar.dart';
import 'package:islam_app/shared_widgets/dialogs/version_update/version_dialog.dart';

class MainContainer extends StatefulWidget {
  const MainContainer({super.key});

  @override
  State<MainContainer> createState() => _MainContainerState();
}

class _MainContainerState extends State<MainContainer> {
  @override
  void didChangeDependencies() {
    VersionUseCase().getCurrentVersionUpdateStatus().then((status) async {
      if (status != VersionUpdate.noUpdate) {
        // ignore: use_build_context_synchronously
        await _showVersionUpdateDialog(context, status);
      }
    });
    super.didChangeDependencies();
  }

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
            buildWhen: (previous, current) =>
                previous.selectedIndex != current.selectedIndex,
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
        bottomNavigationBar: const BottomNavigationBarView(),
      ),
    );
  }

  Future _showVersionUpdateDialog(
      BuildContext context, VersionUpdate versionUpdate) async {
    await VersionDialog().dialog(
      context: context,
      isOptional: versionUpdate == VersionUpdate.optional,
    );
  }
}
