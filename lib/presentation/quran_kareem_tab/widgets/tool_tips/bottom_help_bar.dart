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
import 'package:islam_app/shared_widgets/bottomsheet/quran_setting_bottomsheet.dart';
import 'package:pdfx/pdfx.dart';

/// A bottom help bar widget for the Quran reading interface.
///
/// This widget provides a comprehensive toolbar for Quran reading functionality including:
/// - Index navigation (Surah and Juz navigation)
/// - Bookmark management (add, remove, view all bookmarks)
/// - Settings access (brightness, Mushaf selection, general settings)
/// - Support features (rewarded ads)
/// - Responsive design that adapts to different screen sizes
///
/// The bar is displayed as a grid of interactive tiles, each providing specific
/// functionality for enhancing the Quran reading experience. It integrates with
/// the QuranKareemBloc for state management and supports both Arabic and English
/// localization.
class QuranBottomHelpBar extends StatelessWidget {
  /// Callback function to return brightness value changes.
  ///
  /// This function is called when the user adjusts the brightness setting
  /// through the brightness popup dialog. The brightness value is passed
  /// back to the parent widget to apply the screen brightness changes.
  final Function(double) returnBrightness;

  /// Creates a [QuranBottomHelpBar] widget.
  ///
  /// The [returnBrightness] callback is required to handle brightness
  /// adjustments from the brightness control popup.
  const QuranBottomHelpBar({
    super.key,
    required this.returnBrightness,
  });

  @override
  Widget build(BuildContext context) {
    final localize = IslamMobLocalizations.of(context);
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    // Adjust height dynamically based on screen size
    final double barHeight = screenHeight * 0.10; // 10% of screen height
    final double aspectRatio =
        screenWidth / (barHeight * 1.5); // Adjust aspect ratio

    return Container(
      color: Colors.black.withValues(alpha: 0.6),
      height: barHeight,
      child: GridView(
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 2,
          mainAxisSpacing: 2,
          childAspectRatio: aspectRatio,
        ),
        children: [
          SizedBox(child: _buildIndexTile(context, localize)),
          _buildBookmarkTile(context, localize),
          _buildAllBookmarksTile(context, localize),
          _buildSettingsTile(context, localize),
          _buildSpacerTile(),
          _buildSupportUsTile(context, localize),
        ],
      ),
    );
  }

  Widget _buildSettingsTile(
      BuildContext context, IslamMobLocalizations localize) {
    return BlocBuilder<QuranKareemBloc, QuranKareemState>(
      buildWhen: (previous, current) => previous.brigtness != current.brigtness,
      builder: (context, state) {
        return BottomTile(
          title: localize.settings,
          icon: Icons.settings,
          onTap: () async {
            await QuranSettingBottomsheet().showBottomSheet(
              context: context,
              showAdsCallback: () async {
                await FirebaseAnalyticsRepository.logEvent(
                    name: "QuranSupportUsShown");
                await RewarderAds.showRewardedAd();
                if (context.mounted) {
                  context.read<QuranKareemBloc>().add(
                      QuranKareemEvent.updateRewardedAd(
                          RewarderAds.mainRewardedAd != null));
                }
              },
              brigtnessCallback: () {
                FirebaseAnalyticsRepository.logEvent(
                    name: "QuranBrightnessShown");
                showDialog(
                  context: context,
                  barrierColor: const Color(0x01000000),
                  builder: (context) => BrightnessPopup(
                    initialValue: state.brigtness,
                    returnBrightness: returnBrightness,
                  ),
                );
              },
              masaheefCallback: () => _navigateToMushafScreen(context),
            );
          },
        );
      },
    );
  }

  Widget _buildAllBookmarksTile(
      BuildContext context, IslamMobLocalizations localize) {
    return BottomTile(
      title: localize.quranSettingSavedBookMark,
      icon: Icons.bookmarks,
      onTap: () => _navigateToIndexScreen(
          context: context, localize: localize, initialTabIndexSelected: 3),
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
      onTap: () => _navigateToIndexScreen(context: context, localize: localize),
    );
  }

  Future<void> _navigateToIndexScreen({
    required BuildContext context,
    required IslamMobLocalizations localize,
    int initialTabIndexSelected = 0,
  }) async {
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
      ArgumentConstant.initialTabIndexSelected: initialTabIndexSelected,
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
      final pageNumber = value[ArgumentConstant.currentPageNumber] as int;
      bloc.add(QuranKareemEvent.updatePageCount(pageNumber));
      pdfController?.jumpToPage(pageNumber);
    }

    if (value[ArgumentConstant.currentPartNumber] != null) {
      final jozo2PageNumber = QuranReferancesUsecase.getPageNumberFromJuzNumber(
          value[ArgumentConstant.currentPartNumber] as String);
      bloc.add(QuranKareemEvent.updatePageCount(jozo2PageNumber));
      pdfController?.jumpToPage(jozo2PageNumber);
    }

    if (value[ArgumentConstant.currentSowrahName] != null) {
      final sorahPageNumber =
          QuranReferancesUsecase.getPageNumberFromSurahReferenceName(
        localize.getKeyFromLocalizedString(
            value[ArgumentConstant.currentSowrahName] as String),
      );
      if (sorahPageNumber != -1) {
        bloc.add(QuranKareemEvent.updatePageCount(sorahPageNumber));
        pdfController?.jumpToPage(sorahPageNumber);
      }
    }
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
    return ColoredBox(color: Colors.black.withValues(alpha: 0.5));
  }
}
