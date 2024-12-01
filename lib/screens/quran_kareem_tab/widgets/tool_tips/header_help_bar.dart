import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islam_app/screens/quran_kareem_tab/bloc/quran_kareem_bloc.dart';
import 'package:islam_app/shared_widgets/custom_text.dart';
import 'dart:math' as math; // import this
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islam_app/utils/extensions/localization.dart';
//TODO: This tree need to be refactored

class QuranHeaderHelpBar extends StatelessWidget {
  const QuranHeaderHelpBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: Colors.black.withOpacity(0.8),
          height: 35,
          child: Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Stack(
              children: [
                Center(
                  child: Row(
                    children: [
                      BlocBuilder<QuranKareemBloc, QuranKareemState>(
                        buildWhen: (previous, current) =>
                            previous.sorahName != current.sorahName,
                        builder: (context, state) {
                          return CustomText(
                            title:
                                "${AppLocalizations.of(context)!.quranSorah} ${AppLocalizations.of(context)!.getLocalizedString(state.sorahName)}",
                            fontSize: 14,
                            color: Colors.white70,
                            fontWeight: FontWeight.bold,
                          );
                        },
                      ),
                      const Expanded(child: SizedBox()),
                      BlocBuilder<QuranKareemBloc, QuranKareemState>(
                        buildWhen: (previous, current) =>
                            previous.jozo2Name != current.jozo2Name,
                        builder: (context, state) {
                          return CustomText(
                            title: AppLocalizations.of(context)!
                                .getLocalizedString(state.jozo2Name),
                            fontSize: 14,
                            color: Colors.white70,
                            fontWeight: FontWeight.bold,
                          );
                        },
                      )
                    ],
                  ),
                ),
                Center(
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
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: 12),
        Center(
          child: Container(
            width: 80,
            height: 60,
            color: Colors.black.withOpacity(0.8),
            child: BlocBuilder<QuranKareemBloc, QuranKareemState>(
              buildWhen: (previous, current) =>
                  previous.pageSide != current.pageSide,
              builder: (context, state) {
                return Transform(
                  alignment: Alignment.center,
                  transform: Matrix4.rotationY(
                      state.pageSide == PageSide.left ? math.pi : 0),
                  child: const Icon(
                    Icons.menu_book_rounded,
                    color: Colors.white70,
                    size: 55,
                  ),
                );
              },
            ),
          ),
        )
      ],
    );
  }
}
