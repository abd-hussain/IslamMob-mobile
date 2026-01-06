import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islam_app/presentation/pray_timing_tab/bloc/pray_timing_bloc.dart';
import 'package:islam_app/presentation/pray_timing_tab/widgets/pray_timing_header_view/pray_timing_header_view.dart';

class PrayTimingScreen extends StatelessWidget {
  const PrayTimingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          PrayTimingBloc()..add(PrayTimingEvent.initialize(context)),
      child: BlocBuilder<PrayTimingBloc, PrayTimingState>(
        buildWhen: (previous, current) =>
            previous.loadingStatus != current.loadingStatus,
        builder: (context, state) {
          if (state.loadingStatus == const PrayTimingProcessState.loading()) {
            return const Center(
              child: CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation<Color>(Color(0xff292929)),
              ),
            );
          }
          return NestedScrollView(
            controller: context.read<PrayTimingBloc>().scrollController,
            headerSliverBuilder: (context, innerBoxIsScrolled) {
              return [const PrayTimingHeaderView()];
            },
            body: SingleChildScrollView(
              child: Column(
                children: [
                  _buildAppBarSpacer(),
                  // const SalahTimingView(),
                  // const SizedBox(height: 0.3),
                  // // _buildToolBarView(),
                  // // _buildInternetConnectionView(),
                  // // _buildNotificationPermissionView(),
                  // // _buildLocationPermissionView(),
                  // const AddMobBanner(),
                  // const SizedBox(height: 75),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  /// Builds the spacer under the app bar when it is collapsed.
  Widget _buildAppBarSpacer() {
    return BlocBuilder<PrayTimingBloc, PrayTimingState>(
      buildWhen: (previous, current) =>
          previous.isBarExpanded != current.isBarExpanded,
      builder: (context, state) {
        return SizedBox(height: state.isBarExpanded ? 0 : 75);
      },
    );
  }
}
