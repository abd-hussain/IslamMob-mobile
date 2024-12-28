import 'package:azkar/core/azkar_salah_time.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islam_app/presentation/home_tab/bloc/home/home_tab_bloc.dart';
import 'package:islam_app/presentation/home_tab/widgets/home_header_view/home_header_view.dart';
import 'package:islam_app/presentation/home_tab/widgets/notification_permission_view.dart';
import 'package:islam_app/presentation/home_tab/widgets/salah_timing_view/salah_timing_view.dart';
import 'package:islam_app/shared_widgets/admob_banner.dart';
import 'package:azkar/presentation/azkar_list/azkar_after_salah_view.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeTabBloc(),
      child: Builder(builder: (context) {
        final scrollController = context.read<HomeTabBloc>().scrollController;

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
                _buildNotificationPermissionView(),
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

  /// Builds the Azkar view based on the next prayer type.
  Widget _buildAzkarView() {
    return BlocBuilder<HomeTabBloc, HomeTabState>(
      buildWhen: (previous, current) =>
          previous.nextPrayType != current.nextPrayType,
      builder: (context, state) {
        return AzkarAfterSalahView(
            salahType: getSalahTimeState(state.nextPrayType));
      },
    );
  }

  AzkarSalahTimeState getSalahTimeState(SalahTimeState prayType) {
    switch (prayType) {
      case SalahTimeStateFajir():
        return const AzkarSalahTimeState.fajir();
      case SalahTimeStateSunrise():
        return const AzkarSalahTimeState.sunrise();
      case SalahTimeStateZhur():
        return const AzkarSalahTimeState.zhur();
      case SalahTimeStateAsr():
        return const AzkarSalahTimeState.asr();
      case SalahTimeStateMaghrib():
        return const AzkarSalahTimeState.maghrib();
      case SalahTimeStateIsha():
        return const AzkarSalahTimeState.isha();
      case SalahTimeStateNone():
        return const AzkarSalahTimeState.none();
    }
  }
}
