import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islam_app/screens/quran_kareem_tab/bloc/quran_kareem_bloc.dart';
import 'package:islam_app/screens/quran_kareem_tab/widgets/main_view.dart';
import 'package:islam_app/screens/quran_kareem_tab/widgets/no_pdf_view.dart';
import 'package:islam_app/screens/quran_kareem_tab/widgets/tool_tips/help_tool_tips.dart';

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
      child: BlocBuilder<QuranKareemBloc, QuranKareemState>(
        builder: (context, state) {
          if (state.sourceFileOfPDF == "") {
            return const NoPDFView();
          }
          return Stack(
            children: [
              const QuranKareemMainView(),
              state.showHelpBar
                  ? HelpToolTipsView(
                      returnBrightness: (value) {
                        context
                            .read<QuranKareemBloc>()
                            .add(QuranKareemEvent.updateScreenBrigtness(value));
                      },
                    )
                  : const SizedBox(),
            ],
          );
        },
      ),
    );
  }
}
