import 'package:flutter/material.dart';
import 'package:islam_app/presentation/quran_kareem_tab/widgets/tool_tips/bottom_help_bar.dart';
import 'package:islam_app/presentation/quran_kareem_tab/widgets/tool_tips/header_help_bar.dart';

/// A widget that displays help tooltips for the Quran interface.
///
/// This widget provides a layout with header and bottom help bars
/// to guide users through the Quran reading interface features.
class HelpToolTipsView extends StatelessWidget {
  /// Callback function to return brightness value changes.
  ///
  /// This callback is triggered when the user adjusts brightness
  /// settings through the help interface.
  final ValueChanged<double> returnBrightness;

  /// Creates a [HelpToolTipsView] widget.
  ///
  /// The [returnBrightness] parameter is required and will be called
  /// when brightness adjustments are made through the help interface.
  const HelpToolTipsView({super.key, required this.returnBrightness});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const QuranHeaderHelpBar(),
        const Spacer(),
        QuranBottomHelpBar(returnBrightness: returnBrightness),
        const SizedBox(height: 75),
      ],
    );
  }
}
