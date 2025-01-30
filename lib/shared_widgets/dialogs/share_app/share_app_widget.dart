import 'package:firebase_manager/firebase_manager.dart';
import 'package:flutter/material.dart';
import 'package:islam_app/domain/constants/app_constant.dart';
import 'package:islam_app/l10n/gen/app_localizations.dart';
import 'package:islam_app/shared_widgets/custom_text.dart';
import 'package:share_plus/share_plus.dart';

class ShareAppDialogWidget extends StatelessWidget {
  const ShareAppDialogWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final localize = IslamMobLocalizations.of(context);

    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(height: 14),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, bottom: 16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CustomText(
                    maxLines: 3,
                    textAlign: TextAlign.center,
                    title: localize.sharepopuptitle,
                    color: const Color(0xff191C1F),
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                  Image.asset(
                    'assets/images/share_popoup.png',
                    height: 250,
                  ),
                  const SizedBox(height: 15),
                  CustomText(
                    maxLines: 3,
                    textAlign: TextAlign.center,
                    title: localize.sharepopupmessage,
                    fontSize: 18,
                    color: const Color(0xff191C1F),
                  ),
                  const SizedBox(height: 16),
                  Material(
                    borderRadius: BorderRadius.circular(5),
                    color: const Color(0xff008480),
                    child: InkWell(
                      onTap: () async {
                        Navigator.of(context, rootNavigator: true).pop();
                        await Share.share(
                          "${localize.shareMessageBody} \n Android : ${AppConstant.androidAppLink} \n iOS : ${AppConstant.iOSAppLink}",
                          subject: localize.shareMessageTitle,
                        );
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(top: 14, bottom: 14),
                        child: Container(
                          alignment: Alignment.center,
                          child: CustomText(
                            title: localize.shareapp,
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  InkWell(
                    onTap: () {
                      FirebaseAnalyticsRepository.logEvent(
                          name: "DismissShareDialog");
                      Navigator.of(context, rootNavigator: true).pop();
                    },
                    child: Container(
                      alignment: Alignment.center,
                      child: CustomText(
                        title: localize.cancel,
                        color: const Color(0xff444444),
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
