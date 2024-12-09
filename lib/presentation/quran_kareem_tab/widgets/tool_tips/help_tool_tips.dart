import 'package:flutter/material.dart';
import 'package:islam_app/presentation/quran_kareem_tab/widgets/tool_tips/bottom_help_bar.dart';
import 'package:islam_app/presentation/quran_kareem_tab/widgets/tool_tips/header_help_bar.dart';

class HelpToolTipsView extends StatelessWidget {
  final ValueChanged<double> returnBrightness;

  const HelpToolTipsView({
    super.key,
    required this.returnBrightness,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const QuranHeaderHelpBar(),
        const Spacer(),
        QuranBottomHelpBar(returnBrightness: returnBrightness),
      ],
    );
  }
}
