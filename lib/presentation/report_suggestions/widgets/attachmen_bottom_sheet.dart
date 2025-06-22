import 'package:flutter/material.dart';
import 'package:islam_app/l10n/gen/app_localizations.dart';
import 'package:islam_app/shared_widgets/custom_text.dart';

/// A utility class that provides bottom sheet dialogs for image attachment operations.
///
/// This class contains methods to display modal bottom sheets that allow users
/// to interact with image attachments in reports and suggestions. It provides
/// different UI states based on whether an image is already attached or not.
///
/// The bottom sheets support:
/// - Adding images from gallery or camera
/// - Removing existing images
/// - Localized text and user-friendly interface
/// - Consistent styling with the app theme
class AttachmentBottomSheetsUtil {
  /// Displays a modal bottom sheet for image attachment operations.
  ///
  /// This method shows different UI based on the [image] parameter:
  /// - If [image] is true: Shows options to remove the existing image
  /// - If [image] is false: Shows options to add image from gallery or camera
  ///
  /// Parameters:
  /// - [context]: The build context for showing the bottom sheet
  /// - [image]: Whether an image is currently attached (true) or not (false)
  /// - [title1]: Title text shown when an image exists (for removal options)
  /// - [title2]: Title text shown when no image exists (for adding options)
  /// - [galleryCallBack]: Callback function executed when user selects gallery
  /// - [cameraCallBack]: Callback function executed when user selects camera
  /// - [deleteCallBack]: Callback function executed when user removes image
  ///
  /// Returns a [Future<void>] that completes when the bottom sheet is dismissed.
  ///
  /// The bottom sheet automatically handles navigation and calls the appropriate
  /// callback based on user selection. Gallery and camera options automatically
  /// close the bottom sheet before executing the callback.
  Future<void> addImageBottomSheet({
    required BuildContext context,
    required bool? image,
    required String title1,
    required String title2,
    required VoidCallback galleryCallBack,
    required VoidCallback cameraCallBack,
    required VoidCallback deleteCallBack,
  }) {
    final localize = IslamMobLocalizations.of(context);

    return showModalBottomSheet(
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(25)),
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
                                  const Icon(Icons.arrow_forward_ios, size: 15),
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
                                    ),
                                  ),
                                  const SizedBox(width: 8),
                                  Expanded(
                                    child: CustomText(
                                      title: localize.pickimagefromcamera,
                                      fontSize: 16,
                                      color: const Color(0xff444444),
                                    ),
                                  ),
                                  const Icon(Icons.arrow_forward_ios, size: 15),
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
