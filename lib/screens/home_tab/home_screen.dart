import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islam_app/screens/home_tab/bloc/home_tab_bloc.dart';
import 'package:islam_app/screens/home_tab/widgets/azkar/azkar_view.dart';
import 'package:islam_app/screens/home_tab/widgets/home_header_view/home_header_view.dart';
import 'package:islam_app/screens/home_tab/widgets/notification_permission_view.dart';
import 'package:islam_app/screens/home_tab/widgets/salah_timing_view.dart';
import 'package:islam_app/shared_widgets/admob_banner.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeTabBloc(),
      child: Builder(builder: (context) {
        return NestedScrollView(
          controller: context.read<HomeTabBloc>().scrollController,
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              const HomeHeaderView(),
            ];
          },
          body: SingleChildScrollView(
            child: Column(
              children: [
                BlocBuilder<HomeTabBloc, HomeTabState>(
                  buildWhen: (previous, current) =>
                      previous.isBarExpanded != current.isBarExpanded,
                  builder: (context, state) {
                    return SizedBox(height: state.isBarExpanded ? 0 : 75);
                  },
                ),
                SalahTimingView(
                  currentLanguageCode:
                      context.read<HomeTabBloc>().currentLanguageCode(),
                ),
                BlocBuilder<HomeTabBloc, HomeTabState>(
                  buildWhen: (previous, current) =>
                      previous.showAllowNotificationView !=
                      current.showAllowNotificationView,
                  builder: (context, state) {
                    if (!state.showAllowNotificationView) {
                      return const SizedBox.shrink();
                    }
                    return const NotificationPermissionView();
                  },
                ),
                const AddMobBanner(),
                const AzkarView(),
                const SizedBox(height: 20),
              ],
            ),
          ),
        );
      }),
    );
  }
}
