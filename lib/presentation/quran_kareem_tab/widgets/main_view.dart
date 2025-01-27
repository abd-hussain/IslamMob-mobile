import 'package:database_manager/database_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islam_app/presentation/quran_kareem_tab/bloc/quran_kareem_bloc.dart';
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
    final isReversed =
        DataBaseManagerBase.getFromDatabase(key: DatabaseFieldConstant.userLanguageCode, defaultValue: "") != "ar";

    return PdfView(
      reverse: isReversed,
      controller: context.read<QuranKareemBloc>().pdfController!,
      onPageChanged: (index) {
        context.read<QuranKareemBloc>().add(QuranKareemEvent.updatePageCount(index));
      },
    );
  }

  Widget _buildBrightnessOverlay() {
    return BlocBuilder<QuranKareemBloc, QuranKareemState>(
      buildWhen: (previous, current) => previous.brigtness != current.brigtness,
      builder: (context, state) {
        return IgnorePointer(
          child: Container(
            color: Colors.black.withOpacity(state.brigtness),
          ),
        );
      },
    );
  }
}
