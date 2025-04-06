import 'package:flutter/material.dart';
import 'package:islam_app/domain/model/choose_location.dart';
import 'package:islam_app/l10n/gen/app_localizations.dart';
import 'package:islam_app/shared_widgets/custom_text.dart';

class SelectLocationTileView extends StatelessWidget {
  final ChooseLocation chooseLocation;
  final Function(String countryName, String lat, String long) onTap;
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
