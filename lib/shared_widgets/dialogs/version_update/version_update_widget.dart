import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:islam_app/domain/constants/app_constant.dart';
import 'package:firebase_manager/firebase_manager.dart';
import 'package:islam_app/shared_widgets/custom_text.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:open_store/open_store.dart';

class VersionDialogWidget extends StatelessWidget {
  final String version;
  final bool isOptional;

  const VersionDialogWidget({
    super.key,
    required this.isOptional,
    required this.version,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
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
                        title: AppLocalizations.of(context)!
                            .versionDialogUpdateAvailable,
                        color: const Color(0xff191C1F),
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                      const SizedBox(height: 14),
                      CustomText(
                        maxLines: 3,
                        textAlign: TextAlign.center,
                        title:
                            "${AppLocalizations.of(context)!.versionDialogNewVersion} $version ${AppLocalizations.of(context)!.versionDialogUpdateSecondeSubTitle}",
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
                        FirebaseAnalyticsRepository.logEvent(
                            name: "OpenStoreFromVersionDialog",
                            parameters: {"version": version});

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
                            title: AppLocalizations.of(context)!
                                .versionDialogUpdateNow,
                            color: Colors.white,
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
                            name: "DismissVersionDialog",
                            parameters: {"version": version});

                        Navigator.of(context, rootNavigator: true).pop();
                      },
                      child: Container(
                        alignment: Alignment.center,
                        child: CustomText(
                          title: AppLocalizations.of(context)!
                              .versionDialogSkipForNow,
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
