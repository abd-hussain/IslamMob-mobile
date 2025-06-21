import 'package:flutter/material.dart';
import 'package:islam_app/domain/model/hisn_al_muslim.dart';
import 'package:islam_app/l10n/gen/app_localizations.dart';
import 'package:islam_app/presentation/hisn_al_muslim/main_list/widgets/hisn_main_card_view.dart';
import 'package:islam_app/shared_widgets/custom_text.dart';

/// Widget displaying the complete list of all Hisn Al-Muslim supplications.
///
/// This widget provides a comprehensive view of all Islamic supplications
/// from the Hisn Al-Muslim collection, displaying them in an organized
/// list format. It features:
/// - **Complete supplication list** with all available Islamic prayers
/// - **Card-based layout** for easy browsing and selection
/// - **Empty state handling** with appropriate messaging
/// - **Language support** for proper Arabic and RTL text display
///
/// The widget serves as the main browsing interface for Muslims to
/// explore the complete collection of authentic Islamic supplications
/// for various life situations and daily spiritual practices.
class HisnAllItemsListView extends StatelessWidget {
  /// List of all Hisn Al-Muslim supplications to display.
  final List<HisnAlMuslimModel> list;

  /// Whether the current language requires right-to-left text direction.
  final bool isRtlLanguage;

  /// Creates a [HisnAllItemsListView] widget for displaying all supplications.
  ///
  /// Parameters:
  /// - [list]: Complete list of Hisn Al-Muslim supplications
  /// - [isRtlLanguage]: Boolean for RTL language support (Arabic, Farsi)
  const HisnAllItemsListView(
      {super.key, required this.list, required this.isRtlLanguage});

  @override
  Widget build(BuildContext context) {
    return list.isEmpty
        ? Center(
            child: CustomText(
              title: IslamMobLocalizations.of(context).noItemToShow,
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: const Color(0xff444444),
            ),
          )
        : ListView.builder(
            physics: const ClampingScrollPhysics(),
            itemCount: list.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(bottom: 8),
                child: HisnMainCardView(
                  isRtlLanguage: isRtlLanguage,
                  item: list[index],
                ),
              );
            },
          );
  }
}
