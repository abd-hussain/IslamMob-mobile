import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islam_app/screens/tabs/quran_kareem/sub_pages/quran_parts_list/bloc/quran_parts_list_bloc.dart';
import 'package:islam_app/screens/tabs/quran_kareem/sub_pages/quran_parts_list/widgets/quran_parts_tile_view.dart';
import 'package:islam_app/shared_widgets/custom_text.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islam_app/utils/constants/argument_constant.dart';

class QuranPartsListScreen extends StatelessWidget {
  const QuranPartsListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff292929),
        iconTheme: const IconThemeData(color: Colors.white),
        title: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomText(
              title: AppLocalizations.of(context)!.quranSettingParts,
              fontSize: 14,
            )
          ],
        ),
      ),
      body: BlocProvider(
        create: (context) => QuranPartsListBloc(),
        child: ListView.builder(
          itemCount: 30,
          itemBuilder: (context, index) {
            return QuranPartsTileView(
              pageNumber: index + 1,
              onJuzTap: (value) {
                Navigator.of(context)
                    .pop({ArgumentConstant.currentPageNumber: value});
              },
              onSorahTap: (sorahPageNumber) {
                Navigator.of(context)
                    .pop({ArgumentConstant.currentPageNumber: sorahPageNumber});
              },
            );
          },
        ),
      ),
    );
  }
}
