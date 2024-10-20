import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islam_app/my_app/islam_mob_app/routes.dart';
import 'package:islam_app/screens/quran_kareem_tab/bloc/quran_kareem_bloc.dart';
import 'package:islam_app/screens/quran_kareem_tab/widgets/tool_tips/bottom_tile.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islam_app/screens/quran_kareem_tab/widgets/tool_tips/brightness_popup.dart';
import 'package:islam_app/utils/constants/argument_constant.dart';

class QuranBottomHelpBar extends StatelessWidget {
  final Function(double) returnBrightness;
  final Function(String) returnWithNewPrint;
  const QuranBottomHelpBar(
      {super.key,
      required this.returnBrightness,
      required this.returnWithNewPrint});

  @override
  Widget build(BuildContext context) {
    final navigator = Navigator.of(context, rootNavigator: true);

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
            BlocBuilder<QuranKareemBloc, QuranKareemState>(
              buildWhen: (previous, current) {
                return previous.brigtness != current.brigtness;
              },
              builder: (context, state) {
                return BottomTile(
                  title: AppLocalizations.of(context)!.quranSettingLighting,
                  icon: Icons.sunny,
                  onTap: () {
                    showDialog(
                      context: context,
                      barrierColor: const Color(0x01000000),
                      builder: (BuildContext context) => BrightnessPopup(
                        initialValue: state.brigtness,
                        returnBrightness: (value) {
                          returnBrightness(value);
                        },
                      ),
                    );
                  },
                );
              },
            ),
            BlocBuilder<QuranKareemBloc, QuranKareemState>(
              buildWhen: (previous, current) {
                return previous.pageCount != current.pageCount ||
                    previous.bookmarkedPages != current.bookmarkedPages;
              },
              builder: (context, state) {
                return BottomTile(
                  title: state.bookmarkedPages.contains(state.pageCount)
                      ? AppLocalizations.of(context)!.quranSettingRemoveBookMark
                      : AppLocalizations.of(context)!.quranSettingAddBookMark,
                  icon: state.bookmarkedPages.contains(state.pageCount)
                      ? Icons.bookmark_remove
                      : Icons.bookmark_add,
                  colorIcon: state.bookmarkedPages.contains(state.pageCount)
                      ? Colors.redAccent
                      : Colors.white70,
                  onTap: () async {
                    final List<int> newList = List.from(state.bookmarkedPages);

                    if (newList.contains(state.pageCount)) {
                      //remove from the list
                      newList
                          .removeWhere((element) => element == state.pageCount);
                    } else {
                      //add to the list
                      newList.add(state.pageCount);
                    }

                    context
                        .read<QuranKareemBloc>()
                        .add(QuranKareemEvent.updateBookMarkedPages(newList));
                  },
                );
              },
            ),
            BlocBuilder<QuranKareemBloc, QuranKareemState>(
              buildWhen: (previous, current) {
                return previous.pageCount != current.pageCount ||
                    previous.bookmarkedPages != current.bookmarkedPages;
              },
              builder: (context, state) {
                return BottomTile(
                  title: AppLocalizations.of(context)!.quranSettingPages,
                  icon: Icons.copy_sharp,
                  colorIcon: Colors.white70,
                  onTap: () async {
                    await navigator.pushNamed(
                        RoutesConstants.quranPagesListScreen,
                        arguments: {
                          ArgumentConstant.currentPageNumber: state.pageCount
                        }).then(
                      (value) {
                        if (value != null) {
                          if (value is Map<String, dynamic>) {
                            if (context.mounted) {
                              context.read<QuranKareemBloc>().add(
                                  QuranKareemEvent.updatePageCount(value[
                                      ArgumentConstant.currentPageNumber]));
                              context
                                  .read<QuranKareemBloc>()
                                  .pageController()
                                  .jumpToPage(value[
                                      ArgumentConstant.currentPageNumber]);
                            }
                          }
                        }
                      },
                    );
                  },
                );
              },
            ),
            BottomTile(
              title: AppLocalizations.of(context)!.quranSettingMushaf,
              icon: Icons.library_books,
              onTap: () async {
                await navigator
                    .pushNamed(RoutesConstants.quranPrintListScreen)
                    .then(
                  (value) {
                    if (value is Map<String, String>) {
                      returnWithNewPrint(value["use"]!);
                    }
                  },
                );
              },
            ),
            BottomTile(
              title: AppLocalizations.of(context)!.quranSettingParts,
              icon: Icons.pie_chart_rounded,
              onTap: () async {
                await navigator
                    .pushNamed(RoutesConstants.quranPartsListScreen)
                    .then(
                  (value) {
                    if (value != null) {
                      if (value is Map<String, dynamic>) {
                        if (value[ArgumentConstant.currentPageNumber] != null) {
                          if (context.mounted) {
                            context.read<QuranKareemBloc>().add(
                                QuranKareemEvent.updatePageCount(
                                    value[ArgumentConstant.currentPageNumber]));
                            context
                                .read<QuranKareemBloc>()
                                .pageController()
                                .jumpToPage(
                                    value[ArgumentConstant.currentPageNumber]);
                          }
                        }
                      }
                    }
                  },
                );
              },
            ),
            BlocBuilder<QuranKareemBloc, QuranKareemState>(
              buildWhen: (previous, current) {
                return previous.rewardedAd != current.rewardedAd;
              },
              builder: (context, state) {
                return BottomTile(
                  title: AppLocalizations.of(context)!.quranSettingSupportUs,
                  icon: Icons.ads_click,
                  isIconBlinking: state.rewardedAd != null,
                  onTap: () {
                    if (state.rewardedAd != null) {
                      context
                          .read<QuranKareemBloc>()
                          .showRewardedAd(state.rewardedAd!);
                    }
                  },
                );
              },
            ),
            BottomTile(
              title: AppLocalizations.of(context)!.quranSettingReport,
              icon: Icons.report_outlined,
              onTap: () async {
                await navigator
                    .pushNamed(RoutesConstants.reportOrSuggestionScreen);
              },
            ),
            Container(color: Colors.black.withOpacity(0.6)),
            BottomTile(
              title: AppLocalizations.of(context)!.quranSettingLanguage,
              icon: Icons.language,
              onTap: () async {
                await navigator.pushNamed(RoutesConstants.changeLanguageScreen);
              },
            ),
          ]),
    );
  }
}
