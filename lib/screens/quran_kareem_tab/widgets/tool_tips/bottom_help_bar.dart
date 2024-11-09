import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:ionicons/ionicons.dart';
import 'package:islam_app/my_app/islam_mob_app/routes.dart';
import 'package:islam_app/screens/quran_kareem_tab/bloc/quran_kareem_bloc.dart';
import 'package:islam_app/screens/quran_kareem_tab/widgets/tool_tips/bottom_tile.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islam_app/screens/quran_kareem_tab/widgets/tool_tips/brightness_popup.dart';
import 'package:islam_app/utils/constants/argument_constant.dart';
import 'package:islam_app/utils/constants/database_constant.dart';
import 'package:islam_app/utils/extensions/localization.dart';
import 'package:islam_app/utils/quran_referances.dart';
import 'package:pdfx/pdfx.dart';

class QuranBottomHelpBar extends StatelessWidget {
  final Function(double) returnBrightness;
  const QuranBottomHelpBar({super.key, required this.returnBrightness});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black.withOpacity(0.6),
      height: 95,
      child: GridView(
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 1,
          mainAxisSpacing: 1,
          childAspectRatio: 3,
        ),
        children: [
          _buildBrightnessTile(context),
          _buildBookmarkTile(context),
          _buildIndexTile(context),
          _buildMushafTile(context),
          ColoredBox(color: Colors.black.withOpacity(0.5)),
          _buildSupportUsTile(context),
        ],
      ),
    );
  }

  Widget _buildBrightnessTile(BuildContext context) {
    return BlocBuilder<QuranKareemBloc, QuranKareemState>(
      buildWhen: (previous, current) => previous.brigtness != current.brigtness,
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
                returnBrightness: returnBrightness,
              ),
            );
          },
        );
      },
    );
  }
}

Widget _buildBookmarkTile(BuildContext context) {
  return BlocBuilder<QuranKareemBloc, QuranKareemState>(
    buildWhen: (previous, current) =>
        previous.pageCount != current.pageCount ||
        previous.bookmarkedPages != current.bookmarkedPages,
    builder: (context, state) {
      final isBookmarked = state.bookmarkedPages.contains(state.pageCount);
      return BottomTile(
        title: isBookmarked
            ? AppLocalizations.of(context)!.quranSettingRemoveBookMark
            : AppLocalizations.of(context)!.quranSettingAddBookMark,
        icon: isBookmarked ? Icons.bookmark_remove : Icons.bookmark_add,
        colorIcon: isBookmarked ? Colors.redAccent : Colors.white70,
        onTap: () =>
            _toggleBookmark(context, state.pageCount, state.bookmarkedPages),
      );
    },
  );
}

void _toggleBookmark(
    BuildContext context, int pageCount, List<int> bookmarkedPages) {
  final updatedList = List<int>.from(bookmarkedPages);
  if (updatedList.contains(pageCount)) {
    updatedList.remove(pageCount);
  } else {
    updatedList.add(pageCount);
  }
  context
      .read<QuranKareemBloc>()
      .add(QuranKareemEvent.updateBookMarkedPages(updatedList));
}

Widget _buildIndexTile(BuildContext context) {
  final navigator = Navigator.of(context, rootNavigator: true);
  return BottomTile(
    title: AppLocalizations.of(context)!.quranSettingIndex,
    icon: Ionicons.book,
    onTap: () async {
      final bloc = context.read<QuranKareemBloc>();
      final currentPage = bloc.currentPageNumber;
      final sorahName =
          QuranReferances.getSorahReferenceNameForLocalizationFromPageNumber(
              currentPage);
      final jozo2Name = QuranReferances.getJuzNumberFromPageNumber(currentPage);

      await navigator
          .pushNamed(RoutesConstants.quranPagesIndexScreen, arguments: {
        ArgumentConstant.currentPageNumber: currentPage,
        ArgumentConstant.currentSowrahName:
            AppLocalizations.of(context)!.getLocalizedString(sorahName),
        ArgumentConstant.currentPartName:
            AppLocalizations.of(context)!.getLocalizedString(jozo2Name),
        // ignore: use_build_context_synchronously
      }).then((value) => _handleNavigationResult(context, value));
    },
  );
}

Future<void> _handleNavigationResult(
    BuildContext context, dynamic value) async {
  if (value is! Map<String, dynamic> || !context.mounted) return;

  final bloc = context.read<QuranKareemBloc>();
  if (value[ArgumentConstant.currentPageNumber] != null) {
    bloc.add(QuranKareemEvent.updatePageCount(
        value[ArgumentConstant.currentPageNumber]));
    bloc.pdfController!.jumpToPage(value[ArgumentConstant.currentPageNumber]);
  }

  if (value[ArgumentConstant.currentPartNumber] != null) {
    final jozo2PageNumber = QuranReferances.getPageNumberFromJuzNumber(
        value[ArgumentConstant.currentPartNumber]);
    bloc.add(QuranKareemEvent.updatePageCount(jozo2PageNumber));
    bloc.pdfController!.jumpToPage(jozo2PageNumber);
  }

  if (value[ArgumentConstant.currentSowrahName] != null) {
    final sorahPageNumber = QuranReferances.getPageNumberFromSorahReferenceName(
        AppLocalizations.of(context)!.getKeyFromLocalizedString(
            value[ArgumentConstant.currentSowrahName]));
    if (sorahPageNumber != -1) {
      bloc.add(QuranKareemEvent.updatePageCount(sorahPageNumber));
      bloc.pdfController!.jumpToPage(sorahPageNumber);
    }
  }
}

Widget _buildMushafTile(BuildContext context) {
  final navigator = Navigator.of(context, rootNavigator: true);
  return BottomTile(
    title: AppLocalizations.of(context)!.quranSettingMushaf,
    icon: Icons.library_books,
    onTap: () async {
      await navigator.pushNamed(RoutesConstants.quranPrintListScreen,
          arguments: {ArgumentConstant.isDetailsPage: true}).then((value) {
        // ignore: use_build_context_synchronously
        _loadMushafFile(context);
      });
    },
  );
}

void _loadMushafFile(BuildContext context) {
  final box = Hive.box(DatabaseBoxConstant.userInfo);
  final printName = box.get(DatabaseFieldConstant.quranKaremPrintNameToUse);
  final file = File(printName);

  if (file.existsSync() && context.mounted) {
    context
        .read<QuranKareemBloc>()
        .add(QuranKareemEvent.updateReadPDFFile(printName));
    context
        .read<QuranKareemBloc>()
        .pdfController
        ?.loadDocument(PdfDocument.openFile(file.path));
  } else {
    debugPrint("file does NOT exist at: ${file.path}");
  }
}

Widget _buildSupportUsTile(BuildContext context) {
  return BlocBuilder<QuranKareemBloc, QuranKareemState>(
    buildWhen: (previous, current) => previous.rewardedAd != current.rewardedAd,
    builder: (context, state) {
      return BottomTile(
        title: AppLocalizations.of(context)!.quranSettingSupportUs,
        icon: Icons.ads_click,
        isIconBlinking: state.rewardedAd != null,
        onTap: () {
          if (state.rewardedAd != null) {
            context.read<QuranKareemBloc>().showRewardedAd(state.rewardedAd!);
          }
        },
      );
    },
  );
}
