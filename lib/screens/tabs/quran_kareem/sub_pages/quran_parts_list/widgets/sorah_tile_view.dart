import 'package:flutter/material.dart';
import 'package:islam_app/shared_widgets/custom_text.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SorahTileView extends StatelessWidget {
  final int pageNumber;
  final String sorahName;
  final Function() onSorahTap;
  const SorahTileView(
      {super.key,
      required this.sorahName,
      required this.onSorahTap,
      required this.pageNumber});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8, right: 8, top: 4, bottom: 4),
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
                const Icon(
                  Icons.book,
                  color: Colors.white70,
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: CustomText(
                    title:
                        "${AppLocalizations.of(context)!.quranSorah} $sorahName",
                    fontSize: 16,
                    textColor: Colors.white70,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
