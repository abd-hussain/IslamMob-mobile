import 'package:flutter/material.dart';
import 'package:islam_app/shared_widgets/custom_text.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

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
            CustomText(
              title: AppLocalizations.of(context)!.internetconnection,
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: const Color(0xff444444),
            ),
            CustomText(
              title: AppLocalizations.of(context)!
                  .intenetshouldbeenableforthispage,
              fontSize: 14,
              maxLines: 2,
              textAlign: TextAlign.center,
              color: const Color(0xff444444),
            ),
            ElevatedButton(
              onPressed: () => retryCallback(),
              child: CustomText(
                title: AppLocalizations.of(context)!.titleofretry,
                fontSize: 14,
                maxLines: 2,
                textAlign: TextAlign.center,
                color: Colors.white,
              ),
            )
          ],
        ),
      ),
    );
  }
}
