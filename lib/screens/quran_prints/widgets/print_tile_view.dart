import 'package:flutter/material.dart';
import 'package:islam_app/shared_widgets/custom_button.dart';
import 'package:islam_app/shared_widgets/custom_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class PrintTileView extends StatelessWidget {
  final String language;
  final String? title;
  final String? description;
  final String? previewImage;
  final bool downloadButtonAvaliable;
  final bool useButtonAvaliable;
  final Function() onDownloadPressed;
  final Function() onUsePressed;
  const PrintTileView({
    super.key,
    required this.language,
    required this.title,
    required this.description,
    required this.previewImage,
    required this.downloadButtonAvaliable,
    required this.useButtonAvaliable,
    required this.onDownloadPressed,
    required this.onUsePressed,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8, right: 8, top: 8),
      child: ClipRect(
        child: Banner(
          message: language,
          location: BannerLocation.topEnd,
          color: Colors.redAccent,
          textStyle: const TextStyle(fontSize: 12),
          child: Container(
            margin: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              border: Border.all(
                color: const Color(0xff292929),
                width: 2,
              ),
              borderRadius: const BorderRadius.all(Radius.circular(5)),
            ),
            child: Column(
              children: [
                const SizedBox(height: 4),
                CustomText(
                  title: title ?? "",
                  fontSize: 22,
                  color: const Color(0xff034061),
                  fontWeight: FontWeight.bold,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CustomText(
                    title: description ?? "",
                    fontSize: 16,
                    maxLines: 4,
                    textAlign: TextAlign.center,
                    color: const Color(0xff034061),
                  ),
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
                  isEnabled: downloadButtonAvaliable,
                  padding: const EdgeInsets.all(8),
                  title: AppLocalizations.of(context)!.download,
                  onTap: () => onDownloadPressed(),
                ),
                CustomButton(
                  isEnabled: useButtonAvaliable,
                  padding: const EdgeInsets.only(left: 8, right: 8, bottom: 8),
                  title: AppLocalizations.of(context)!.use,
                  onTap: () => onUsePressed(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
