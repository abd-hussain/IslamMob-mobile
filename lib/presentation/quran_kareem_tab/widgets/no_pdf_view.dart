import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:islam_app/my_app/islam_mob_app/routes.dart';
import 'package:islam_app/presentation/quran_kareem_tab/bloc/quran_kareem_bloc.dart';
import 'package:islam_app/shared_widgets/custom_text.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islam_app/core/constants/database_constant.dart';
import 'package:lottie/lottie.dart';

class NoPDFView extends StatelessWidget {
  const NoPDFView({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _buildLottieAnimation(),
            const SizedBox(height: 10),
            _buildInstructionText(context),
            const SizedBox(height: 10),
            _buildSelectPrintButton(context),
          ],
        ),
      ),
    );
  }

  Widget _buildLottieAnimation() {
    return Lottie.asset(
      'assets/lottie/animation_lm3q2kl2.zip',
      width: 200,
    );
  }

  Widget _buildInstructionText(BuildContext context) {
    return CustomText(
      title: AppLocalizations.of(context)!.selectprintdetails,
      fontSize: 16,
      maxLines: 2,
      textAlign: TextAlign.center,
      fontWeight: FontWeight.bold,
      color: const Color(0xff444444),
    );
  }

  Widget _buildSelectPrintButton(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color(0xff008480),
      ),
      onPressed: () => _navigateToPrintListScreen(context),
      child: CustomText(
        title: AppLocalizations.of(context)!.selectprint,
        fontSize: 16,
        textAlign: TextAlign.center,
        color: Colors.white,
      ),
    );
  }

  Future<void> _navigateToPrintListScreen(BuildContext context) async {
    final navigator = Navigator.of(context, rootNavigator: true);

    await navigator
        .pushNamed(RoutesConstants.quranPrintListScreen)
        .then((value) {
      if (value is bool && value) {
        // ignore: use_build_context_synchronously
        _loadMushafFile(context);
      }
    });
  }

  void _loadMushafFile(BuildContext context) {
    final box = Hive.box(DatabaseBoxConstant.userInfo);
    final printName =
        box.get(DatabaseFieldQuranCopyConstant.quranKaremPrintNameToUse)
            as String?;
    if (printName == null || printName.isEmpty) {
      debugPrint("No print name found in database.");
      return;
    }
    final file = File(printName);

    if (file.existsSync() && context.mounted) {
      context.read<QuranKareemBloc>().initialize();
    } else {
      debugPrint("File does NOT exist at: ${file.path}");
    }
  }
}
