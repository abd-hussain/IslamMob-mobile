import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:islam_app/l10n/gen/app_localizations.dart';
import 'package:islam_app/shared_widgets/custom_button.dart';
import 'package:islam_app/shared_widgets/custom_text.dart';

/// A tile widget that displays information about a Quran print option.
///
/// This widget shows a print option with its title, description, preview image,
/// and action buttons for downloading or using the print. It features a language
/// banner in the top-right corner to indicate the print's language.
///
/// The tile includes:
/// - Language banner indicator
/// - Title and description text
/// - Preview image with caching
/// - Download and use action buttons
/// - Conditional button availability based on state
class PrintTileView extends StatelessWidget {
  /// The language of the Quran print, displayed in a banner.
  final String language;

  /// The title of the print option.
  ///
  /// If null, an empty string will be displayed.
  final String? title;

  /// A description of the print option.
  ///
  /// If null, an empty string will be displayed. The description
  /// is limited to 4 lines and centered.
  final String? description;

  /// URL of the preview image for the print.
  ///
  /// If null, an empty string will be used, which may result in
  /// an error widget being displayed.
  final String? previewImage;

  /// Whether the download button should be enabled.
  ///
  /// Defaults to false if not specified.
  final bool downloadButtonAvailable;

  /// Whether the use button should be enabled.
  ///
  /// Defaults to false if not specified.
  final bool useButtonAvailable;

  /// Callback function executed when the download button is pressed.
  final VoidCallback onDownloadPressed;

  /// Callback function executed when the use button is pressed.
  final VoidCallback onUsePressed;

  /// Creates a [PrintTileView] widget.
  ///
  /// The [language], [onDownloadPressed], and [onUsePressed] parameters are required.
  /// The [downloadButtonAvailable] and [useButtonAvailable] default to false.
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
    BuildContext context,
    IslamMobLocalizations localize,
  ) {
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
