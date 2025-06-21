import 'package:flutter/material.dart';
import 'package:islam_app/domain/model/choose_location.dart';
import 'package:islam_app/l10n/gen/app_localizations.dart';
import 'package:islam_app/shared_widgets/custom_text.dart';

/// A tile widget for displaying and selecting a location during onboarding.
///
/// This widget displays a location option with the country flag, name, and
/// a "Choose" button. When tapped, it triggers the provided callback with
/// the location's details including country name, latitude, and longitude.
class SelectLocationTileView extends StatelessWidget {
  /// The location data to display in this tile.
  final ChooseLocation chooseLocation;

  /// Callback function triggered when the tile is tapped.
  ///
  /// Provides the country name, latitude, and longitude of the selected location.
  final Function(String countryName, double lat, double long) onTap;

  /// Creates a [SelectLocationTileView] widget.
  ///
  /// Both [chooseLocation] and [onTap] are required parameters.
  /// The [key] parameter is optional and can be used to control how one widget
  /// replaces another widget in the tree.
  const SelectLocationTileView(
      {super.key, required this.chooseLocation, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(6),
      child: InkWell(
        onTap: () => onTap(chooseLocation.countryName, chooseLocation.latitude,
            chooseLocation.longitude),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: const Color(0xff444444),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withValues(alpha: 0.5),
                spreadRadius: 2,
                blurRadius: 3,
                offset: const Offset(0, 3), // Shadow position
              ),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              children: [
                CustomText(
                  title: chooseLocation.flag,
                  fontSize: 16,
                ),
                const SizedBox(width: 6),
                CustomText(
                  title: chooseLocation.countryName,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
                const Expanded(child: SizedBox()),
                CustomText(
                  title: IslamMobLocalizations.of(context).choose,
                  fontSize: 16,
                  color: Colors.blue,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
