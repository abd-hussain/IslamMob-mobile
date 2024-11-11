import 'package:flutter/material.dart';
import 'package:islam_app/screens/home_tab/bloc/home_tab_bloc.dart';
import 'package:islam_app/shared_widgets/custom_text.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class HomeHeaderView extends StatelessWidget {
  final SalahType salahType;
  final DateTime salahTime;
  final String regionName;
  final String cityName;

  const HomeHeaderView({
    super.key,
    required this.salahType,
    required this.salahTime,
    required this.cityName,
    required this.regionName,
  });

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: const Color(0xff292929),
      expandedHeight: 250,
      collapsedHeight: 80,
      floating: false,
      pinned: true,
      flexibleSpace: FlexibleSpaceBar(
        centerTitle: true,
        titlePadding: const EdgeInsets.only(bottom: 10),
        title: Column(
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
                padding: const EdgeInsets.only(left: 5, right: 5, top: 2),
                child: CustomText(
                  title:
                      "${getSalahName(context: context, salahType: salahType)} ${AppLocalizations.of(context)!.after}",
                  fontSize: 12,
                ),
              ),
            ),
            Container(
              decoration: const BoxDecoration(
                color: Colors.black45,
                borderRadius: BorderRadius.all(Radius.circular(5)),
              ),
              child: const Padding(
                padding: EdgeInsets.only(left: 5, right: 5),
                child: CustomText(
                  title: "07:42:52", //TODO
                  fontSize: 24, fontWeight: FontWeight.bold,
                ),
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
                      title: "${salahTime.hour}:${salahTime.minute}",
                      fontSize: 12,
                    ),
                    const SizedBox(width: 2),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomText(
                          title: salahTime.hour < 12 ? "AM" : "PM",
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
                      title: "$regionName, $cityName",
                      fontSize: 10,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        background: Opacity(
          opacity: 0.6,
          child: Image.asset(
            "assets/images/background.png",
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }

  String getSalahName(
      {required BuildContext context, required SalahType salahType}) {
    switch (salahType) {
      case SalahType.fajr:
        return AppLocalizations.of(context)!.fajr;
      case SalahType.sunrise:
        return AppLocalizations.of(context)!.sherooq;
      case SalahType.zhur:
        return AppLocalizations.of(context)!.zhur;
      case SalahType.asr:
        return AppLocalizations.of(context)!.asr;
      case SalahType.maghrib:
        return AppLocalizations.of(context)!.maghrib;
      case SalahType.isha:
        return AppLocalizations.of(context)!.isha;
    }
  }
}
