import 'package:advertisments_manager/advertisments_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islam_app/domain/usecase/salah_time_state_parser.dart';
import 'package:islam_app/presentation/home_tab/bloc/home_tab_bloc.dart';
import 'package:islam_app/presentation/home_tab/widgets/internet_connection_view.dart';
import 'package:islam_app/presentation/home_tab/widgets/location_permission_view.dart';
import 'package:islam_app/presentation/home_tab/widgets/next_salah_view/next_salah_view.dart';
import 'package:islam_app/presentation/home_tab/widgets/notification_permission_view.dart';
import 'package:islam_app/presentation/home_tab/widgets/toolbar_shortcut/toolbar_shortcut_view.dart';

/// Main home screen of the Islamic application.
///
/// This screen serves as the central hub for Islamic functionality,
/// providing Muslims with essential prayer information and quick access
/// to Islamic features. It features:
/// - **Prayer time display** with next prayer countdown and timing
/// - **Islamic calendar integration** with Hijri date information
/// - **Post-prayer Azkar** for spiritual practice after prayers
/// - **Permission management** for location and notification access
/// - **Quick shortcuts** to Islamic features and content
/// - **Advertisement integration** for app monetization
///
/// The home screen is designed to be the primary interface where Muslims
/// access their daily Islamic needs including prayer times, spiritual
/// practices, and navigation to other Islamic features in the app.
class HomeScreen extends StatelessWidget {
  /// Creates a [HomeScreen] widget.
  ///
  /// This screen displays the main Islamic app interface with prayer times,
  /// spiritual content, and navigation to Islamic features.
  const HomeScreen({super.key});

  /// Builds the main home screen with Islamic content and functionality.
  ///
  /// This method constructs the complete home interface featuring:
  /// - Nested scroll view with collapsible header for prayer information
  /// - Prayer timing display with accurate Islamic calculations
  /// - Toolbar shortcuts for quick access to Islamic features
  /// - Permission request views for location and notifications
  /// - Post-prayer Azkar content for spiritual practice
  /// - Advertisement banners for app monetization
  ///
  /// The screen automatically adapts based on prayer times and user
  /// permissions to provide the most relevant Islamic content.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeTabBloc()..add(HomeTabEvent.initialize(context)),
      child: BlocBuilder<HomeTabBloc, HomeTabState>(
        buildWhen: (previous, current) =>
            previous.loadingStatus != current.loadingStatus,
        builder: (context, state) {
          if (state.loadingStatus == const HomeScreenProcessState.loading()) {
            return const Center(
              child: CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation<Color>(Color(0xff292929)),
              ),
            );
          }
          return SingleChildScrollView(
            child: Column(
              children: [
                NextSalahView(salahType: state.nextPrayType),
                _buildToolBarView(),
                _buildInternetConnectionView(),
                _buildNotificationPermissionView(),
                _buildLocationPermissionView(),
                const AddMobBanner(),
                const SizedBox(height: 75),
              ],
            ),
          );
        },
      ),
    );
  }

  /// Builds the ToolBar view based on the next prayer type.
  Widget _buildToolBarView() {
    return BlocBuilder<HomeTabBloc, HomeTabState>(
      buildWhen: (previous, current) =>
          previous.nextPrayType != current.nextPrayType,
      builder: (context, state) {
        return ToolbarShortcutView(
          salahTime: SalahTimeStateParser.getSalahTimeState(state.nextPrayType),
        );
      },
    );
  }

  /// Builds the Internet Connection Issue view when applicable.
  Widget _buildInternetConnectionView() {
    return BlocBuilder<HomeTabBloc, HomeTabState>(
      buildWhen: (previous, current) =>
          previous.showInternetConnectionView !=
          current.showInternetConnectionView,
      builder: (context, state) {
        return state.showInternetConnectionView
            ? const InternetConnectionView()
            : const SizedBox.shrink();
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
