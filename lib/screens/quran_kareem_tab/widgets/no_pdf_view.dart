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
import 'package:pdfx/pdfx.dart';

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
            CustomText(
              title: AppLocalizations.of(context)!.selectprintdetails,
              fontSize: 16,
              maxLins: 2,
              textAlign: TextAlign.center,
              fontWeight: FontWeight.bold,
              textColor: const Color(0xff444444),
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
                  (value) async {
                    if (value is Map<String, String>) {
                      final box = Hive.box(DatabaseBoxConstant.userInfo);

                      final pageNumber = box.get(
                          DatabaseFieldConstant.quranKaremLastPageNumber,
                          defaultValue: 1);
                      final printName = box.get(
                          DatabaseFieldConstant.quranKaremPrintNameToUse,
                          defaultValue:
                              "/data/user/0/com.islammob.app/app_flutter/normal1.pdf");
                      final file = File(printName);
                      if (await file.exists()) {
                        debugPrint("file exists at: ${file.path}");
                        if (context.mounted) {
                          context.read<QuranKareemBloc>().add(
                              QuranKareemEvent.updateReadPDFFile(printName));
                          context
                              .read<QuranKareemBloc>()
                              .pdfController
                              .loadDocument(PdfDocument.openFile(file.path));
                          context.read<QuranKareemBloc>().add(
                              QuranKareemEvent.updatePageCount(pageNumber));
                          context
                              .read<QuranKareemBloc>()
                              .pdfController
                              .initialPage = pageNumber;
                          context
                              .read<QuranKareemBloc>()
                              .pdfController
                              .jumpToPage(1);
                        }
                      } else {
                        debugPrint("file does NOT exist at: ${file.path}");
                      }
                    }
                  },
                );
              },
              child: CustomText(
                title: AppLocalizations.of(context)!.selectprint,
                fontSize: 16,
                textAlign: TextAlign.center,
                textColor: Colors.white,
              ),
            )
          ],
        ),
      ),
    );
  }
}
