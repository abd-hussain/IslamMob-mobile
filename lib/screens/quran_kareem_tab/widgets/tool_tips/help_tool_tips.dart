import 'package:flutter/material.dart';
import 'package:islam_app/screens/quran_kareem_tab/widgets/tool_tips/bottom_help_bar.dart';
import 'package:islam_app/screens/quran_kareem_tab/widgets/tool_tips/header_help_bar.dart';

class HelpToolTipsView extends StatelessWidget {
  final Function(double) returnBrightness;
  final Function(String) returnWithNewPrint;

  const HelpToolTipsView(
      {super.key,
      required this.returnBrightness,
      required this.returnWithNewPrint});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const QuranHeaderHelpBar(),
        Expanded(child: Container()),
        QuranBottomHelpBar(
          returnBrightness: (value) {
            returnBrightness(value);
          },
          returnWithNewPrint: (value) {
            returnWithNewPrint(value);
          },
        ),
      ],
    );
  }
}
