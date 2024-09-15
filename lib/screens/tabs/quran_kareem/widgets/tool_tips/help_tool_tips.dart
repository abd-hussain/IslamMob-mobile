import 'package:flutter/material.dart';
import 'package:islam_app/screens/tabs/quran_kareem/widgets/tool_tips/bottom_help_bar.dart';
import 'package:islam_app/screens/tabs/quran_kareem/widgets/tool_tips/header_help_bar.dart';

class HelpToolTipsView extends StatelessWidget {
  const HelpToolTipsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const QuranHeaderHelpBar(),
        Expanded(child: Container()),
        const QuranBottomHelpBar(),
      ],
    );
  }
}
