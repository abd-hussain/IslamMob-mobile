import 'package:advertisments_manager/advertisments_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islam_app/domain/usecase/salah_time_state_parser.dart';
import 'package:islam_app/domain/usecase/setup_local_notification_when_app_open_usecase.dart';
import 'package:islam_app/presentation/home_tab/bloc/home/home_tab_bloc.dart';
import 'package:islam_app/presentation/home_tab/widgets/azkar_after_salah/azkar_after_salah_view.dart';
import 'package:islam_app/presentation/home_tab/widgets/home_header_view/home_header_view.dart';
import 'package:islam_app/presentation/home_tab/widgets/location_permission_view.dart';
import 'package:islam_app/presentation/home_tab/widgets/notification_permission_view.dart';
import 'package:islam_app/presentation/home_tab/widgets/salah_timing_view/salah_timing_view.dart';
import 'package:islam_app/presentation/home_tab/widgets/toolbar_shortcut/toolbar_shortcut_view.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeTabBloc(),
      child: Builder(builder: (context) {
        final scrollController = context.read<HomeTabBloc>().scrollController;
        SetupLocalNotificationWhenAppOpenUseCase().call(context: context);

        return NestedScrollView(
          controller: scrollController,
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return [
              const HomeHeaderView(),
            ];
          },
          body: SingleChildScrollView(
            child: Column(
              children: [
                _buildAppBarSpacer(),
                const SalahTimingView(),
                const SizedBox(height: 0.3),
                const ToolbarShortcutView(),
                _buildNotificationPermissionView(),
                _buildLocationPermissionView(),
                const AddMobBanner(),
                _buildAzkarView(),
                const AddMobBanner(),
                const SizedBox(height: 20),
              ],
            ),
          ),
        );
      }),
    );
  }

  /// Builds the spacer under the app bar when it is collapsed.
  Widget _buildAppBarSpacer() {
    return BlocBuilder<HomeTabBloc, HomeTabState>(
      buildWhen: (previous, current) =>
          previous.isBarExpanded != current.isBarExpanded,
      builder: (context, state) {
        return SizedBox(height: state.isBarExpanded ? 0 : 75);
      },
    );
  }

  /// Builds the Azkar view based on the next prayer type.
  Widget _buildAzkarView() {
    return BlocBuilder<HomeTabBloc, HomeTabState>(
      buildWhen: (previous, current) =>
          previous.nextPrayType != current.nextPrayType,
      builder: (context, state) {
        return AzkarAfterSalahView(
            salahType:
                SalahTimeStateParser.getSalahTimeState(state.nextPrayType));
      },
    );
  }

  /// Builds the notification permission view when applicable.
  Widget _buildNotificationPermissionView() {
    return BlocBuilder<HomeTabBloc, HomeTabState>(
      buildWhen: (previous, current) =>
          previous.showAllowNotificationView !=
          current.showAllowNotificationView,
      builder: (context, state) {
        return state.showAllowNotificationView
            ? const NotificationPermissionView()
            : const SizedBox.shrink();
      },
    );
  }

  /// Builds the location permission view when applicable.
  Widget _buildLocationPermissionView() {
    return BlocBuilder<HomeTabBloc, HomeTabState>(
      buildWhen: (previous, current) =>
          previous.showAllowLocationView != current.showAllowLocationView,
      builder: (context, state) {
        return state.showAllowLocationView
            ? const LocationPermissionView()
            : const SizedBox.shrink();
      },
    );
  }
}
