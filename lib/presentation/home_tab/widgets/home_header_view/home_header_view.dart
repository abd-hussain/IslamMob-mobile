import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islam_app/domain/usecase/salah_box_usecase.dart';
import 'package:islam_app/l10n/gen/app_localizations.dart';
import 'package:islam_app/presentation/home_tab/bloc/home_header/home_header_bloc.dart';
import 'package:islam_app/presentation/home_tab/widgets/home_header_view/widgets/salah_timer_view.dart';
import 'package:islam_app/shared_widgets/custom_text.dart';

/// Widget for displaying the home screen header with Islamic prayer information.
///
/// This widget provides the main header interface for the Islamic app's home
/// screen, displaying critical prayer timing and location information. It features:
/// - **Next prayer countdown** with real-time timer functionality
/// - **Prayer time display** with accurate Islamic timing calculations
/// - **Location information** showing current city and country for prayer times
/// - **Collapsible design** with smooth expansion and collapse animations
/// - **Islamic background** with appropriate visual styling
///
/// The header serves as the primary information display for Muslims to quickly
/// see their next prayer time, countdown, and location context, ensuring they
/// can prepare for their Islamic obligations with accurate timing information.
class HomeHeaderView extends StatelessWidget {
  /// Creates a [HomeHeaderView] widget.
  ///
  /// This widget displays the main header for the Islamic app with prayer
  /// timing information, countdown functionality, and location context.
  const HomeHeaderView({super.key});

  /// Builds the home header with Islamic prayer information and countdown.
  ///
  /// This method constructs a collapsible sliver app bar featuring:
  /// - Real-time countdown timer to the next Islamic prayer
  /// - Prayer time display with AM/PM indication
  /// - Location information for prayer time accuracy
  /// - Background image with Islamic visual styling
  /// - Responsive design that adapts to scroll position
  ///
  /// The header automatically updates when prayer times change and provides
  /// essential information for Muslim users' daily prayer schedule.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          HomeHeaderBloc()..add(HomeHeaderEvent.prepareNextSalahTypeAndTime()),
      child: SliverAppBar(
        backgroundColor: const Color(0xff292929),
        expandedHeight: 250,
        collapsedHeight: 80,
        pinned: true,
        flexibleSpace: FlexibleSpaceBar(
          centerTitle: true,
          titlePadding: const EdgeInsets.only(bottom: 10),
          title: Builder(
            builder: _buildHeaderContent,
          ),
          background: _buildBackground(),
        ),
      ),
    );
  }

  /// Builds the header content displaying prayer details and location.
  Widget _buildHeaderContent(BuildContext context) {
    final homeHeaderBloc = context.read<HomeHeaderBloc>();

    return BlocBuilder<HomeHeaderBloc, HomeHeaderState>(
      buildWhen: (previous, current) =>
          previous.nextPrayType != current.nextPrayType ||
          previous.nextPrayDateTime != current.nextPrayDateTime,
      builder: (context, state) {
        return state.nextPrayDateTime == null
            ? const SizedBox.shrink()
            : Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  _buildNextSalahInfo(context, state),
                  _buildSalahTimer(homeHeaderBloc, state),
                  _buildNextSalahTime(homeHeaderBloc),
                  _buildLocationInfo(homeHeaderBloc),
                ],
              );
      },
    );
  }

  /// Builds the next Salah info container.
  Widget _buildNextSalahInfo(BuildContext context, HomeHeaderState state) {
    return Container(
      decoration: _blackOverlayDecoration(),
      padding: const EdgeInsets.only(left: 5, right: 5, top: 2),
      child: CustomText(
        title:
            "${SalahBoxUseCase.getSalahName(context, state.nextPrayType)} ${IslamMobLocalizations.of(context).after}",
        fontSize: 12,
      ),
    );
  }

  /// Builds the Salah timer view.
  Widget _buildSalahTimer(HomeHeaderBloc bloc, HomeHeaderState state) {
    return Container(
      decoration: _blackOverlayDecoration(),
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: SalahTimerView(
          targetTime: state.nextPrayDateTime!,
          onTimerFinished: () {
            bloc.add(HomeHeaderEvent.prepareNextSalahTypeAndTime());
          }),
    );
  }

  /// Builds the next Salah time with AM/PM indication.
  Widget _buildNextSalahTime(HomeHeaderBloc bloc) {
    return ColoredBox(
      color: Colors.black45,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            CustomText(
              title: bloc.getNextSalahTime(),
              fontSize: 12,
            ),
            const SizedBox(width: 2),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText(
                  title: bloc.knowTimingAMorPM(),
                  fontSize: 6,
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  /// Builds the location information.
  Widget _buildLocationInfo(HomeHeaderBloc bloc) {
    return Container(
      decoration: _blackOverlayDecoration(),
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(
            Icons.location_on,
            color: Color(0xff008480),
            size: 12,
          ),
          CustomText(
            title:
                "${bloc.currentSubCity()}, ${bloc.currentCity()}, ${bloc.currentCountry()}",
            fontSize: 10,
          ),
        ],
      ),
    );
  }

  /// Builds the background image with opacity.
  Widget _buildBackground() {
    return Opacity(
      opacity: 0.6,
      child: Image.asset(
        "assets/images/background.png",
        fit: BoxFit.cover,
      ),
    );
  }

  /// Creates a common decoration for black overlay containers.
  BoxDecoration _blackOverlayDecoration() {
    return const BoxDecoration(
      color: Colors.black45,
      borderRadius: BorderRadius.all(Radius.circular(5)),
    );
  }
}
