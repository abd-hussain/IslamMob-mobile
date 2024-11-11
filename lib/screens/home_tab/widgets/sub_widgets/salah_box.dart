import 'package:flutter/material.dart';
import 'package:islam_app/screens/home_tab/bloc/home_tab_bloc.dart';
import 'package:islam_app/shared_widgets/custom_text.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SalahBox extends StatelessWidget {
  final SalahType salahType;
  final String salahTime;
  final bool isCurrentSalah;

  const SalahBox(
      {super.key,
      required this.salahType,
      required this.salahTime,
      required this.isCurrentSalah});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: isCurrentSalah ? Colors.white : Colors.grey,
          borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(8),
            bottomRight: Radius.circular(8),
          )),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Image.asset(
              getSalaImage(salahType: salahType),
              scale: 6,
            ),
            CustomText(
              title: getSalahName(context: context, salahType: salahType),
              fontSize: 14,
              textColor: const Color(0xff444444),
              fontWeight: FontWeight.bold,
              textAlign: TextAlign.center,
            ),
            CustomText(
              title: salahTime,
              fontSize: 16,
              textColor: const Color(0xff444444),
              fontWeight: FontWeight.bold,
              textAlign: TextAlign.center,
            ),
          ],
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

  String getSalaImage({required SalahType salahType}) {
    switch (salahType) {
      case SalahType.fajr:
        return "assets/images/days/fajr.png";
      case SalahType.sunrise:
        return "assets/images/days/sunrise.png";
      case SalahType.zhur:
        return "assets/images/days/zhur.png";
      case SalahType.asr:
        return "assets/images/days/asr.png";
      case SalahType.maghrib:
        return "assets/images/days/maghrib.png";
      case SalahType.isha:
        return "assets/images/days/isha.png";
    }
  }
}
