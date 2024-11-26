import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islam_app/screens/quran_kareem_tab/bloc/quran_kareem_bloc.dart';
import 'package:islam_app/screens/quran_kareem_tab/widgets/main_view.dart';
import 'package:islam_app/screens/quran_kareem_tab/widgets/no_pdf_view.dart';
import 'package:islam_app/screens/quran_kareem_tab/widgets/tool_tips/help_tool_tips.dart';
//TODO: This tree need to be refactored

class QuranKareemScreen extends StatefulWidget {
  const QuranKareemScreen({super.key});

  @override
  State<QuranKareemScreen> createState() => _QuranKareemScreenState();
}

class _QuranKareemScreenState extends State<QuranKareemScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => QuranKareemBloc(),
      child: Stack(
        children: [
          BlocBuilder<QuranKareemBloc, QuranKareemState>(
            buildWhen: (previous, current) =>
                previous.sourceFileOfPDF != current.sourceFileOfPDF,
            builder: (context, state) {
              if (state.sourceFileOfPDF == "") {
                return const NoPDFView();
              }
              return const QuranKareemMainView();
            },
          ),
          BlocBuilder<QuranKareemBloc, QuranKareemState>(
            buildWhen: (previous, current) =>
                previous.showHelpBar != current.showHelpBar,
            builder: (context, state) {
              if (state.showHelpBar) {
                return HelpToolTipsView(
                  returnBrightness: (value) {
                    context
                        .read<QuranKareemBloc>()
                        .add(QuranKareemEvent.updateScreenBrigtness(value));
                  },
                );
              } else {
                return const SizedBox();
              }
            },
          )
        ],
      ),
    );
  }
}
