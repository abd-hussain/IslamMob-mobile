import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islam_app/my_app/islam_mob_app/routes.dart';
import 'package:islam_app/screens/home_tab/widgets/home_header_view/bloc/home_header_bloc.dart';
import 'package:islam_app/screens/home_tab/widgets/salah_timing_view/bloc/salah_timing_bloc.dart';
import 'package:islam_app/screens/home_tab/widgets/sub_widgets/day_box.dart';
import 'package:islam_app/screens/home_tab/widgets/sub_widgets/salah_box.dart';
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
          itemBuilder: (BuildContext context, int index) {
            return Container(
              color: const Color(0xff292929),
              width: double.infinity,
              child: Column(
                children: [
                  DayBox(
                    index: index,
                    dateMilady: context
                        .read<SalahTimingBloc>()
                        .getDateMelady(index - 3),
                    dateHijry:
                        context.read<SalahTimingBloc>().getDateHijri(index - 3),
                    dayName: context
                        .read<SalahTimingBloc>()
                        .getDayName(context, index - 3),
                    titileOfTheDay: context
                        .read<SalahTimingBloc>()
                        .getTitleOfTheDay(context, index - 3),
                    currentLanguageCode:
                        context.read<SalahTimingBloc>().currentLanguageCode(),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8, right: 8),
                    child: BlocBuilder<SalahTimingBloc, SalahTimingState>(
                      buildWhen: (previous, current) {
                        return previous.befor3DayPrayTiming !=
                                current.befor3DayPrayTiming ||
                            previous.befor2DayPrayTiming !=
                                current.befor2DayPrayTiming ||
                            previous.yesterdayPrayTiming !=
                                current.yesterdayPrayTiming ||
                            previous.todayPrayTiming !=
                                current.todayPrayTiming ||
                            previous.tommorrowPrayTiming !=
                                current.tommorrowPrayTiming ||
                            previous.after2DayPrayTiming !=
                                current.after2DayPrayTiming ||
                            previous.after3DayPrayTiming !=
                                current.after3DayPrayTiming ||
                            previous.currentSalahType !=
                                current.currentSalahType;
                      },
                      builder: (context, state) {
                        return Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            SalahBox(
                              salahType: const SalahTimeStateFajir(),
                              salahTime: context
                                  .read<SalahTimingBloc>()
                                  .retrunCorrectPrayTiming(index)
                                  .fajir,
                              isCurrentSalah: (state.currentSalahType ==
                                      const SalahTimeStateFajir() &&
                                  index == 3),
                            ),
                            SalahBox(
                              salahType: const SalahTimeStateSunrise(),
                              salahTime: context
                                  .read<SalahTimingBloc>()
                                  .retrunCorrectPrayTiming(index)
                                  .sunrise,
                              isCurrentSalah: (state.currentSalahType ==
                                      const SalahTimeStateSunrise() &&
                                  index == 3),
                            ),
                            SalahBox(
                              salahType: const SalahTimeStateZhur(),
                              salahTime: context
                                  .read<SalahTimingBloc>()
                                  .retrunCorrectPrayTiming(index)
                                  .dhuhr,
                              isCurrentSalah: (state.currentSalahType ==
                                      const SalahTimeStateZhur() &&
                                  index == 3),
                            ),
                            SalahBox(
                              salahType: const SalahTimeStateAsr(),
                              salahTime: context
                                  .read<SalahTimingBloc>()
                                  .retrunCorrectPrayTiming(index)
                                  .asr,
                              isCurrentSalah: (state.currentSalahType ==
                                      const SalahTimeStateAsr() &&
                                  index == 3),
                            ),
                            SalahBox(
                              salahType: const SalahTimeStateMaghrib(),
                              salahTime: context
                                  .read<SalahTimingBloc>()
                                  .retrunCorrectPrayTiming(index)
                                  .maghrib,
                              isCurrentSalah: (state.currentSalahType ==
                                      const SalahTimeStateMaghrib() &&
                                  index == 3),
                            ),
                            SalahBox(
                              salahType: const SalahTimeStateIsha(),
                              salahTime: context
                                  .read<SalahTimingBloc>()
                                  .retrunCorrectPrayTiming(index)
                                  .isha,
                              isCurrentSalah: (state.currentSalahType ==
                                      const SalahTimeStateIsha() &&
                                  index == 3),
                            ),
                          ],
                        );
                      },
                    ),
                  ),
                  BlocBuilder<SalahTimingBloc, SalahTimingState>(
                    buildWhen: (previous, current) {
                      return previous.befor3DayPrayTiming !=
                              current.befor3DayPrayTiming ||
                          previous.befor2DayPrayTiming !=
                              current.befor2DayPrayTiming ||
                          previous.yesterdayPrayTiming !=
                              current.yesterdayPrayTiming ||
                          previous.todayPrayTiming != current.todayPrayTiming ||
                          previous.tommorrowPrayTiming !=
                              current.tommorrowPrayTiming ||
                          previous.after2DayPrayTiming !=
                              current.after2DayPrayTiming ||
                          previous.after3DayPrayTiming !=
                              current.after3DayPrayTiming;
                    },
                    builder: (context, state) {
                      return Padding(
                        padding: const EdgeInsets.only(left: 8, right: 8),
                        child: Row(
                          children: [
                            Expanded(
                              child: Container(
                                decoration: const BoxDecoration(
                                  color: Colors.grey,
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(10),
                                    bottomLeft: Radius.circular(10),
                                  ),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    children: [
                                      CustomText(
                                        title: AppLocalizations.of(context)!
                                            .midnight,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 12,
                                        color: const Color(0xff444444),
                                        textAlign: TextAlign.center,
                                      ),
                                      CustomText(
                                        title: context
                                            .read<SalahTimingBloc>()
                                            .retrunCorrectPrayTiming(index)
                                            .middleOfTheNight,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16,
                                        color: const Color(0xff444444),
                                        textAlign: TextAlign.center,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Padding(
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
                                        final navigator = Navigator.of(context,
                                            rootNavigator: true);
                                        await navigator.pushNamed(
                                            RoutesConstants
                                                .prayCalculationSettingScreen);
                                      },
                                      child: const Icon(
                                        Icons.settings,
                                        size: 28,
                                        color: Color(0xff444444),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                decoration: const BoxDecoration(
                                  color: Colors.grey,
                                  borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(10),
                                    bottomRight: Radius.circular(10),
                                  ),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    children: [
                                      CustomText(
                                        title: AppLocalizations.of(context)!
                                            .last3ofnight,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 12,
                                        color: const Color(0xff444444),
                                        textAlign: TextAlign.center,
                                      ),
                                      CustomText(
                                        title: context
                                            .read<SalahTimingBloc>()
                                            .retrunCorrectPrayTiming(index)
                                            .lastThirdOfTheNight,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16,
                                        color: const Color(0xff444444),
                                        textAlign: TextAlign.center,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
