import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

enum SorahType { maccah, madinah }

class SorahTypeHelper {
  static SorahType getSorahType(
      {required BuildContext context, required String sorahName}) {
    if (sorahName == AppLocalizations.of(context)!.quranSorahName2 ||
        sorahName == AppLocalizations.of(context)!.quranSorahName3 ||
        sorahName == AppLocalizations.of(context)!.quranSorahName4 ||
        sorahName == AppLocalizations.of(context)!.quranSorahName5 ||
        sorahName == AppLocalizations.of(context)!.quranSorahName8 ||
        sorahName == AppLocalizations.of(context)!.quranSorahName9 ||
        sorahName == AppLocalizations.of(context)!.quranSorahName13 ||
        sorahName == AppLocalizations.of(context)!.quranSorahName15 ||
        sorahName == AppLocalizations.of(context)!.quranSorahName24 ||
        sorahName == AppLocalizations.of(context)!.quranSorahName33 ||
        sorahName == AppLocalizations.of(context)!.quranSorahName47 ||
        sorahName == AppLocalizations.of(context)!.quranSorahName48 ||
        sorahName == AppLocalizations.of(context)!.quranSorahName49 ||
        sorahName == AppLocalizations.of(context)!.quranSorahName55 ||
        sorahName == AppLocalizations.of(context)!.quranSorahName57 ||
        sorahName == AppLocalizations.of(context)!.quranSorahName58 ||
        sorahName == AppLocalizations.of(context)!.quranSorahName59 ||
        sorahName == AppLocalizations.of(context)!.quranSorahName60 ||
        sorahName == AppLocalizations.of(context)!.quranSorahName61 ||
        sorahName == AppLocalizations.of(context)!.quranSorahName62 ||
        sorahName == AppLocalizations.of(context)!.quranSorahName63 ||
        sorahName == AppLocalizations.of(context)!.quranSorahName64 ||
        sorahName == AppLocalizations.of(context)!.quranSorahName65 ||
        sorahName == AppLocalizations.of(context)!.quranSorahName66 ||
        sorahName == AppLocalizations.of(context)!.quranSorahName76 ||
        sorahName == AppLocalizations.of(context)!.quranSorahName98 ||
        sorahName == AppLocalizations.of(context)!.quranSorahName99 ||
        sorahName == AppLocalizations.of(context)!.quranSorahName110) {
      return SorahType.madinah;
    } else {
      return SorahType.maccah;
    }
  }
}
