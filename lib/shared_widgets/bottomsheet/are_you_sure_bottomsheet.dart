import 'package:flutter/material.dart';
import 'package:islam_app/l10n/gen/app_localizations.dart';
import 'package:islam_app/shared_widgets/custom_text.dart';

class AreYouSureBottomsheet {
  Future<void> buttomSheet({
    required BuildContext context,
    required String message,
    required VoidCallback sure,
  }) {
    final localize = IslamMobLocalizations.of(context);
    return showModalBottomSheet(
      enableDrag: false,
      useRootNavigator: true,
      context: context,
      backgroundColor: Colors.transparent,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      builder: (context) {
        return SafeArea(
          child: SizedBox(
            height: 175,
            child: Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Column(
                children: [
                  Container(
                    color: Colors.white,
                    height: 120,
                    width: double.infinity,
                    child: Column(
                      children: [
                        const SizedBox(height: 20),
                        Padding(
                          padding: const EdgeInsets.only(left: 8, right: 8),
                          child: CustomText(
                            title: message,
                            color: const Color(0xff191C1F),
                            maxLines: 3,
                            fontSize: 16,
                          ),
                        ),
                        const SizedBox(height: 20),
                        const Divider(height: 1, color: Color(0xffEBEBEB)),
                        Flexible(
                          fit: FlexFit.tight,
                          child: Material(
                            borderRadius: BorderRadius.circular(8),
                            child: InkWell(
                              borderRadius: BorderRadius.circular(8),
                              onTap: () {
                                Navigator.pop(context);
                                sure();
                              },
                              child: Container(
                                alignment: Alignment.center,
                                width: double.infinity,
                                child: CustomText(
                                  title: localize.sure,
                                  color: const Color(0xffE74C4C),
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10),
                  Flexible(
                    child: Material(
                      borderRadius: BorderRadius.circular(8),
                      child: InkWell(
                        borderRadius: BorderRadius.circular(8),
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Container(
                          alignment: Alignment.center,
                          color: Colors.white,
                          height: 50,
                          width: double.infinity,
                          child: CustomText(
                            title: localize.cancel,
                            color: const Color(0xff1A59B9),
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
