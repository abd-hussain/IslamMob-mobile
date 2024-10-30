import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islam_app/screens/quran_pages_list/bloc/quran_pages_list_bloc.dart';
import 'package:islam_app/screens/quran_pages_list/widgets/quran_pages_tile.dart';
import 'package:islam_app/shared_widgets/custom_appbar.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islam_app/utils/constants/argument_constant.dart';

class QuranPagesListScreen extends StatelessWidget {
  const QuranPagesListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    int selectedPageNumber = _handleReadingArguments(
            arguments: ModalRoute.of(context)!.settings.arguments) ??
        1;

    return Scaffold(
      appBar: CustomAppBar(title: AppLocalizations.of(context)!.quranpages),
      body: BlocProvider(
        create: (context) => QuranPagesListBloc(),
        child: BlocBuilder<QuranPagesListBloc, QuranPagesListState>(
          builder: (context, state) {
            return ListView.builder(
              itemCount: 604,
              itemBuilder: (context, index) {
                return QuranPagesTileView(
                  pageNumber: index + 1,
                  selectedPageNumber: selectedPageNumber,
                  onTap: () {
                    Navigator.of(context)
                        .pop({ArgumentConstant.currentPageNumber: index + 1});
                  },
                );
              },
            );
          },
        ),
      ),
    );
  }

  int? _handleReadingArguments({required Object? arguments}) {
    if (arguments != null) {
      final newArguments = arguments as Map<String, dynamic>;
      return newArguments[ArgumentConstant.currentPageNumber] as int?;
    }
    return null;
  }
}
