import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:islam_app/domain/sealed/salah_time_state.dart';
import 'package:islam_app/l10n/gen/app_localizations.dart';
import 'package:islam_app/presentation/home_tab/bloc/salah_timing/salah_timing_bloc.dart';
import 'package:islam_app/presentation/home_tab/widgets/salah_timing_view/widgets/day_box.dart';
import 'package:islam_app/presentation/home_tab/widgets/salah_timing_view/widgets/salah_box.dart';
import 'package:islam_app/shared_widgets/bottomsheet/setting_bottomsheet.dart';
import 'package:islam_app/shared_widgets/custom_text.dart';

/// Widget for displaying Islamic prayer times in a swipeable weekly view.
///
/// This widget provides Muslims with comprehensive prayer timing information
/// for the entire week in an interactive, swipeable interface. It features:
/// - **Weekly prayer schedule** with all five daily prayers displayed
/// - **Swipeable interface** for navigating through different days
/// - **Current prayer highlighting** showing the next upcoming prayer
/// - **Additional Islamic times** including midnight and last third of night
/// - **Settings access** for prayer calculation method customization
///
/// The prayer timing view is central to Islamic practice, providing Muslims
/// with accurate prayer times based on their location and selected calculation
/// method. It helps Muslims plan their day around their spiritual obligations
/// and maintain their connection with Islamic prayer schedule.
class SalahTimingView extends StatefulWidget {
  /// Creates a [SalahTimingView] widget.
  ///
  /// This widget displays the weekly Islamic prayer timing interface with
  /// swipeable navigation and comprehensive prayer time information.
  const SalahTimingView({super.key});

  /// Creates the state for the prayer timing view.
  ///
  /// Returns a [_SalahTimingViewState] instance that manages the swiper
  /// controller, prayer time display, and user interactions.
  @override
  State<SalahTimingView> createState() => _SalahTimingViewState();
}

class _SalahTimingViewState extends State<SalahTimingView> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SalahTimingBloc(),
      child: SizedBox(
        height: 220,
        child: Swiper(
          itemCount: 7,
          index: 3,
          loop: false,
          pagination: const SwiperPagination(),
          controller: SwiperController(),
          itemBuilder: _buildDayTimingView,
        ),
      ),
    );
  }

  Widget _buildDayTimingView(BuildContext context, int index) {
    return ColoredBox(
      color: const Color(0xff292929),
      child: Column(
        children: [
          DayBox(index: index),
          _buildSalahBoxes(context, index),
          _buildAdditionalInfoRow(context, index),
        ],
      ),
    );
  }

  Widget _buildSalahBoxes(BuildContext context, int index) {
    return BlocBuilder<SalahTimingBloc, SalahTimingState>(
      buildWhen: (previous, current) =>
          previous.prayTimeForWeek != current.prayTimeForWeek ||
          previous.currentSalahType != current.currentSalahType,
      builder: (context, state) {
        if (state.prayTimeForWeek.isEmpty) {
          return const SizedBox.shrink();
        }

        final prayTimes = state.prayTimeForWeek[index];
        final currentSalah = state.currentSalahType;

        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Row(
            children: [
              SalahBox(
                salahType: const SalahTimeStateFajir(),
                salahTime: prayTimes.fajir,
                isCurrentSalah:
                    currentSalah == const SalahTimeStateFajir() && index == 3,
              ),
              const Expanded(child: SizedBox()),
              SalahBox(
                salahType: const SalahTimeStateSunrise(),
                salahTime: prayTimes.sunrise,
                isCurrentSalah:
                    currentSalah == const SalahTimeStateSunrise() && index == 3,
              ),
              const Expanded(child: SizedBox()),
              SalahBox(
                salahType: const SalahTimeStateZhur(),
                salahTime: prayTimes.dhuhr,
                isCurrentSalah:
                    currentSalah == const SalahTimeStateZhur() && index == 3,
              ),
              const Expanded(child: SizedBox()),
              SalahBox(
                salahType: const SalahTimeStateAsr(),
                salahTime: prayTimes.asr,
                isCurrentSalah:
                    currentSalah == const SalahTimeStateAsr() && index == 3,
              ),
              const Expanded(child: SizedBox()),
              SalahBox(
                salahType: const SalahTimeStateMaghrib(),
                salahTime: prayTimes.maghrib,
                isCurrentSalah:
                    currentSalah == const SalahTimeStateMaghrib() && index == 3,
              ),
              const Expanded(child: SizedBox()),
              SalahBox(
                salahType: const SalahTimeStateIsha(),
                salahTime: prayTimes.isha,
                isCurrentSalah:
                    currentSalah == const SalahTimeStateIsha() && index == 3,
              ),
            ],
          ),
        );
      },
    );
  }

  Widget _buildAdditionalInfoRow(BuildContext context, int index) {
    return BlocBuilder<SalahTimingBloc, SalahTimingState>(
      buildWhen: (previous, current) =>
          previous.prayTimeForWeek != current.prayTimeForWeek,
      builder: (context, state) {
        if (state.prayTimeForWeek.isEmpty) {
          return const SizedBox.shrink();
        }

        final prayTimes = state.prayTimeForWeek[index];
        final localize = IslamMobLocalizations.of(context);

        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Row(
            children: [
              _buildMidnightInfo(context, prayTimes.middleOfTheNight, localize),
              _buildSettingsButton(context),
              _buildLastThirdOfNightInfo(
                context,
                prayTimes.lastThirdOfTheNight,
                localize,
              ),
            ],
          ),
        );
      },
    );
  }

  Widget _buildMidnightInfo(
    BuildContext context,
    DateTime time,
    IslamMobLocalizations localize,
  ) {
    return Expanded(
      child: _buildInfoBox(title: localize.midnight, time: time),
    );
  }

  Widget _buildLastThirdOfNightInfo(
    BuildContext context,
    DateTime time,
    IslamMobLocalizations localize,
  ) {
    return Expanded(
      child: _buildInfoBox(title: localize.last3ofnight, time: time),
    );
  }

  Widget _buildInfoBox({required String title, required DateTime time}) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.grey,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(10),
          topLeft: Radius.circular(10),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          children: [
            CustomText(
              title: title,
              fontWeight: FontWeight.bold,
              fontSize: 12,
              color: const Color(0xff444444),
              textAlign: TextAlign.center,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomText(
                  title: DateFormat('hh:mm').format(time),
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                  color: const Color(0xff444444),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(width: 2),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(
                      title: DateFormat('a').format(time),
                      fontSize: 6,
                      fontWeight: FontWeight.bold,
                      color: const Color(0xff444444),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSettingsButton(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey[100],
          borderRadius: const BorderRadius.only(
            topRight: Radius.circular(10),
            topLeft: Radius.circular(10),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Material(
            child: InkWell(
              onTap: () async {
                await SettingBottomSheet().showBottomSheet(context: context);
              },
              child: const Icon(
                Icons.settings,
                size: 30,
                color: Color(0xff444444),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
