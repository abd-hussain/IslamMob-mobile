import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islam_app/domain/extensions/localization.dart';
import 'package:islam_app/l10n/gen/app_localizations.dart';
import 'package:islam_app/presentation/quran_kareem_tab/bloc/quran_kareem_bloc.dart';
import 'package:islam_app/shared_widgets/custom_text.dart';

/// A widget that displays contextual information and visual indicators for the Quran reading interface.
///
/// This help bar provides users with essential information about their current position
/// in the Quran, including:
/// - Current page number prominently displayed in the center
/// - Surah (chapter) name on the left side
/// - Juz (part) name on the right side
/// - Visual page side indicator showing whether viewing left or right page
/// - Bookmark indicator when the current page is bookmarked
///
/// The widget uses a dark semi-transparent background to overlay on the Quran content
/// without completely obscuring it. It responds to state changes from the QuranKareemBloc
/// to update the displayed information in real-time as users navigate through pages.
///
/// The page side indicator uses a book icon that rotates to show the current page
/// orientation, and the bookmark indicator appears as a red semi-transparent tab
/// when the current page is in the user's bookmarks.
class QuranHeaderHelpBar extends StatelessWidget {
  /// Creates a [QuranHeaderHelpBar] widget.
  const QuranHeaderHelpBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildHeaderBar(context),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(width: 10),
            const Expanded(child: SizedBox()),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(top: 4),
                child: _buildPageSideIndicator(),
              ),
            ),
            Expanded(child: Center(child: _buildPageBookmarkIndicator())),
            const SizedBox(width: 10),
          ],
        ),
      ],
    );
  }

  Widget _buildPageBookmarkIndicator() {
    return BlocBuilder<QuranKareemBloc, QuranKareemState>(
      buildWhen: (previous, current) =>
          previous.pageCount != current.pageCount ||
          previous.bookmarkedPages != current.bookmarkedPages,
      builder: (context, state) {
        final isBookmarked = state.bookmarkedPages.contains(state.pageCount);
        return isBookmarked
            ? Container(
                decoration: BoxDecoration(
                  color: Colors.red.withValues(alpha: 0.5),
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                  ),
                ),
                width: 25,
                height: 100,
              )
            : const SizedBox();
      },
    );
  }

  Widget _buildHeaderBar(BuildContext context) {
    return Container(
      color: Colors.black.withValues(alpha: 0.8),
      height: 35,
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Stack(
        children: [
          _buildSorahAndJozo2Row(context),
          _buildPageCountCenter(context),
        ],
      ),
    );
  }

  Widget _buildSorahAndJozo2Row(BuildContext context) {
    final localize = IslamMobLocalizations.of(context);

    return Align(
      child: Row(
        children: [
          _buildSorahName(context, localize),
          const Spacer(),
          _buildJozo2Name(context, localize),
        ],
      ),
    );
  }

  Widget _buildSorahName(BuildContext context, IslamMobLocalizations localize) {
    return BlocBuilder<QuranKareemBloc, QuranKareemState>(
      buildWhen: (previous, current) => previous.sorahName != current.sorahName,
      builder: (context, state) {
        return CustomText(
          title:
              "${localize.quranSorah} "
              "${localize.getLocalizedString(state.sorahName)}",
          fontSize: 14,
          color: Colors.white70,
          fontWeight: FontWeight.bold,
        );
      },
    );
  }

  Widget _buildJozo2Name(BuildContext context, IslamMobLocalizations localize) {
    return BlocBuilder<QuranKareemBloc, QuranKareemState>(
      buildWhen: (previous, current) => previous.jozo2Name != current.jozo2Name,
      builder: (context, state) {
        return CustomText(
          title: localize.getLocalizedString(state.jozo2Name),
          fontSize: 14,
          color: Colors.white70,
          fontWeight: FontWeight.bold,
        );
      },
    );
  }

  Widget _buildPageCountCenter(BuildContext context) {
    return Align(
      child: BlocBuilder<QuranKareemBloc, QuranKareemState>(
        buildWhen: (previous, current) =>
            previous.pageCount != current.pageCount,
        builder: (context, state) {
          return CustomText(
            title: state.pageCount.toString(),
            fontSize: 20,
            color: Colors.white70,
            fontWeight: FontWeight.bold,
          );
        },
      ),
    );
  }

  Widget _buildPageSideIndicator() {
    return Center(
      child: Container(
        width: 80,
        height: 50,
        decoration: BoxDecoration(
          color: Colors.black.withValues(alpha: 0.8),
          borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(5),
            bottomRight: Radius.circular(5),
          ),
        ),
        child: BlocBuilder<QuranKareemBloc, QuranKareemState>(
          buildWhen: (previous, current) =>
              previous.pageSide != current.pageSide,
          builder: (context, state) {
            return Transform(
              alignment: Alignment.center,
              transform: Matrix4.rotationY(
                state.pageSide == const QuranKareemStatePageSideStateLeft()
                    ? math.pi
                    : 0,
              ),
              child: const Icon(
                Icons.menu_book_rounded,
                color: Colors.white70,
                size: 45,
              ),
            );
          },
        ),
      ),
    );
  }
}
