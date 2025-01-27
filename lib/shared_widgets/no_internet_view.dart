import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:islam_app/l10n/gen/app_localizations.dart';
import 'package:islam_app/shared_widgets/custom_text.dart';

class NoInternetView extends StatelessWidget {
  final Function() retryCallback;
  const NoInternetView({super.key, required this.retryCallback});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              'assets/images/internet.svg',
              height: 100,
              width: 100,
            ),
            const SizedBox(height: 8),
            CustomText(
              title: IslamMobLocalizations.of(context).internetconnection,
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: const Color(0xff444444),
            ),
            const SizedBox(height: 8),
            CustomText(
              title: IslamMobLocalizations.of(context).intenetshouldbeenableforthispage,
              fontSize: 14,
              maxLines: 2,
              textAlign: TextAlign.center,
              color: const Color(0xff444444),
            ),
            ElevatedButton(
              onPressed: retryCallback,
              child: CustomText(
                title: IslamMobLocalizations.of(context).titleofretry,
                fontSize: 14,
                maxLines: 2,
                textAlign: TextAlign.center,
              ),
            )
          ],
        ),
      ),
    );
  }
}
