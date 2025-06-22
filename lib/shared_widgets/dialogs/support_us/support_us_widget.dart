import 'package:advertisments_manager/advertisments_manager.dart';
import 'package:firebase_manager/firebase_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islam_app/l10n/gen/app_localizations.dart';
import 'package:islam_app/shared_widgets/custom_text.dart';
import 'package:islam_app/shared_widgets/dialogs/support_us/bloc/support_us_dialog_bloc.dart';

/// A dialog widget that encourages users to support the app.
///
/// This widget displays a support dialog with donation information and
/// an option to watch rewarded ads to support the app. It includes
/// localized text, images, and interactive buttons for user engagement.
class SupportUsDialogWidget extends StatelessWidget {
  /// Creates a [SupportUsDialogWidget].
  ///
  /// The [key] parameter is optional and can be used to control how one widget
  /// replaces another widget in the tree.
  const SupportUsDialogWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final localize = IslamMobLocalizations.of(context);

    return BlocProvider(
      create: (context) =>
          SupportUsDialogBloc()
            ..add(SupportUsDialogEvent.initializeRewardedAd()),
      child: Container(
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
                      title: localize.donatepopuptitle,
                      color: const Color(0xff191C1F),
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                    Image.asset('assets/images/donate_popup.png', height: 250),
                    const SizedBox(height: 15),
                    CustomText(
                      maxLines: 5,
                      textAlign: TextAlign.center,
                      title: localize.donatepopupmessage,
                      fontSize: 16,
                      color: const Color(0xff191C1F),
                    ),
                    const SizedBox(height: 15),
                    CustomText(
                      maxLines: 3,
                      textAlign: TextAlign.center,
                      title: localize.donatepopupmessage2,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: const Color(0xff191C1F),
                    ),
                    const SizedBox(height: 16),
                    BlocBuilder<SupportUsDialogBloc, SupportUsDialogState>(
                      buildWhen: (previous, current) =>
                          previous.rewardedAdExsist != current.rewardedAdExsist,
                      builder: (context, state) {
                        return Material(
                          borderRadius: BorderRadius.circular(5),
                          color: const Color(0xff008480),
                          child: (state.rewardedAdExsist)
                              ? InkWell(
                                  onTap: () async {
                                    Navigator.of(
                                      context,
                                      rootNavigator: true,
                                    ).pop();
                                    await FirebaseAnalyticsRepository.logEvent(
                                      name: "showRewardedAdFromPopup",
                                    );
                                    await RewarderAds.showRewardedAd();
                                    // ignore: use_build_context_synchronously
                                    context.read<SupportUsDialogBloc>().add(
                                      SupportUsDialogEvent.updateRewardedAd(
                                        RewarderAds.mainRewardedAd != null,
                                      ),
                                    );
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                      top: 14,
                                      bottom: 14,
                                    ),
                                    child: Container(
                                      alignment: Alignment.center,
                                      child: CustomText(
                                        title: localize.openAdvertisment,
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                )
                              : CustomText(
                                  maxLines: 3,
                                  textAlign: TextAlign.center,
                                  title: localize.noAdsToShow,
                                  fontSize: 18,
                                  color: const Color(0xff191C1F),
                                ),
                        );
                      },
                    ),
                    const SizedBox(height: 16),
                    InkWell(
                      onTap: () {
                        FirebaseAnalyticsRepository.logEvent(
                          name: "DismissSupportUsDialog",
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
      ),
    );
  }
}
