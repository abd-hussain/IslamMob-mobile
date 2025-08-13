import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:islam_app/l10n/gen/app_localizations.dart';
import 'package:islam_app/shared_widgets/custom_text.dart';

class EmptyItemsView extends StatelessWidget {
  const EmptyItemsView({super.key});

  @override
  Widget build(BuildContext context) {
    final localization = IslamMobLocalizations.of(context);

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset(
          'assets/images/empty_item.svg',
          height: 150,
          width: 150,
        ),
        CustomText(
          title: localization.noItemToShow,
          color: const Color(0xff444444),
          fontSize: 16,
          textAlign: TextAlign.center,
          fontWeight: FontWeight.bold,
        ),
      ],
    );
  }
}
