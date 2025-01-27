import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islam_app/domain/sealed/salah_time_state.dart';
import 'package:islam_app/l10n/gen/app_localizations.dart';
import 'package:islam_app/presentation/home_tab/bloc/home_header/home_header_bloc.dart';
import 'package:islam_app/presentation/home_tab/widgets/home_header_view/widgets/salah_timer_view.dart';
import 'package:islam_app/shared_widgets/custom_text.dart';

class HomeHeaderView extends StatelessWidget {
  const HomeHeaderView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeHeaderBloc()..add(HomeHeaderEvent.prepareNextSalahTypeAndTime()),
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
          previous.nextPrayType != current.nextPrayType || previous.nextPrayDateTime != current.nextPrayDateTime,
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
            "${_getSalahName(context: context, salahType: state.nextPrayType)} ${IslamMobLocalizations.of(context).after}",
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
            title: "${bloc.currentSubCity()}, ${bloc.currentCity()}, ${bloc.currentCountry()}",
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

  /// Helper method to get Salah name localized.
  String _getSalahName({required BuildContext context, required SalahTimeState salahType}) {
    final localization = IslamMobLocalizations.of(context);
    switch (salahType) {
      case SalahTimeStateFajir():
        return localization.fajr;
      case SalahTimeStateSunrise():
        return localization.sherooq;
      case SalahTimeStateZhur():
        return localization.zhur;
      case SalahTimeStateAsr():
        return localization.asr;
      case SalahTimeStateMaghrib():
        return localization.maghrib;
      case SalahTimeStateIsha():
        return localization.isha;
      case SalahTimeStateNone():
        return "";
    }
  }

  /// Creates a common decoration for black overlay containers.
  BoxDecoration _blackOverlayDecoration() {
    return const BoxDecoration(
      color: Colors.black45,
      borderRadius: BorderRadius.all(Radius.circular(5)),
    );
  }
}
