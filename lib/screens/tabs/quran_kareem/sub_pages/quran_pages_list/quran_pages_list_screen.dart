import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islam_app/screens/tabs/quran_kareem/sub_pages/quran_pages_list/bloc/quran_pages_list_bloc.dart';
import 'package:islam_app/screens/tabs/quran_kareem/sub_pages/quran_pages_list/widgets/quran_pages_tile.dart';
import 'package:islam_app/shared_widgets/custom_text.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class QuranPagesListScreen extends StatelessWidget {
  const QuranPagesListScreen({super.key});

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
              title: AppLocalizations.of(context)!.quranpages,
              fontSize: 14,
            )
          ],
        ),
      ),
      body: BlocProvider(
        create: (context) => QuranPagesListBloc(),
        child: BlocBuilder<QuranPagesListBloc, QuranPagesListState>(
          builder: (context, state) {
            return ListView.builder(
              itemCount: 604,
              itemBuilder: (context, index) {
                return QuranPagesTileView(
                  pageNumber: index + 1,
                  onTap: () {
                    //TODO
                  },
                );
              },
            );
          },
        ),
      ),
    );
  }
}
