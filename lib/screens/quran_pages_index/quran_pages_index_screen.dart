import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islam_app/screens/quran_pages_index/bloc/quran_pages_index_bloc.dart';
import 'package:islam_app/screens/quran_pages_index/widgets/quran_pages_view.dart';
import 'package:islam_app/screens/quran_pages_index/widgets/quran_parts_view.dart';
import 'package:islam_app/screens/quran_pages_index/widgets/quran_sowar_view.dart';
import 'package:islam_app/shared_widgets/custom_text.dart';
import 'package:islam_app/utils/constants/argument_constant.dart';
//TODO: This tree need to be refactored

class QuranPagesIndexScreen extends StatelessWidget {
  const QuranPagesIndexScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Map<String, dynamic> arguments =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;

    String currentSowrahName =
        arguments[ArgumentConstant.currentSowrahName] ?? "";
    String currentPartName = arguments[ArgumentConstant.currentPartName] ?? "";
    int currentPageNumber = arguments[ArgumentConstant.currentPageNumber] ?? 0;

    return BlocProvider(
      create: (context) => QuranPagesIndexBloc(),
      child: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: const Color(0xff292929),
            iconTheme: const IconThemeData(color: Colors.white),
            title: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomText(
                  title: AppLocalizations.of(context)!.quranSettingIndex,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ],
            ),
            bottom: PreferredSize(
              preferredSize: const Size.fromHeight(kToolbarHeight),
              child: BlocBuilder<QuranPagesIndexBloc, QuranPagesIndexState>(
                builder: (context, state) {
                  return TabBar(
                    onTap: (index) => context
                        .read<QuranPagesIndexBloc>()
                        .add(QuranPagesIndexEvent.updateSelectedTab(index)),
                    labelColor: Colors.white,
                    unselectedLabelColor: Colors.grey[700],
                    indicatorColor: const Color(0xff007F37),
                    indicatorWeight: 8,
                    labelStyle: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                    unselectedLabelStyle: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                    tabs: [
                      Tab(
                        text: AppLocalizations.of(context)!.quranSowarIndex,
                        icon: const Icon(
                          Icons.copy_sharp,
                          size: 20,
                        ),
                      ),
                      Tab(
                        text: AppLocalizations.of(context)!.quranPartsIndex,
                        icon: const Icon(
                          Icons.pie_chart_rounded,
                          size: 20,
                        ),
                      ),
                      Tab(
                        text: AppLocalizations.of(context)!.quranpages,
                        icon: const Icon(
                          Icons.pageview,
                          size: 20,
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
          ),
          body: BlocBuilder<QuranPagesIndexBloc, QuranPagesIndexState>(
            builder: (context, state) {
              return TabBarView(
                controller: TabController(
                  length: 3,
                  vsync: Scaffold.of(context),
                  initialIndex: state.selectedIndex,
                ),
                physics: const NeverScrollableScrollPhysics(),
                children: [
                  QuranSowarView(
                    currentSowrahName: currentSowrahName,
                    onSowrahSelected: (sowrahName) {
                      Navigator.of(context).pop({
                        ArgumentConstant.currentSowrahName: sowrahName,
                      });
                    },
                  ),
                  QuranPartsView(
                    currentPartName: currentPartName,
                    onPartSelected: (partNumber) {
                      Navigator.of(context).pop({
                        ArgumentConstant.currentPartNumber: partNumber,
                      });
                    },
                  ),
                  QuranPagesView(
                      currentPageNumber: currentPageNumber,
                      onPageSelected: (pageNumber) {
                        Navigator.of(context).pop({
                          ArgumentConstant.currentPageNumber: pageNumber,
                        });
                      }),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
