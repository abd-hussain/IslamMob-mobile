import 'package:firebase_manager/firebase_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islam_app/domain/constants/argument_constant.dart';
import 'package:islam_app/l10n/gen/app_localizations.dart';
import 'package:islam_app/presentation/quran_pages_index/bloc/quran_pages_index_bloc.dart';
import 'package:islam_app/presentation/quran_pages_index/widgets/quran_bookmark_pages_view.dart';
import 'package:islam_app/presentation/quran_pages_index/widgets/quran_pages_view.dart';
import 'package:islam_app/presentation/quran_pages_index/widgets/quran_parts_view.dart';
import 'package:islam_app/presentation/quran_pages_index/widgets/quran_sowar_view.dart';
import 'package:islam_app/shared_widgets/custom_text.dart';

/// A screen that displays the Quran pages index with multiple navigation options.
///
/// This screen provides a tabbed interface allowing users to navigate through
/// the Quran by surahs (chapters), parts (juz), pages, or bookmarked pages.
/// It includes search functionality and returns selected navigation data
/// to the calling screen.
class QuranPagesIndexScreen extends StatelessWidget {
  /// Creates a [QuranPagesIndexScreen].
  ///
  /// The [key] parameter is optional and can be used to control how one widget
  /// replaces another widget in the tree.
  const QuranPagesIndexScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Map<String, dynamic> arguments =
        ModalRoute.of(context)!.settings.arguments! as Map<String, dynamic>;
    final String currentSowrahName =
        (arguments[ArgumentConstant.currentSowrahName] as String?) ?? "";
    final String currentPartName =
        (arguments[ArgumentConstant.currentPartName] as String?) ?? "";
    final int currentPageNumber =
        (arguments[ArgumentConstant.currentPageNumber] as int?) ?? 0;
    final int initialTabIndexSelected =
        (arguments[ArgumentConstant.initialTabIndexSelected] as int?) ?? 0;

    FirebaseAnalyticsRepository.logEvent(name: "QuranPagesIndexScreen");

    return BlocProvider(
      create: (context) => QuranPagesIndexBloc()
        ..add(QuranPagesIndexEvent.getSowarList(context))
        ..add(QuranPagesIndexEvent.updateSelectedTab(initialTabIndexSelected)),
      child: DefaultTabController(
        initialIndex: initialTabIndexSelected,
        length: 4,
        child: Scaffold(
          appBar: _buildAppBar(context),
          body: GestureDetector(
            onTap: () => FocusScope.of(context).unfocus(),
            child: _buildTabBarView(
              context,
              currentSowrahName,
              currentPartName,
              currentPageNumber,
            ),
          ),
        ),
      ),
    );
  }

  /// Builds the AppBar with a title and TabBar.
  AppBar _buildAppBar(BuildContext context) {
    final localize = IslamMobLocalizations.of(context);

    return AppBar(
      backgroundColor: const Color(0xff292929),
      iconTheme: const IconThemeData(color: Colors.white),
      title: CustomText(
        title: localize.quranSettingIndex,
        fontSize: 16,
        fontWeight: FontWeight.bold,
      ),
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight),
        child: BlocBuilder<QuranPagesIndexBloc, QuranPagesIndexState>(
          buildWhen: (previous, current) =>
              previous.selectedIndex != current.selectedIndex,
          builder: (context, state) {
            return TabBar(
              onTap: (index) => context
                  .read<QuranPagesIndexBloc>()
                  .add(QuranPagesIndexEvent.updateSelectedTab(index)),
              labelColor: Colors.white,
              unselectedLabelColor: Colors.grey[700],
              indicatorColor: const Color(0xff008480),
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
                  text: localize.quranSowarIndex,
                  icon: const Icon(
                    Icons.copy_sharp,
                    size: 15,
                  ),
                ),
                Tab(
                  text: localize.quranPartsIndex,
                  icon: const Icon(
                    Icons.pie_chart_rounded,
                    size: 15,
                  ),
                ),
                Tab(
                  text: localize.quranpages,
                  icon: const Icon(
                    Icons.pageview,
                    size: 15,
                  ),
                ),
                Tab(
                  text: localize.quranSettingSavedBookMark,
                  icon: const Icon(
                    Icons.bookmarks,
                    size: 15,
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }

  /// Builds the TabBarView with three tabs: Sowar, Parts, and Pages.
  Widget _buildTabBarView(
    BuildContext context,
    String currentSowrahName,
    String currentPartName,
    int currentPageNumber,
  ) {
    return BlocBuilder<QuranPagesIndexBloc, QuranPagesIndexState>(
      buildWhen: (previous, current) =>
          previous.selectedIndex != current.selectedIndex,
      builder: (context, state) {
        return TabBarView(
          controller: TabController(
            length: 4,
            vsync: Scaffold.of(context),
            initialIndex: state.selectedIndex,
          ),
          physics: const NeverScrollableScrollPhysics(),
          children: [
            QuranSowarView(
              currentSowrahName: currentSowrahName,
              onSowrahSelected: (sowrahName) {
                FirebaseAnalyticsRepository.logEvent(
                    name: "QuranSowarViewItemSelected");
                Navigator.of(context).pop({
                  ArgumentConstant.currentSowrahName: sowrahName,
                });
              },
            ),
            QuranPartsView(
              currentPartName: currentPartName,
              onPartSelected: (partNumber) {
                FirebaseAnalyticsRepository.logEvent(
                    name: "QuranPartsViewItemSelected");
                Navigator.of(context).pop({
                  ArgumentConstant.currentPartNumber: partNumber,
                });
              },
            ),
            QuranPagesView(
              currentPageNumber: currentPageNumber,
              onPageSelected: (pageNumber) {
                FirebaseAnalyticsRepository.logEvent(
                    name: "QuranPagesViewItemSelected");
                Navigator.of(context).pop({
                  ArgumentConstant.currentPageNumber: pageNumber,
                });
              },
            ),
            QuranBookmarkPagesView(
              currentPageNumber: currentPageNumber,
              onPageSelected: (pageNumber) {
                FirebaseAnalyticsRepository.logEvent(
                    name: "QuranBookmarkPagesViewItemSelected");
                Navigator.of(context).pop({
                  ArgumentConstant.currentPageNumber: pageNumber,
                });
              },
            )
          ],
        );
      },
    );
  }
}
