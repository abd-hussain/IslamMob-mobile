import 'package:firebase_manager/firebase_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islam_app/domain/constants/argument_constant.dart';
import 'package:islam_app/domain/model/hisn_al_muslim.dart';
import 'package:islam_app/my_app/islam_mob_app/routes.dart';
import 'package:islam_app/presentation/hisn_al_muslim/main_list/bloc/hisn_al_muslim_list_bloc.dart';

/// Widget for displaying individual Hisn Al-Muslim supplication cards.
///
/// This widget represents a single Islamic supplication from the Hisn Al-Muslim
/// collection in a card format, providing navigation and favorite management
/// functionality. It features:
/// - **Supplication title** with ID number and Arabic/translated text
/// - **Favorite toggle** for bookmarking important supplications
/// - **Navigation functionality** to detailed supplication view
/// - **Islamic typography** using the Uthman font for authentic presentation
/// - **Visual feedback** with shadows and material design interactions
///
/// The card supports Muslims in browsing and organizing Islamic supplications
/// from the Fortress of the Muslim collection, providing easy access to
/// authentic Islamic prayers and remembrances for various life situations.
class HisnMainCardView extends StatelessWidget {
  /// The Hisn Al-Muslim supplication model to display.
  final HisnAlMuslimModel item;

  /// Whether the current language requires right-to-left text direction.
  final bool isRtlLanguage;

  /// Creates a [HisnMainCardView] widget for supplication display.
  ///
  /// Parameters:
  /// - [item]: The supplication data including title, content, and favorite status
  /// - [isRtlLanguage]: Boolean for RTL language support (Arabic, Farsi)
  const HisnMainCardView({
    super.key,
    required this.item,
    required this.isRtlLanguage,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withValues(alpha: 0.4),
            spreadRadius: 3,
            blurRadius: 5,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      clipBehavior: Clip.hardEdge,
      child: Material(
        color: const Color(0xff444444),
        child: InkWell(
          onTap: () async {
            await FirebaseAnalyticsRepository.logEvent(
              name: "hisnAlMuslimDetailsScreenFromListScreen",
            );
            if (!context.mounted) return;

            final arguments = {ArgumentConstant.hisnAlMuslimItem: item};
            await Navigator.of(context)
                .pushNamed(
                  RoutesConstants.hisnAlMuslimDetailsScreen,
                  arguments: arguments,
                )
                .then((val) {
                  if (context.mounted) {
                    context.read<HisnAlMuslimListBloc>().add(
                      const HisnAlMuslimListEvent.getListOfAzkar(),
                    );
                  }
                });
          },
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    "${item.id} - ${isRtlLanguage ? item.title.ar : item.title.en}",
                    style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                      color: const Color(0xfffff2e9),
                      fontFamily: 'Uthman',
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                    maxLines: 2,
                  ),
                ),
                IconButton(
                  onPressed: () {
                    final updatedHisn = item.copyWith(
                      isFavorite: !item.isFavorite,
                    );
                    context.read<HisnAlMuslimListBloc>().add(
                      HisnAlMuslimListEvent.addRemoveItemToFavorite(
                        updatedHisn,
                      ),
                    );
                  },
                  icon: Icon(
                    item.isFavorite ? Icons.favorite : Icons.favorite_border,
                  ),
                  color: Colors.white,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
