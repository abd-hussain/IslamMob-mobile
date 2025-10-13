import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islam_app/l10n/gen/app_localizations.dart';
import 'package:islam_app/my_app/locator.dart';
import 'package:islam_app/presentation/quran_kareem_tab/bloc/quran_kareem_bloc.dart';
import 'package:islam_app/shared_widgets/custom_text.dart';
import 'package:pdfx/pdfx.dart';
import 'package:preferences/preferences.dart';

/// The main view widget for displaying the Quran Kareem (Holy Quran) PDF.
///
/// This widget provides the primary interface for reading the Quran, including:
/// - PDF document display with page navigation
/// - Brightness overlay for comfortable reading
/// - Tutorial overlay for first-time users
/// - Tap gesture handling to toggle help bar visibility
/// - Language-aware page direction (RTL for Arabic, LTR for other languages)
class QuranKareemMainView extends StatelessWidget {
  /// Creates a [QuranKareemMainView] widget.
  ///
  /// The [key] parameter is optional and can be used to control how one widget
  /// replaces another widget in the tree.
  const QuranKareemMainView({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context.read<QuranKareemBloc>().changeHelpBarShowingStatus(),
      child: Stack(
        children: [
          _buildPdfView(context),
          _buildBrightnessOverlay(),
          _buildTutorialsOverlay(),
        ],
      ),
    );
  }

  Widget _buildPdfView(BuildContext context) {
    final isReversed =
        locator<IslamPreferences>().getValue(
          key: DatabaseFieldConstant.userLanguageCode,
          defaultValue: "",
        ) !=
        "ar";

    return PdfView(
      reverse: isReversed,
      controller: context.read<QuranKareemBloc>().pdfController!,
      onPageChanged: (index) {
        context.read<QuranKareemBloc>().add(
          QuranKareemEvent.updatePageCount(index),
        );
      },
    );
  }

  Widget _buildBrightnessOverlay() {
    return BlocBuilder<QuranKareemBloc, QuranKareemState>(
      buildWhen: (previous, current) => previous.brigtness != current.brigtness,
      builder: (context, state) {
        return IgnorePointer(
          child: Container(
            color: Colors.black.withValues(alpha: state.brigtness),
          ),
        );
      },
    );
  }

  Widget _buildTutorialsOverlay() {
    return BlocBuilder<QuranKareemBloc, QuranKareemState>(
      buildWhen: (previous, current) =>
          previous.tutorialShown != current.tutorialShown,
      builder: (context, state) {
        return state.tutorialShown
            ? const SizedBox()
            : Center(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.black.withValues(alpha: 0.8),
                    borderRadius: BorderRadius.circular(200),
                    border: Border.all(color: const Color(0xff444444)),
                  ),
                  width: MediaQuery.of(context).size.width / 1.5,
                  height: MediaQuery.of(context).size.width / 1.5,
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      children: [
                        Image.asset(
                          "assets/images/finger_click.png",
                          color: Colors.white70,
                          height: MediaQuery.of(context).size.width / 3,
                        ),
                        const SizedBox(height: 8),
                        CustomText(
                          title: IslamMobLocalizations.of(
                            context,
                          ).quranSettingTapTutorial,
                          fontSize: 18,
                          maxLines: 3,
                          color: Colors.white70,
                          fontWeight: FontWeight.bold,
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                ),
              );
      },
    );
  }
}
