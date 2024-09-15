import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islam_app/screens/tabs/quran_kareem/bloc/quran_kareem_bloc.dart';
import 'package:islam_app/shared_widgets/custom_text.dart';
import 'dart:math' as math; // import this
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

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
                            previous.sorahReferanceNumber !=
                            current.sorahReferanceNumber,
                        builder: (context, state) {
                          return CustomText(
                            title:
                                "${AppLocalizations.of(context)!.quranSorah} ${context.read<QuranKareemBloc>().getSorahName(context: context, pageNumber: state.sorahReferanceNumber)}",
                            fontSize: 14,
                            textColor: Colors.white70,
                            fontWeight: FontWeight.bold,
                          );
                        },
                      ),
                      const Expanded(child: SizedBox()),
                      BlocBuilder<QuranKareemBloc, QuranKareemState>(
                        buildWhen: (previous, current) =>
                            previous.jozo2ReferanceNumber !=
                            current.jozo2ReferanceNumber,
                        builder: (context, state) {
                          return CustomText(
                            title:
                                "${AppLocalizations.of(context)!.quranJuz} ${state.jozo2ReferanceNumber}",
                            fontSize: 14,
                            textColor: Colors.white70,
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
                        textColor: Colors.white70,
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
