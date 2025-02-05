import 'dart:io';

import 'package:advertisments_manager/advertisments_manager.dart';
import 'package:firebase_manager/firebase_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ionicons/ionicons.dart';
import 'package:islam_app/domain/constants/argument_constant.dart';
import 'package:islam_app/domain/extensions/localization.dart';
import 'package:islam_app/domain/usecase/load_file_from_document_usecase.dart';
import 'package:islam_app/domain/usecase/quran_referances_usecase.dart';
import 'package:islam_app/l10n/gen/app_localizations.dart';
import 'package:islam_app/my_app/islam_mob_app/routes.dart';
import 'package:islam_app/my_app/locator.dart';
import 'package:islam_app/presentation/quran_kareem_tab/bloc/quran_kareem_bloc.dart';
import 'package:islam_app/presentation/quran_kareem_tab/widgets/tool_tips/bottom_tile.dart';
import 'package:islam_app/presentation/quran_kareem_tab/widgets/tool_tips/brightness_popup.dart';
import 'package:pdfx/pdfx.dart';

class QuranBottomHelpBar extends StatelessWidget {
  final Function(double) returnBrightness;
  const QuranBottomHelpBar({
    super.key,
    required this.returnBrightness,
  });

  @override
  Widget build(BuildContext context) {
    final localize = IslamMobLocalizations.of(context);

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
          _buildBrightnessTile(context, localize),
          _buildBookmarkTile(context, localize),
          _buildIndexTile(context, localize),
          _buildMushafTile(context, localize),
          _buildSpacerTile(),
          _buildSupportUsTile(context, localize),
        ],
      ),
    );
  }

  Widget _buildBrightnessTile(
      BuildContext context, IslamMobLocalizations localize) {
    return BlocBuilder<QuranKareemBloc, QuranKareemState>(
      buildWhen: (previous, current) => previous.brigtness != current.brigtness,
      builder: (context, state) {
        return BottomTile(
          title: localize.quranSettingLighting,
          icon: Icons.sunny,
          onTap: () {
            FirebaseAnalyticsRepository.logEvent(name: "QuranBrightnessShown");

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

  Widget _buildBookmarkTile(
      BuildContext context, IslamMobLocalizations localize) {
    return BlocBuilder<QuranKareemBloc, QuranKareemState>(
      buildWhen: (previous, current) =>
          previous.pageCount != current.pageCount ||
          previous.bookmarkedPages != current.bookmarkedPages,
      builder: (context, state) {
        final isBookmarked = state.bookmarkedPages.contains(state.pageCount);
        return BottomTile(
          title: isBookmarked
              ? localize.quranSettingRemoveBookMark
              : localize.quranSettingAddBookMark,
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

  Widget _buildIndexTile(BuildContext context, IslamMobLocalizations localize) {
    return BottomTile(
      title: localize.quranSettingIndex,
      icon: Ionicons.book,
      onTap: () => _navigateToIndexScreen(context, localize),
    );
  }

  Future<void> _navigateToIndexScreen(
      BuildContext context, IslamMobLocalizations localize) async {
    final navigator = Navigator.of(context, rootNavigator: true);
    final bloc = context.read<QuranKareemBloc>();
    final currentPage = bloc.currentPageNumber;

    final sorahName =
        QuranReferancesUsecase.getSurahReferenceNameFromPageNumber(currentPage);
    final jozo2Name =
        QuranReferancesUsecase.getJuzNumberFromPageNumber(currentPage);

    final arguments = {
      ArgumentConstant.currentPageNumber: currentPage,
      ArgumentConstant.currentSowrahName:
          localize.getLocalizedString(sorahName),
      ArgumentConstant.currentPartName: localize.getLocalizedString(jozo2Name),
    };

    await navigator
        .pushNamed(RoutesConstants.quranPagesIndexScreen, arguments: arguments)
        // ignore: use_build_context_synchronously
        .then((value) => _handleNavigationResult(context, value, localize));
  }

  Future<void> _handleNavigationResult(BuildContext context, dynamic value,
      IslamMobLocalizations localize) async {
    if (value is! Map<String, dynamic> || !context.mounted) return;

    final bloc = context.read<QuranKareemBloc>();
    final pdfController = bloc.pdfController;

    if (value[ArgumentConstant.currentPageNumber] != null) {
      final pageNumber = value[ArgumentConstant.currentPageNumber];
      bloc.add(QuranKareemEvent.updatePageCount(pageNumber));
      pdfController?.jumpToPage(pageNumber);
    }

    if (value[ArgumentConstant.currentPartNumber] != null) {
      final jozo2PageNumber = QuranReferancesUsecase.getPageNumberFromJuzNumber(
          value[ArgumentConstant.currentPartNumber]);
      bloc.add(QuranKareemEvent.updatePageCount(jozo2PageNumber));
      pdfController?.jumpToPage(jozo2PageNumber);
    }

    if (value[ArgumentConstant.currentSowrahName] != null) {
      final sorahPageNumber =
          QuranReferancesUsecase.getPageNumberFromSurahReferenceName(
        localize.getKeyFromLocalizedString(
            value[ArgumentConstant.currentSowrahName]),
      );
      if (sorahPageNumber != -1) {
        bloc.add(QuranKareemEvent.updatePageCount(sorahPageNumber));
        pdfController?.jumpToPage(sorahPageNumber);
      }
    }
  }

  Widget _buildMushafTile(
      BuildContext context, IslamMobLocalizations localize) {
    return BottomTile(
      title: localize.quranSettingMushaf,
      icon: Icons.library_books,
      onTap: () => _navigateToMushafScreen(context),
    );
  }

  Future<void> _navigateToMushafScreen(BuildContext context) async {
    final navigator = Navigator.of(context, rootNavigator: true);
    await navigator
        .pushNamed(RoutesConstants.quranPrintListScreen)
        .then((value) {
      if (value is bool && value) {
        // ignore: use_build_context_synchronously
        _loadMushafFile(context);
      }
    });
  }

  Future<void> _loadMushafFile(BuildContext context) async {
    final filePath = await locator<LoadFileFromDocumentUseCase>().call();

    if (filePath == null || filePath.isEmpty) {
      debugPrint("No print name found in database.");
      return;
    }

    final file = File(filePath);

    if (file.existsSync() && context.mounted) {
      final bloc = context.read<QuranKareemBloc>();
      bloc.add(QuranKareemEvent.updateReadPDFFile(filePath));
      await bloc.pdfController?.loadDocument(PdfDocument.openFile(file.path));
    } else {
      debugPrint("File does NOT exist at: ${file.path}");
    }
  }

  Widget _buildSupportUsTile(
      BuildContext context, IslamMobLocalizations localize) {
    FirebaseAnalyticsRepository.logEvent(name: "QuranSupportUsShown");

    final bloc = context.read<QuranKareemBloc>();
    return BlocBuilder<QuranKareemBloc, QuranKareemState>(
      buildWhen: (previous, current) =>
          previous.rewardedAdExists != current.rewardedAdExists,
      builder: (context, state) {
        return BottomTile(
          title: localize.quranSettingSupportUs,
          icon: Icons.ads_click,
          isIconBlinking: state.rewardedAdExists,
          onTap: () async {
            await RewarderAds.showRewardedAd();
            bloc.add(QuranKareemEvent.updateRewardedAd(
                RewarderAds.mainRewardedAd != null));
          },
        );
      },
    );
  }

  Widget _buildSpacerTile() {
    return ColoredBox(color: Colors.black.withOpacity(0.5));
  }
}
