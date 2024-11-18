import 'package:flutter/material.dart';
import 'package:islam_app/screens/home_tab/widgets/home_header_view/bloc/home_header_bloc.dart';
import 'package:islam_app/shared_widgets/custom_text.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SalahBox extends StatelessWidget {
  final SalahTimeState salahType;
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

  String getSalaImage({required SalahTimeState salahType}) {
    switch (salahType) {
      case SalahTimeStateFajir():
        return "assets/images/days/fajr.png";
      case SalahTimeStateSunrise():
        return "assets/images/days/sunrise.png";
      case SalahTimeStateZhur():
        return "assets/images/days/zhur.png";
      case SalahTimeStateAsr():
        return "assets/images/days/asr.png";
      case SalahTimeStateMaghrib():
        return "assets/images/days/maghrib.png";
      case SalahTimeStateIsha():
        return "assets/images/days/isha.png";
    }
  }
}
