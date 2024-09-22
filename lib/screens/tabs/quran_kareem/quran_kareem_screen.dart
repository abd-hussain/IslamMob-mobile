import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islam_app/screens/tabs/quran_kareem/bloc/quran_kareem_bloc.dart';
import 'package:islam_app/screens/tabs/quran_kareem/widgets/main_view.dart';
import 'package:islam_app/screens/tabs/quran_kareem/widgets/tool_tips/help_tool_tips.dart';

class QuranKareemScreen extends StatelessWidget {
  const QuranKareemScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => QuranKareemBloc(),
      child: BlocBuilder<QuranKareemBloc, QuranKareemState>(
        builder: (context, state) {
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
