import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islam_app/presentation/quran_kareem_tab/bloc/quran_kareem_bloc.dart';
import 'package:islam_app/presentation/quran_kareem_tab/widgets/main_view.dart';
import 'package:islam_app/presentation/quran_kareem_tab/widgets/no_pdf_view.dart';
import 'package:islam_app/presentation/quran_kareem_tab/widgets/tool_tips/help_tool_tips.dart';

/// A screen widget that displays the Quran Kareem (Holy Quran) interface.
///
/// This screen provides a complete Quran reading experience with features like:
/// - PDF viewing of Quran pages
/// - Help tooltips and guidance
/// - Screen brightness control
/// - Page navigation and bookmarking
///
/// The screen uses BLoC pattern for state management and conditionally displays
/// either the main Quran view or a no-PDF placeholder based on the availability
/// of the PDF source file.
class QuranKareemScreen extends StatefulWidget {
  /// Creates a [QuranKareemScreen].
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
