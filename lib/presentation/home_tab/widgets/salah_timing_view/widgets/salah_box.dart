import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:islam_app/presentation/home_tab/bloc/home/home_tab_bloc.dart';
import 'package:custom_widgets/widgets/custom_text.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SalahBox extends StatelessWidget {
  final SalahTimeState salahType;
  final DateTime salahTime;
  final bool isCurrentSalah;

  const SalahBox({
    super.key,
    required this.salahType,
    required this.salahTime,
    required this.isCurrentSalah,
  });

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
        padding: const EdgeInsets.only(left: 6, right: 6, top: 4, bottom: 4),
        child: Column(
          children: [
            _buildSalahImage(),
            _buildSalahName(context),
            _buildSalahTime(),
            _buildTimeType(),
          ],
        ),
      ),
    );
  }

  /// Builds the image representing the Salah type.
  Widget _buildSalahImage() {
    return Image.asset(
      _getSalahImage(),
      scale: 6,
    );
  }

  /// Builds the text widget for the Salah name.
  Widget _buildSalahName(BuildContext context) {
    return CustomText(
      title: _getSalahName(context),
      fontSize: 14,
      color: const Color(0xff444444),
      fontWeight: FontWeight.bold,
      textAlign: TextAlign.center,
    );
  }

  /// Builds the text widget for the Salah time.
  Widget _buildSalahTime() {
    return CustomText(
      title: DateFormat('hh:mm').format(salahTime),
      fontSize: 14,
      color: const Color(0xff444444),
      fontWeight: FontWeight.bold,
      maxLines: 2,
      textAlign: TextAlign.center,
    );
  }

  /// Builds the text widget for the time type (e.g., AM/PM).
  Widget _buildTimeType() {
    return CustomText(
      title: DateFormat('a').format(salahTime),
      fontSize: 14,
      color: const Color(0xff444444),
      fontWeight: FontWeight.bold,
      maxLines: 2,
      textAlign: TextAlign.center,
    );
  }

  /// Returns the localized name of the Salah based on its type.
  String _getSalahName(BuildContext context) {
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
      case SalahTimeStateNone():
        return "";
    }
  }

  /// Returns the image path for the Salah type.
  String _getSalahImage() {
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
      case SalahTimeStateNone():
        return "";
    }
  }
}
