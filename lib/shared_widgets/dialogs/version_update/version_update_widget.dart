import 'package:firebase_manager/firebase_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:islam_app/domain/constants/app_constant.dart';
import 'package:islam_app/l10n/gen/app_localizations.dart';
import 'package:islam_app/shared_widgets/custom_text.dart';
import 'package:open_store/open_store.dart';

/// A dialog widget that prompts users to update the app to a newer version.
///
/// This widget displays an update notification with the new version number,
/// an update button that opens the app store, and optionally a skip button
/// if the update is not mandatory. It includes Firebase Analytics tracking
/// for user interactions.
class VersionDialogWidget extends StatelessWidget {
  /// Whether the update is optional or mandatory.
  ///
  /// If `true`, the dialog will show a "Skip for now" button allowing users
  /// to dismiss the dialog. If `false`, the dialog will only show the update
  /// button, making the update mandatory.
  final bool isOptional;

  /// Creates a [VersionDialogWidget] with the specified version and update type.
  ///
  ///  [isOptional] parameters are required:
  /// - [isOptional]: Whether users can skip this update
  const VersionDialogWidget({
    super.key,
    required this.isOptional,
  });

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
                  SvgPicture.asset(
                    'assets/images/update_app_ic.svg',
                    height: 85,
                    width: 85,
                  ),
                  const SizedBox(height: 15),
                  Column(
                    children: [
                      CustomText(
                        maxLines: 3,
                        textAlign: TextAlign.center,
                        title: localize.versionDialogUpdateAvailable,
                        color: const Color(0xff191C1F),
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                      const SizedBox(height: 14),
                      CustomText(
                        maxLines: 3,
                        textAlign: TextAlign.center,
                        title:
                            "${localize.versionDialogNewVersion} ${localize.versionDialogUpdateSecondeSubTitle}",
                        fontSize: 14,
                        color: const Color(0xff191C1F),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  Material(
                    borderRadius: BorderRadius.circular(5),
                    color: const Color(0xff008480),
                    child: InkWell(
                      onTap: () async {
                        await FirebaseAnalyticsRepository.logEvent(
                            name: "OpenStoreFromVersionDialog");

                        await OpenStore.instance.open(
                          appStoreId: AppConstant.iOSAppId,
                          androidAppBundleId: AppConstant.androidAppId,
                        );
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(top: 14, bottom: 14),
                        child: Container(
                          alignment: Alignment.center,
                          child: CustomText(
                            title: localize.versionDialogUpdateNow,
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  if (isOptional)
                    InkWell(
                      onTap: () {
                        FirebaseAnalyticsRepository.logEvent(
                            name: "DismissVersionDialog");

                        Navigator.of(context, rootNavigator: true).pop();
                      },
                      child: Container(
                        alignment: Alignment.center,
                        child: CustomText(
                          title: localize.versionDialogSkipForNow,
                          color: const Color(0xff0059FF),
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )
                  else
                    const SizedBox.shrink(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
