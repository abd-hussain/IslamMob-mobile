import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islam_app/domain/usecase/load_file_from_document_usecase.dart';
import 'package:islam_app/l10n/gen/app_localizations.dart';
import 'package:islam_app/my_app/islam_mob_app/routes.dart';
import 'package:islam_app/my_app/locator.dart';
import 'package:islam_app/presentation/quran_kareem_tab/bloc/quran_kareem_bloc.dart';
import 'package:islam_app/shared_widgets/custom_text.dart';
import 'package:lottie/lottie.dart';

/// A widget displayed when no Quran PDF is available for reading.
///
/// This widget shows when the user hasn't selected or downloaded any Quran
/// print edition yet. It displays an animated illustration, instructional text,
/// and a button to navigate to the print selection screen. Once a print is
/// selected and downloaded, it automatically loads the PDF for reading.
class NoPDFView extends StatelessWidget {
  /// Creates a [NoPDFView] widget.
  ///
  /// The [key] parameter is optional and can be used to control how one widget
  /// replaces another widget in the tree.
  const NoPDFView({super.key});

  @override
  Widget build(BuildContext context) {
    final localize = IslamMobLocalizations.of(context);

    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _buildLottieAnimation(),
            const SizedBox(height: 10),
            _buildInstructionText(context, localize),
            const SizedBox(height: 10),
            _buildSelectPrintButton(context, localize),
          ],
        ),
      ),
    );
  }

  Widget _buildLottieAnimation() {
    return Lottie.asset('assets/lottie/animation_lm3q2kl2.zip', width: 200);
  }

  Widget _buildInstructionText(
    BuildContext context,
    IslamMobLocalizations localize,
  ) {
    return CustomText(
      title: localize.selectprintdetails,
      fontSize: 16,
      maxLines: 2,
      textAlign: TextAlign.center,
      fontWeight: FontWeight.bold,
      color: const Color(0xff444444),
    );
  }

  Widget _buildSelectPrintButton(
    BuildContext context,
    IslamMobLocalizations localize,
  ) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(backgroundColor: const Color(0xff008480)),
      onPressed: () => _navigateToPrintListScreen(context),
      child: CustomText(
        title: localize.selectprint,
        fontSize: 16,
        textAlign: TextAlign.center,
      ),
    );
  }

  Future<void> _navigateToPrintListScreen(BuildContext context) async {
    final navigator = Navigator.of(context, rootNavigator: true);

    await navigator.pushNamed(RoutesConstants.quranPrintListScreen).then((
      value,
    ) {
      if (value is bool && value) {
        // ignore: use_build_context_synchronously
        _loadMushafFile(context);
      }
    });
  }

  Future<void> _loadMushafFile(BuildContext context) async {
    final filePath = await locator<LoadFileFromDocumentUseCase>().call();

    if (filePath == null || filePath.isEmpty) {
      debugPrint("No print name found in database.");
      return;
    }
    final file = File(filePath);

    if (file.existsSync() && context.mounted) {
      await context.read<QuranKareemBloc>().initialize();
    } else {
      debugPrint("File does NOT exist at: ${file.path}");
    }
  }
}
