import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:islam_app/l10n/gen/app_localizations.dart';
import 'package:islam_app/shared_widgets/custom_button.dart';
import 'package:islam_app/shared_widgets/custom_text.dart';

class PrintTileView extends StatelessWidget {
  final String language;
  final String? title;
  final String? description;
  final String? previewImage;
  final bool downloadButtonAvailable;
  final bool useButtonAvailable;
  final VoidCallback onDownloadPressed;
  final VoidCallback onUsePressed;

  const PrintTileView({
    super.key,
    required this.language,
    this.title,
    this.description,
    this.previewImage,
    this.downloadButtonAvailable = false,
    this.useButtonAvailable = false,
    required this.onDownloadPressed,
    required this.onUsePressed,
  });

  @override
  Widget build(BuildContext context) {
    final localize = IslamMobLocalizations.of(context);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4),
      child: ClipRect(
        child: Banner(
          message: language,
          location: BannerLocation.topEnd,
          color: Colors.redAccent,
          textStyle: const TextStyle(fontSize: 12),
          child: Container(
            margin: const EdgeInsets.all(8),
            decoration: _buildContainerDecoration(),
            child: Column(
              children: [
                const SizedBox(height: 4),
                _buildTitle(),
                _buildDescription(),
                _buildPreviewImage(),
                _buildDownloadButton(context, localize),
                _buildUseButton(context, localize),
              ],
            ),
          ),
        ),
      ),
    );
  }

  BoxDecoration _buildContainerDecoration() {
    return BoxDecoration(
      border: Border.all(color: const Color(0xff292929)),
      borderRadius: const BorderRadius.all(Radius.circular(5)),
    );
  }

  Widget _buildTitle() {
    return CustomText(
      title: title ?? "",
      fontSize: 22,
      color: const Color(0xff034061),
      fontWeight: FontWeight.bold,
    );
  }

  Widget _buildDescription() {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: CustomText(
        title: description ?? "",
        fontSize: 16,
        maxLines: 4,
        textAlign: TextAlign.center,
        color: const Color(0xff034061),
      ),
    );
  }

  Widget _buildPreviewImage() {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: CachedNetworkImage(
        imageUrl: previewImage ?? "",
        placeholder: (context, url) => const CircularProgressIndicator(),
        errorWidget: (context, url, error) => const Icon(Icons.error),
      ),
    );
  }

  Widget _buildDownloadButton(
      BuildContext context, IslamMobLocalizations localize) {
    return CustomButton(
      isEnabled: downloadButtonAvailable,
      padding: const EdgeInsets.all(8),
      title: localize.download,
      onTap: onDownloadPressed,
    );
  }

  Widget _buildUseButton(BuildContext context, IslamMobLocalizations localize) {
    return CustomButton(
      isEnabled: useButtonAvailable,
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
      title: localize.use,
      onTap: onUsePressed,
    );
  }
}
