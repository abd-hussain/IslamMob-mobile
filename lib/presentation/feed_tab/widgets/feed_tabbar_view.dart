import 'package:flutter/material.dart';
import 'package:islam_app/l10n/gen/app_localizations.dart';

class FeedTabbarView extends StatelessWidget {
  final TabController tabController;
  final void Function(int) onTap;
  const FeedTabbarView({
    super.key,
    required this.tabController,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final localization = IslamMobLocalizations.of(context);

    return TabBar(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      controller: tabController,
      dividerColor: const Color(0xFFEAECF0),
      indicatorColor: const Color(0xFF008D89),
      labelColor: const Color(0xFF006B67),
      labelStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
      indicatorSize: TabBarIndicatorSize.tab,
      unselectedLabelColor: const Color(0xFF667085),
      overlayColor: WidgetStateProperty.all(Colors.transparent),
      isScrollable: true,
      tabAlignment: TabAlignment.center,
      unselectedLabelStyle: const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w400,
      ),
      tabs: [
        Tab(text: localization.wall_category),
        Tab(text: localization.watchlist_category),
      ],
      onTap: onTap,
    );
  }
}
