import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islam_app/presentation/quran_kareem_tab/bloc/quran_kareem_bloc.dart';
import 'package:islam_app/presentation/quran_kareem_tab/widgets/main_view.dart';
import 'package:islam_app/presentation/quran_kareem_tab/widgets/no_pdf_view.dart';
import 'package:islam_app/presentation/quran_kareem_tab/widgets/tool_tips/help_tool_tips.dart';

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
          _buildMainContent(),
          _buildHelpToolTips(),
        ],
      ),
    );
  }

  Widget _buildMainContent() {
    return BlocBuilder<QuranKareemBloc, QuranKareemState>(
      buildWhen: (previous, current) =>
          previous.sourceFileOfPDF != current.sourceFileOfPDF,
      builder: (context, state) {
        return state.sourceFileOfPDF.isEmpty
            ? const NoPDFView()
            : const QuranKareemMainView();
      },
    );
  }

  Widget _buildHelpToolTips() {
    return BlocBuilder<QuranKareemBloc, QuranKareemState>(
      buildWhen: (previous, current) =>
          previous.showHelpBar != current.showHelpBar,
      builder: (context, state) {
        return state.showHelpBar
            ? HelpToolTipsView(
                returnBrightness: (value) {
                  context.read<QuranKareemBloc>().add(
                        QuranKareemEvent.updateScreenBrigtness(value),
                      );
                },
              )
            : const SizedBox();
      },
    );
  }
}
