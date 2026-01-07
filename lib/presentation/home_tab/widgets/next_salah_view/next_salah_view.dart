import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islam_app/domain/sealed/salah_time_state.dart';
import 'package:islam_app/domain/usecase/salah_box_usecase.dart';
import 'package:islam_app/domain/usecase/timing_usecase.dart';
import 'package:islam_app/l10n/gen/app_localizations.dart';
import 'package:islam_app/my_app/locator.dart';
import 'package:islam_app/presentation/home_tab/bloc/home_tab_bloc.dart';
import 'package:islam_app/presentation/home_tab/widgets/next_salah_view/salah_timer_view.dart';
import 'package:islam_app/presentation/main_container/bloc/main_container_bloc.dart';
import 'package:islam_app/shared_widgets/custom_text.dart';

class NextSalahView extends StatefulWidget {
  final SalahTimeState salahType;

  /// The target date and time for the next Islamic prayer.
  final DateTime targetTime;

  /// Callback function triggered when the countdown reaches zero.
  final Function() onTimerFinished;

  const NextSalahView({
    super.key,
    required this.salahType,
    required this.targetTime,
    required this.onTimerFinished,
  });

  @override
  State<NextSalahView> createState() => _NextSalahViewState();
}

class _NextSalahViewState extends State<NextSalahView> {
  /// Timing use case instance for date calculations and formatting.
  final TimingUseCase timingUsecase = locator<TimingUseCase>();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Container(
        decoration: _containerDecoration(),
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildDayDetails(context),
                      const SizedBox(height: 8),
                      Row(
                        children: [
                          _buildHijriDate(),
                          Padding(
                            padding: const EdgeInsets.only(left: 8, right: 8),
                            child: Container(
                              width: 2,
                              height: 12,
                              color: Colors.white,
                            ),
                          ),
                          _buildMeladyDate(),
                        ],
                      ),
                      const SizedBox(height: 8),
                      _buildNextSalahInfo(context, widget.salahType),
                      const SizedBox(height: 8),
                      _buildNextSalahTime(),
                      const SizedBox(height: 8),
                      BlocBuilder<HomeTabBloc, HomeTabState>(
                        buildWhen: (previous, current) =>
                            previous.nextPrayDateTime !=
                            current.nextPrayDateTime,
                        builder: (context, state) {
                          return _buildSalahTimer(
                            context.read<HomeTabBloc>(),
                            state,
                          );
                        },
                      ),
                    ],
                  ),
                  const Expanded(child: SizedBox()),
                  Expanded(flex: 2, child: _buildSalahImage(widget.salahType)),
                ],
              ),
              const Divider(color: Colors.white),
              InkWell(
                onTap: () {
                  context.read<MainContainerBloc>().add(
                    MainContainerEvent.changeSelectedIndex(1),
                  );
                },
                child: Row(
                  children: [
                    CustomText(
                      title: IslamMobLocalizations.of(
                        context,
                      ).tapToSeeThePrayerTime,
                      fontSize: 12,
                    ),
                    const Expanded(child: SizedBox()),
                    const Icon(
                      Icons.arrow_forward_ios_outlined,
                      color: Colors.white,
                      size: 20,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Builds the next Salah info container.
  Widget _buildNextSalahInfo(BuildContext context, SalahTimeState salahType) {
    return Column(
      children: [
        CustomText(
          title: SalahBoxUseCase.getSalahName(context, salahType),
          fontSize: 30,
        ),
      ],
    );
  }

  /// Builds the next Salah time with AM/PM indication.
  Widget _buildNextSalahTime() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        CustomText(
          title: context.read<HomeTabBloc>().getNextSalahTime(),
          fontSize: 25,
        ),
        const SizedBox(width: 2),
        CustomText(
          title: context.read<HomeTabBloc>().knowTimingAMorPM(),
          fontSize: 12,
        ),
      ],
    );
  }

  /// Builds the Salah timer view.
  Widget _buildSalahTimer(HomeTabBloc bloc, HomeTabState state) {
    return HomeTabSalahTimerView(
      targetTime: state.nextPrayDateTime!,
      onTimerFinished: () {
        bloc.add(HomeTabEvent.prepareNextSalahTypeAndTime());
      },
    );
  }

  /// Builds the image representing the Salah type.
  Widget _buildSalahImage(SalahTimeState salahType) {
    return Image.asset("assets/images/man_pray.png");
  }

  /// Builds the day title and name display.
  Widget _buildDayDetails(BuildContext context) {
    final dayName = timingUsecase.getDayName(
      context: context,
      date: timingUsecase.getDateWithDayOffset(dayOffset: 0),
    );

    return CustomText(
      title: dayName,
      fontSize: 18,
      fontWeight: FontWeight.bold,
      textAlign: TextAlign.center,
    );
  }

  /// Builds the Gregorian (Melady) date display.
  Widget _buildMeladyDate() {
    final meladyDate = timingUsecase.formatDate(
      timingUsecase.getDateWithDayOffset(dayOffset: 0),
    );
    return CustomText(
      title: meladyDate,
      fontSize: 14,
      fontWeight: FontWeight.bold,
      textAlign: TextAlign.center,
    );
  }

  /// Builds the Hijri date display.
  Widget _buildHijriDate() {
    final hijriDate = timingUsecase.formatHijriDate(
      timingUsecase.getHijriDateWithDayOffset(dayOffset: 0),
    );
    return CustomText(
      title: hijriDate,
      fontSize: 14,
      fontWeight: FontWeight.bold,
      textAlign: TextAlign.center,
    );
  }

  BoxDecoration _containerDecoration() {
    return BoxDecoration(
      color: const Color(0xff292929),
      borderRadius: const BorderRadius.all(Radius.circular(20)),
      boxShadow: [
        BoxShadow(
          color: const Color(0xff292929).withValues(alpha: 0.5),
          spreadRadius: 5,
          blurRadius: 7,
          offset: const Offset(0, 3), // Shadow position
        ),
      ],
    );
  }
}
