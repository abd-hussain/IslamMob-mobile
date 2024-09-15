import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islam_app/screens/tabs/quran_kareem/bloc/quran_kareem_bloc.dart';
import 'package:pdfx/pdfx.dart';

class QuranKareemMainView extends StatelessWidget {
  const QuranKareemMainView({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        final bool status = context.read<QuranKareemBloc>().state.showHelpBar;
        context.read<QuranKareemBloc>().add(QuranKareemEvent.showHideHelpBar(!status));
      },
      child: PdfView(
        reverse: true,
        controller: context.read<QuranKareemBloc>().pageController(),
        onPageChanged: (index) {
          context.read<QuranKareemBloc>().add(QuranKareemEvent.updatePageCount(index));
        },
      ),
    );
  }
}
