import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:ionicons/ionicons.dart';
import 'package:islam_app/domain/usecase/quran_referances_usecase.dart';
import 'package:islam_app/my_app/islam_mob_app/routes.dart';
import 'package:islam_app/presentation/quran_kareem_tab/bloc/quran_kareem_bloc.dart';
import 'package:islam_app/presentation/quran_kareem_tab/widgets/tool_tips/bottom_tile.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islam_app/presentation/quran_kareem_tab/widgets/tool_tips/brightness_popup.dart';
import 'package:islam_app/core/constants/argument_constant.dart';
import 'package:islam_app/core/constants/database_constant.dart';
import 'package:islam_app/utils/extensions/localization.dart';
import 'package:pdfx/pdfx.dart';

class QuranBottomHelpBar extends StatelessWidget {
  final Function(double) returnBrightness;
  const QuranBottomHelpBar({
    super.key,
    required this.returnBrightness,
  });

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
          _buildSpacerTile(),
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
              builder: (context) => BrightnessPopup(
                initialValue: state.brigtness,
                returnBrightness: returnBrightness,
              ),
            );
          },
        );
      },
    );
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
    return BottomTile(
      title: AppLocalizations.of(context)!.quranSettingIndex,
      icon: Ionicons.book,
      onTap: () => _navigateToIndexScreen(context),
    );
  }

  Future<void> _navigateToIndexScreen(BuildContext context) async {
    QuranReferancesUsecase quranReferancesUsecase = QuranReferancesUsecase();

    final navigator = Navigator.of(context, rootNavigator: true);
    final bloc = context.read<QuranKareemBloc>();
    final currentPage = bloc.currentPageNumber;

    final sorahName =
        quranReferancesUsecase.getSurahReferenceNameFromPageNumber(currentPage);
    final jozo2Name =
        quranReferancesUsecase.getJuzNumberFromPageNumber(currentPage);

    final arguments = {
      ArgumentConstant.currentPageNumber: currentPage,
      ArgumentConstant.currentSowrahName:
          AppLocalizations.of(context)!.getLocalizedString(sorahName),
      ArgumentConstant.currentPartName:
          AppLocalizations.of(context)!.getLocalizedString(jozo2Name),
    };

    await navigator
        .pushNamed(RoutesConstants.quranPagesIndexScreen, arguments: arguments)
        // ignore: use_build_context_synchronously
        .then((value) => _handleNavigationResult(context, value));
  }

  Future<void> _handleNavigationResult(
      BuildContext context, dynamic value) async {
    QuranReferancesUsecase quranReferancesUsecase = QuranReferancesUsecase();

    if (value is! Map<String, dynamic> || !context.mounted) return;

    final bloc = context.read<QuranKareemBloc>();
    final pdfController = bloc.pdfController;

    if (value[ArgumentConstant.currentPageNumber] != null) {
      final pageNumber = value[ArgumentConstant.currentPageNumber];
      bloc.add(QuranKareemEvent.updatePageCount(pageNumber));
      pdfController?.jumpToPage(pageNumber);
    }

    if (value[ArgumentConstant.currentPartNumber] != null) {
      final jozo2PageNumber = quranReferancesUsecase.getPageNumberFromJuzNumber(
          value[ArgumentConstant.currentPartNumber]);
      bloc.add(QuranKareemEvent.updatePageCount(jozo2PageNumber));
      pdfController?.jumpToPage(jozo2PageNumber);
    }

    if (value[ArgumentConstant.currentSowrahName] != null) {
      final sorahPageNumber =
          quranReferancesUsecase.getPageNumberFromSurahReferenceName(
        AppLocalizations.of(context)!.getKeyFromLocalizedString(
            value[ArgumentConstant.currentSowrahName]),
      );
      if (sorahPageNumber != -1) {
        bloc.add(QuranKareemEvent.updatePageCount(sorahPageNumber));
        pdfController?.jumpToPage(sorahPageNumber);
      }
    }
  }

  Widget _buildMushafTile(BuildContext context) {
    return BottomTile(
      title: AppLocalizations.of(context)!.quranSettingMushaf,
      icon: Icons.library_books,
      onTap: () => _navigateToMushafScreen(context),
    );
  }

  Future<void> _navigateToMushafScreen(BuildContext context) async {
    final navigator = Navigator.of(context, rootNavigator: true);
    await navigator.pushNamed(
      RoutesConstants.quranPrintListScreen,
      arguments: {ArgumentConstant.isDetailsPage: true},
      // ignore: use_build_context_synchronously
    ).then((_) => _loadMushafFile(context));
  }

  void _loadMushafFile(BuildContext context) {
    final box = Hive.box(DatabaseBoxConstant.userInfo);
    final printName =
        box.get(DatabaseFieldQuranCopyConstant.quranKaremPrintNameToUse);
    final file = File(printName);

    if (file.existsSync() && context.mounted) {
      final bloc = context.read<QuranKareemBloc>();
      bloc.add(QuranKareemEvent.updateReadPDFFile(printName));
      bloc.pdfController?.loadDocument(PdfDocument.openFile(file.path));
    } else {
      debugPrint("File does NOT exist at: ${file.path}");
    }
  }

  Widget _buildSupportUsTile(BuildContext context) {
    return BlocBuilder<QuranKareemBloc, QuranKareemState>(
      buildWhen: (previous, current) =>
          previous.rewardedAd != current.rewardedAd,
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

  Widget _buildSpacerTile() {
    return ColoredBox(color: Colors.black.withOpacity(0.5));
  }
}
