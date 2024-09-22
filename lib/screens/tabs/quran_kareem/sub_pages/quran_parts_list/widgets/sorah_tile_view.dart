import 'package:flutter/material.dart';
import 'package:islam_app/shared_widgets/custom_text.dart';
import 'package:islam_app/utils/quran_referances.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SorahTileView extends StatelessWidget {
  final String sorahName;
  final SorahType sorahType;
  final Function() onSorahTap;
  const SorahTileView(
      {super.key,
      required this.sorahName,
      required this.sorahType,
      required this.onSorahTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4),
      child: InkWell(
        onTap: () {
          onSorahTap();
        },
        child: Container(
          color: Colors.black.withOpacity(0.7),
          child: Padding(
            padding: const EdgeInsets.all(4),
            child: Row(
              children: [
                SizedBox(
                  width: 30,
                  child: Image.asset(sorahType == SorahType.maccah
                      ? "assets/images/sorah_type/macca.png"
                      : "assets/images/sorah_type/madenah.png"),
                ),
                const SizedBox(width: 8),
                CustomText(
                  title:
                      "${AppLocalizations.of(context)!.quranSorah} $sorahName",
                  fontSize: 16,
                  textColor: Colors.white70,
                  fontWeight: FontWeight.bold,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
