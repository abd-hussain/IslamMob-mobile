import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islam_app/domain/extensions/localization.dart';
import 'package:islam_app/l10n/gen/app_localizations.dart';
import 'package:islam_app/presentation/quran_kareem_tab/bloc/quran_kareem_bloc.dart';
import 'package:islam_app/shared_widgets/custom_text.dart';

class QuranHeaderHelpBar extends StatelessWidget {
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
            Expanded(
              child: Center(
                child: _buildPageBookmarkIndicator(),
              ),
            ),
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
                  color: Colors.red.withOpacity(0.5),
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
      color: Colors.black.withOpacity(0.8),
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
          title: "${localize.quranSorah} "
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
          color: Colors.black.withOpacity(0.8),
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
