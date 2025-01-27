import 'package:flutter/material.dart';
import 'package:islam_app/l10n/gen/app_localizations.dart';
import 'package:islam_app/shared_widgets/custom_text.dart';

class AttachmentBottomSheetsUtil {
  Future addImageBottomSheet(
      {required BuildContext context,
      required bool? image,
      required String title1,
      required String title2,
      required VoidCallback galleryCallBack,
      required VoidCallback cameraCallBack,
      required VoidCallback deleteCallBack}) {
    final localize = IslamMobLocalizations.of(context);

    return showModalBottomSheet(
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(25),
        ),
      ),
      context: context,
      builder: (context) {
        return Padding(
          padding: const EdgeInsets.all(18),
          child: image!
              ? Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    CustomText(
                      title: title1,
                      color: Colors.black,
                      fontSize: 18,
                    ),
                    const SizedBox(height: 27),
                    TextButton(
                      onPressed: () {
                        deleteCallBack();
                      },
                      child: Row(
                        children: [
                          const Icon(
                            Icons.hide_image,
                            color: Color(0xff008480),
                          ),
                          const SizedBox(width: 10),
                          CustomText(
                            title: localize.pickimageremoveimage,
                            color: Colors.red,
                            fontSize: 16,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 22),
                  ],
                )
              : Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    CustomText(
                      title: title2,
                      color: Colors.black,
                      fontSize: 18,
                    ),
                    const SizedBox(height: 27),
                    SizedBox(
                      height: 100,
                      child: Column(
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.of(context).pop();
                              galleryCallBack();
                            },
                            child: SizedBox(
                              height: 50,
                              child: Row(
                                children: [
                                  const SizedBox(
                                    width: 40,
                                    height: 40,
                                    child: Icon(
                                      Icons.image_outlined,
                                      color: Color(0xff444444),
                                    ),
                                  ),
                                  const SizedBox(width: 8),
                                  Expanded(
                                    child: CustomText(
                                      title: localize.pickimagefromstudio,
                                      fontSize: 16,
                                      color: const Color(0xff444444),
                                    ),
                                  ),
                                  const Icon(
                                    Icons.arrow_forward_ios,
                                    size: 15,
                                  )
                                ],
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.of(context).pop();
                              cameraCallBack();
                            },
                            child: SizedBox(
                              height: 50,
                              child: Row(
                                children: [
                                  const SizedBox(
                                      width: 40,
                                      height: 40,
                                      child: Icon(
                                        Icons.camera_alt_outlined,
                                        color: Color(0xff444444),
                                      )),
                                  const SizedBox(width: 8),
                                  Expanded(
                                    child: CustomText(
                                      title: localize.pickimagefromcamera,
                                      fontSize: 16,
                                      color: const Color(0xff444444),
                                    ),
                                  ),
                                  const Icon(
                                    Icons.arrow_forward_ios,
                                    size: 15,
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 22),
                  ],
                ),
        );
      },
    );
  }
}
