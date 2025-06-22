import 'package:advertisments_manager/advertisments_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islam_app/l10n/gen/app_localizations.dart';
import 'package:islam_app/presentation/hisn_al_muslim/main_list/bloc/hisn_al_muslim_list_bloc.dart';
import 'package:islam_app/presentation/hisn_al_muslim/main_list/widgets/hisn_all_items_list_view.dart';
import 'package:islam_app/presentation/hisn_al_muslim/main_list/widgets/hisn_favorite_items_list_view.dart';
import 'package:islam_app/shared_widgets/custom_text.dart';
import 'package:islam_app/shared_widgets/custom_text_field.dart';

/// Screen for browsing and managing Hisn Al-Muslim supplications list.
///
/// This screen provides Muslims with comprehensive access to the complete
/// collection of Islamic supplications from Hisn Al-Muslim (Fortress of
/// the Muslim), a renowned compilation of authentic Islamic prayers and
/// remembrances. It features:
/// - **Tabbed navigation** between all supplications and favorites
/// - **Search functionality** for finding specific Islamic prayers
/// - **Visual branding** with Hisn Al-Muslim imagery
/// - **Organized lists** with proper Islamic categorization
/// - **Favorite management** for bookmarking important supplications
///
/// The screen serves as the main entry point for accessing Islamic
/// supplications for various life situations including daily dhikr,
/// travel prayers, eating supplications, and prayers for different
/// occasions according to Islamic teachings and Sunnah practices.
class HisnAlMuslimListScreen extends StatefulWidget {
  /// Creates a [HisnAlMuslimListScreen] widget.
  ///
  /// This screen displays the main list interface for Hisn Al-Muslim
  /// supplications with search, navigation, and favorite management.
  const HisnAlMuslimListScreen({super.key});

  /// Creates the state for the Hisn Al-Muslim list screen.
  ///
  /// Returns a [_HisnAlMuslimListScreenState] instance that manages
  /// the screen's lifecycle, search controller, and tab navigation.
  @override
  State<HisnAlMuslimListScreen> createState() => _HisnAlMuslimListScreenState();
}

class _HisnAlMuslimListScreenState extends State<HisnAlMuslimListScreen> {
  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final localizations = IslamMobLocalizations.of(context);
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: BlocProvider(
        create: (context) =>
            HisnAlMuslimListBloc()
              ..add(const HisnAlMuslimListEvent.getListOfAzkar()),
        child: DefaultTabController(
          length: 2,
          child: Scaffold(
            backgroundColor: const Color(0xfffff2e9),
            appBar: AppBar(
              backgroundColor: const Color(0xff292929),
              iconTheme: const IconThemeData(color: Colors.white),
              title: CustomText(
                title: localizations.hesenAlMuslim,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
              bottom: PreferredSize(
                preferredSize: const Size.fromHeight(kToolbarHeight),
                child: BlocBuilder<HisnAlMuslimListBloc, HisnAlMuslimListState>(
                  buildWhen: (previous, current) =>
                      previous.selectedIndex != current.selectedIndex,
                  builder: (context, state) {
                    return TabBar(
                      onTap: (index) => context
                          .read<HisnAlMuslimListBloc>()
                          .add(HisnAlMuslimListEvent.updateSelectedTab(index)),
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
                          text: localizations.all,
                          icon: const Icon(Icons.clear_all, size: 15),
                        ),
                        Tab(
                          text: localizations.favorites,
                          icon: const Icon(Icons.favorite, size: 15),
                        ),
                      ],
                    );
                  },
                ),
              ),
            ),
            body: SafeArea(
              child: Column(
                children: [
                  Stack(
                    children: [
                      Image.asset("assets/images/hisnalmuslim.png"),
                      Builder(
                        builder: (context) {
                          return CustomTextField(
                            controller: searchController,
                            hintText: IslamMobLocalizations.of(
                              context,
                            ).searchField,
                            prefixIcon: Icons.search,
                            onChanged: (p0) => context
                                .read<HisnAlMuslimListBloc>()
                                .add(HisnAlMuslimListEvent.search(p0)),
                          );
                        },
                      ),
                    ],
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8),
                      child:
                          BlocBuilder<
                            HisnAlMuslimListBloc,
                            HisnAlMuslimListState
                          >(
                            buildWhen: (previous, current) =>
                                (previous.selectedIndex !=
                                    current.selectedIndex) ||
                                (previous.list != current.list),
                            builder: (context, state) {
                              return TabBarView(
                                controller: TabController(
                                  length: 2,
                                  vsync: Scaffold.of(context),
                                  initialIndex: state.selectedIndex,
                                ),
                                children: [
                                  HisnAllItemsListView(
                                    list: state.list,
                                    isRtlLanguage: state.isRtlLanguage,
                                  ),
                                  HisnFavoriteItemsListView(
                                    list: state.list,
                                    isRtlLanguage: state.isRtlLanguage,
                                  ),
                                ],
                              );
                            },
                          ),
                    ),
                  ),
                  const AddMobBanner(
                    size: AdsBannerSize.fullBanner,
                    verticalPadding: 0,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
