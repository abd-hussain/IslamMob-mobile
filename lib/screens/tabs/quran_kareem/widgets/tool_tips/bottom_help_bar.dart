import 'package:flutter/material.dart';
import 'package:islam_app/my_app/islam_mob_app/routes.dart';
import 'package:islam_app/screens/tabs/quran_kareem/widgets/tool_tips/bottom_tile.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class QuranBottomHelpBar extends StatelessWidget {
  const QuranBottomHelpBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black.withOpacity(0.6),
      height: 140,
      child: GridView(
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 1,
            mainAxisSpacing: 1,
            childAspectRatio: 3,
          ),
          children: [
            BottomTile(
              title: AppLocalizations.of(context)!.quranSettingLighting,
              icon: Icons.sunny,
              onTap: () {
                //TODO
              },
            ),
            BottomTile(
              title: AppLocalizations.of(context)!.quranSettingAddBookMark,
              icon: Icons.bookmark_add,
              onTap: () {
                //TODO
              },
            ),
            BottomTile(
              title: AppLocalizations.of(context)!.quranSettingBookMarkList,
              icon: Icons.collections_bookmark_sharp,
              onTap: () {
                //TODO
              },
            ),
            BottomTile(
              title: AppLocalizations.of(context)!.quranSettingMushaf,
              icon: Icons.library_books,
              onTap: () {
                //TODO
              },
            ),
            BottomTile(
              title: AppLocalizations.of(context)!.quranSettingParts,
              icon: Icons.pie_chart_rounded,
              onTap: () {
                //TODO
              },
            ),
            BottomTile(
              title: AppLocalizations.of(context)!.quranSettingPages,
              icon: Icons.copy_sharp,
              onTap: () {
                //TODO
              },
            ),
            BottomTile(
              title: AppLocalizations.of(context)!.quranSettingReport,
              icon: Icons.report_outlined,
              onTap: () async {
                final navigator = Navigator.of(context, rootNavigator: true);
                await navigator
                    .pushNamed(RoutesConstants.reportOrSuggestionScreen);
              },
            ),
            Container(color: Colors.black.withOpacity(0.6)),
            BottomTile(
              title: AppLocalizations.of(context)!.quranSettingLanguage,
              icon: Icons.language,
              onTap: () async {
                final navigator = Navigator.of(context, rootNavigator: true);
                await navigator.pushNamed(RoutesConstants.changeLanguageScreen);
              },
            ),
          ]),
    );
  }
}
