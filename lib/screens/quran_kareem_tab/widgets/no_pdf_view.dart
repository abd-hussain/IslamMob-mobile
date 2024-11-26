import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:islam_app/my_app/islam_mob_app/routes.dart';
import 'package:islam_app/screens/quran_kareem_tab/bloc/quran_kareem_bloc.dart';
import 'package:islam_app/shared_widgets/custom_text.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islam_app/utils/constants/argument_constant.dart';
import 'package:islam_app/utils/constants/database_constant.dart';
import 'package:lottie/lottie.dart';

class NoPDFView extends StatelessWidget {
  const NoPDFView({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Lottie.asset(
              'assets/lottie/animation_lm3q2kl2.zip',
              width: 200,
            ),
            CustomText(
              title: AppLocalizations.of(context)!.selectprintdetails,
              fontSize: 16,
              maxLines: 2,
              textAlign: TextAlign.center,
              fontWeight: FontWeight.bold,
              color: const Color(0xff444444),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xff007F37),
              ),
              onPressed: () async {
                final navigator = Navigator.of(context, rootNavigator: true);

                await navigator.pushNamed(RoutesConstants.quranPrintListScreen,
                    arguments: {ArgumentConstant.isDetailsPage: true}).then(
                  (value) {
                    // ignore: use_build_context_synchronously
                    _loadMushafFile(context);
                  },
                );
              },
              child: CustomText(
                title: AppLocalizations.of(context)!.selectprint,
                fontSize: 16,
                textAlign: TextAlign.center,
                color: Colors.white,
              ),
            )
          ],
        ),
      ),
    );
  }

  void _loadMushafFile(BuildContext context) {
    final box = Hive.box(DatabaseBoxConstant.userInfo);
    final printName = box.get(DatabaseFieldConstant.quranKaremPrintNameToUse);
    final file = File(printName);

    if (file.existsSync() && context.mounted) {
      context.read<QuranKareemBloc>().initalMethod();
    } else {
      debugPrint("file does NOT exist at: ${file.path}");
    }
  }
}
