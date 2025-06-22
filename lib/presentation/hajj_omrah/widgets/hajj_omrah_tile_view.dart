import 'package:flutter/material.dart';
import 'package:islam_app/domain/model/hajj_omrah_data.dart';
import 'package:islam_app/my_app/islam_mob_app/routes.dart';
import 'package:islam_app/shared_widgets/custom_text.dart';

/// Widget for displaying individual Hajj and Omrah guidance tiles.
///
/// This widget represents a single educational tile in the Hajj/Omrah
/// guidance interface, providing visual access to specific pilgrimage
/// topics and instructions. It features:
/// - **Background image** representing the pilgrimage topic
/// - **Overlay title** with localized text for the guidance topic
/// - **Navigation functionality** to detailed guidance content
/// - **Visual styling** with shadows and rounded corners
///
/// The tile supports the Islamic pilgrimage education by providing
/// organized access to different aspects of Hajj and Omrah guidance,
/// helping Muslims learn about these sacred journeys through visual
/// and textual content according to Islamic teachings.
class HajjOmrahTileView extends StatelessWidget {
  /// The Hajj/Omrah guidance data to display in this tile.
  final HajjOmrahData data;

  /// Whether the current language requires right-to-left text direction.
  final bool isRtlLanguage;

  /// Creates a [HajjOmrahTileView] widget for pilgrimage guidance display.
  ///
  /// Parameters:
  /// - [data]: The pilgrimage guidance data including title, image, and content
  /// - [isRtlLanguage]: Boolean for RTL language support (Arabic, Farsi)
  const HajjOmrahTileView({
    super.key,
    required this.data,
    required this.isRtlLanguage,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(
          context,
          RoutesConstants.hajjOmrahDetailsScreen,
          arguments: {'data': data, "isRtlLanguage": isRtlLanguage},
        );
      },
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withValues(alpha: 0.2),
              spreadRadius: 2,
              blurRadius: 5,
              offset: const Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Stack(
            alignment: AlignmentDirectional.center,
            children: [
              Image.asset(data.mainImagePath, fit: BoxFit.fill),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                  color: Colors.black.withValues(alpha: 0.5),
                  width: double.infinity,
                  child: CustomText(
                    title: isRtlLanguage ? data.title.ar : data.title.en,
                    textAlign: TextAlign.center,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
