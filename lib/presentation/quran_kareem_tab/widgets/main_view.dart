import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:islam_app/presentation/quran_kareem_tab/bloc/quran_kareem_bloc.dart';
import 'package:islam_app/core/constants/database_constant.dart';
import 'package:pdfx/pdfx.dart';

class QuranKareemMainView extends StatelessWidget {
  const QuranKareemMainView({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context.read<QuranKareemBloc>().changeHelpBarShowingStatus(),
      child: Stack(
        children: [
          _buildPdfView(context),
          _buildBrightnessOverlay(),
        ],
      ),
    );
  }

  Widget _buildPdfView(BuildContext context) {
    final box = Hive.box(DatabaseBoxConstant.userInfo);
    final isReversed = box.get(DatabaseFieldConstant.userLanguageCode) != "ar";

    return PdfView(
      reverse: isReversed,
      controller: context.read<QuranKareemBloc>().pdfController!,
      onPageChanged: (index) {
        context
            .read<QuranKareemBloc>()
            .add(QuranKareemEvent.updatePageCount(index));
      },
    );
  }

  Widget _buildBrightnessOverlay() {
    return BlocBuilder<QuranKareemBloc, QuranKareemState>(
      buildWhen: (previous, current) => previous.brigtness != current.brigtness,
      builder: (context, state) {
        return IgnorePointer(
          ignoring: true,
          child: Container(
            color: Colors.black.withOpacity(state.brigtness),
          ),
        );
      },
    );
  }
}
