import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:islam_app/shared_widgets/custom_button.dart';
import 'package:islam_app/shared_widgets/custom_text.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class MushafCopyTile extends StatelessWidget {
  final String? title;
  final String? description;
  final String? previewImage;
  final String language;
  final bool downloadButtonAvaliable;
  final bool useButtonAvaliable;
  final Function() onDownloadPressed;
  final Function() onUsePressed;

  const MushafCopyTile({
    super.key,
    required this.previewImage,
    required this.title,
    required this.description,
    required this.language,
    required this.onDownloadPressed,
    required this.onUsePressed,
    required this.downloadButtonAvaliable,
    required this.useButtonAvaliable,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8, right: 8, top: 8),
      child: ClipRect(
        child: Banner(
          message: language,
          location: BannerLocation.topEnd,
          color: Colors.red,
          textStyle: const TextStyle(fontSize: 12),
          child: Container(
            margin: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              border: Border.all(
                color: const Color(0xff292929),
                width: 2,
              ),
              borderRadius: const BorderRadius.all(Radius.circular(5.0)),
            ),
            child: Column(
              children: [
                CustomText(
                  title: title ?? "",
                  fontSize: 22,
                  textColor: const Color(0xff034061),
                  fontWeight: FontWeight.bold,
                ),
                CustomText(
                  title: description ?? "",
                  fontSize: 16,
                  textColor: const Color(0xff034061),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CachedNetworkImage(
                    imageUrl: previewImage!,
                    progressIndicatorBuilder:
                        (context, url, downloadProgress) =>
                            CircularProgressIndicator(
                                value: downloadProgress.progress),
                    errorWidget: (context, url, error) =>
                        const Icon(Icons.error),
                  ),
                ),
                CustomButton(
                  enableButton: downloadButtonAvaliable,
                  padding: const EdgeInsets.all(8),
                  buttonTitle: AppLocalizations.of(context)!.download,
                  onTap: () {
                    onDownloadPressed();
                  },
                ),
                CustomButton(
                  enableButton: useButtonAvaliable,
                  padding: const EdgeInsets.only(left: 8, right: 8, bottom: 8),
                  buttonTitle: AppLocalizations.of(context)!.use,
                  onTap: () {
                    onUsePressed();
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
