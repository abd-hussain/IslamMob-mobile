import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islam_app/screens/home_tab/widgets/home_header_view/bloc/home_header_bloc.dart';
import 'package:islam_app/screens/home_tab/widgets/sub_widgets/salah_timer_view.dart';
import 'package:islam_app/shared_widgets/custom_text.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class HomeHeaderView extends StatelessWidget {
  const HomeHeaderView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeHeaderBloc(),
      child: SliverAppBar(
        backgroundColor: const Color(0xff292929),
        expandedHeight: 250,
        collapsedHeight: 80,
        floating: false,
        pinned: true,
        flexibleSpace: FlexibleSpaceBar(
          centerTitle: true,
          titlePadding: const EdgeInsets.only(bottom: 10),
          title: Builder(builder: (context) {
            final homeHeaderBloc = context.read<HomeHeaderBloc>();

            return BlocBuilder<HomeHeaderBloc, HomeHeaderState>(
              buildWhen: (previous, current) =>
                  previous.nextPrayType != current.nextPrayType ||
                  previous.nextPrayDateTime != current.nextPrayDateTime,
              builder: (context, state) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      decoration: const BoxDecoration(
                        color: Colors.black45,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(5),
                          topRight: Radius.circular(5),
                        ),
                      ),
                      child: Padding(
                        padding:
                            const EdgeInsets.only(left: 5, right: 5, top: 2),
                        child: CustomText(
                          title:
                              "${getSalahName(context: context, salahType: state.nextPrayType)} ${AppLocalizations.of(context)!.after}",
                          fontSize: 12,
                        ),
                      ),
                    ),
                    Container(
                      decoration: const BoxDecoration(
                        color: Colors.black45,
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 5, right: 5),
                        child: SalahTimerView(
                            targetTime:
                                state.nextPrayDateTime ?? DateTime.now()),
                      ),
                    ),
                    ColoredBox(
                      color: Colors.black45,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 5, right: 5),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            CustomText(
                              title: homeHeaderBloc.getNextSalahTime(),
                              fontSize: 12,
                            ),
                            const SizedBox(width: 2),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomText(
                                  title: homeHeaderBloc.knowTimingAMorPM(),
                                  fontSize: 6,
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      decoration: const BoxDecoration(
                        color: Colors.black45,
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 5, right: 5),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Icon(
                              Icons.location_on,
                              color: Color(0xff007F37),
                              size: 12,
                            ),
                            CustomText(
                              title:
                                  "${homeHeaderBloc.currentSubCity()}, ${homeHeaderBloc.currentCity()}, ${homeHeaderBloc.currentCountry()}",
                              fontSize: 10,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                );
              },
            );
          }),
          background: Opacity(
            opacity: 0.6,
            child: Image.asset(
              "assets/images/background.png",
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }

  String getSalahName(
      {required BuildContext context, required SalahTimeState salahType}) {
    switch (salahType) {
      case SalahTimeStateFajir():
        return AppLocalizations.of(context)!.fajr;
      case SalahTimeStateSunrise():
        return AppLocalizations.of(context)!.sherooq;
      case SalahTimeStateZhur():
        return AppLocalizations.of(context)!.zhur;
      case SalahTimeStateAsr():
        return AppLocalizations.of(context)!.asr;
      case SalahTimeStateMaghrib():
        return AppLocalizations.of(context)!.maghrib;
      case SalahTimeStateIsha():
        return AppLocalizations.of(context)!.isha;
    }
  }
}
