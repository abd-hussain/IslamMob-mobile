import 'package:firebase_manager/firebase_manager.dart';
import 'package:flutter/material.dart';
import 'package:islam_app/domain/constants/app_constant.dart';
import 'package:islam_app/l10n/gen/app_localizations.dart';
import 'package:islam_app/my_app/islam_mob_app/routes.dart';
import 'package:islam_app/shared_widgets/custom_text.dart';
import 'package:share_plus/share_plus.dart';

/// A dialog widget that provides options for sharing the application.
///
/// This widget displays a dialog with multiple sharing options including:
/// - Share by contact (navigates to contacts screen)
/// - Share on social media (uses the device's share functionality)
/// - Cancel option to dismiss the dialog
///
/// The dialog includes a title, descriptive message, illustration image,
/// and styled action buttons for each sharing method.
class ShareAppDialogWidget extends StatelessWidget {
  /// Creates a [ShareAppDialogWidget].
  ///
  /// The [key] parameter is optional and can be used to control how one widget
  /// replaces another widget in the tree.
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
                  Image.asset('assets/images/share_popoup.png', height: 250),
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
                        await Navigator.of(
                          context,
                        ).pushNamed(RoutesConstants.contactsScreen);
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(top: 14, bottom: 14),
                        child: Container(
                          alignment: Alignment.center,
                          child: CustomText(
                            title: localize.shareByContact,
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
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
                            title: localize.shareOnSocialMedia,
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
                        name: "DismissShareDialog",
                      );
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
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
