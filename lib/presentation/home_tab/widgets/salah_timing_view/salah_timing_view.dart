import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:islam_app/presentation/home_tab/bloc/home/home_tab_bloc.dart';
import 'package:islam_app/presentation/home_tab/bloc/salah_timing/salah_timing_bloc.dart';
import 'package:islam_app/presentation/home_tab/widgets/salah_timing_view/widgets/day_box.dart';
import 'package:islam_app/presentation/home_tab/widgets/salah_timing_view/widgets/salah_box.dart';
import 'package:islam_app/shared_widgets/bottomsheet/setting_bottomsheet.dart';
import 'package:islam_app/shared_widgets/custom_text.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SalahTimingView extends StatefulWidget {
  const SalahTimingView({super.key});

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
          itemBuilder: (context, index) {
            return _buildDayTimingView(context, index);
          },
        ),
      ),
    );
  }

  Widget _buildDayTimingView(BuildContext context, int index) {
    return Container(
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
                    (currentSalah == const SalahTimeStateFajir() && index == 3),
              ),
              const Expanded(child: SizedBox()),
              SalahBox(
                salahType: const SalahTimeStateSunrise(),
                salahTime: prayTimes.sunrise,
                isCurrentSalah:
                    (currentSalah == const SalahTimeStateSunrise() &&
                        index == 3),
              ),
              const Expanded(child: SizedBox()),
              SalahBox(
                salahType: const SalahTimeStateZhur(),
                salahTime: prayTimes.dhuhr,
                isCurrentSalah:
                    (currentSalah == const SalahTimeStateZhur() && index == 3),
              ),
              const Expanded(child: SizedBox()),
              SalahBox(
                salahType: const SalahTimeStateAsr(),
                salahTime: prayTimes.asr,
                isCurrentSalah:
                    (currentSalah == const SalahTimeStateAsr() && index == 3),
              ),
              const Expanded(child: SizedBox()),
              SalahBox(
                salahType: const SalahTimeStateMaghrib(),
                salahTime: prayTimes.maghrib,
                isCurrentSalah:
                    (currentSalah == const SalahTimeStateMaghrib() &&
                        index == 3),
              ),
              const Expanded(child: SizedBox()),
              SalahBox(
                salahType: const SalahTimeStateIsha(),
                salahTime: prayTimes.isha,
                isCurrentSalah:
                    (currentSalah == const SalahTimeStateIsha() && index == 3),
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

        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Row(
            children: [
              _buildMidnightInfo(context, prayTimes.middleOfTheNight),
              _buildSettingsButton(context),
              _buildLastThirdOfNightInfo(
                  context, prayTimes.lastThirdOfTheNight),
            ],
          ),
        );
      },
    );
  }

  Widget _buildMidnightInfo(BuildContext context, DateTime time) {
    return Expanded(
      child: _buildInfoBox(
        title: AppLocalizations.of(context)!.midnight,
        time: time,
      ),
    );
  }

  Widget _buildLastThirdOfNightInfo(BuildContext context, DateTime time) {
    return Expanded(
      child: _buildInfoBox(
        title: AppLocalizations.of(context)!.last3ofnight,
        time: time,
      ),
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
        padding: const EdgeInsets.all(8.0),
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
      padding: const EdgeInsets.all(8.0),
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
                final bottomSheet = SettingBottomSheet();
                await bottomSheet.showBottomSheet(context: context);
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
