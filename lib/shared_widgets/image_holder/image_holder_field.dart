import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:islam_app/l10n/gen/app_localizations.dart';
import 'package:islam_app/shared_widgets/custom_text.dart';
import 'package:islam_app/shared_widgets/image_holder/bloc/image_holder_bloc.dart';
import 'package:islam_app/shared_widgets/image_holder/image_holder_bottmsheet.dart';
import 'package:islam_app/shared_widgets/optimized_image_widget.dart';

class ImageHolderField extends StatefulWidget {
  const ImageHolderField({
    super.key,
    required this.onImageChanged,
    required this.initialFile,
    required this.imageUrl,
    this.height = 120,
    this.width = 120,
  });

  /// Called when user selects or deletes an image.
  /// Returns [File] if image was picked, or `null` if deleted.
  final ValueChanged<File?> onImageChanged;

  /// Optional preloaded local file
  final File? initialFile;

  /// Optional image URL to display initially (if [initialFile] is null)
  final String? imageUrl;

  final double height;
  final double width;

  @override
  State<ImageHolderField> createState() => _ImageHolderFieldState();
}

class _ImageHolderFieldState extends State<ImageHolderField> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => ImageHolderBloc()..add(ImageHolderEvent.initialImage(widget.initialFile, widget.imageUrl)),
      child: BlocBuilder<ImageHolderBloc, ImageHolderState>(
        builder: (blocContext, state) {
          return InkWell(
            onTap: () => _showImageOptions(blocContext),
            child: Container(
              height: widget.height,
              width: widget.width,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: const Color(0xffE8E8E8)),
              ),
              child: _buildImageContent(context, state),
            ),
          );
        },
      ),
    );
  }

  Widget _buildImageContent(BuildContext context, ImageHolderState state) {
    if (state.imageFile != null || (state.imageUrl != null && state.imageUrl!.isNotEmpty)) {
      return OptimizedImageWidget(
        imageFile: state.imageFile,
        imageUrl: state.imageUrl,
        width: widget.width,
        height: widget.height,

        borderRadius: BorderRadius.circular(10),
        maxWidthDiskCache: 400, // Smaller cache for profile images
        maxHeightDiskCache: 400,
      );
    } else {
      return _buildPlaceholderContent(context);
    }
  }

  /// Builds the placeholder content when no image is available
  Widget _buildPlaceholderContent(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomText(
          title: IslamMobLocalizations.of(context).profilePic,
          fontSize: 12,
          textAlign: TextAlign.center,
          color: Colors.black,
        ),
        const SizedBox(height: 4),
        const Icon(Icons.add, color: Color(0xff444444)),
      ],
    );
  }

  void _showImageOptions(BuildContext context) {
    final bloc = context.read<ImageHolderBloc>();
    final hasImage = bloc.state.imageFile != null || bloc.state.imageUrl != null;

    ImageHolderBottmsheet().show(
      context: context,
      image: hasImage,
      deleteCallBack: () {
        bloc.add(const ImageHolderEvent.onRemoveImage());
        widget.onImageChanged(null);
        Navigator.pop(context);
      },
      cameraCallBack: () async {
        final file = await _pickImage(ImageSource.camera);
        if (file.path.isEmpty) {
          return;
        }
        bloc.add(ImageHolderEvent.onUpdateImage(file));
        widget.onImageChanged(file);
      },
      galleryCallBack: () async {
        final file = await _pickImage(ImageSource.gallery);
        if (file.path.isEmpty) {
          return;
        }
        bloc.add(ImageHolderEvent.onUpdateImage(file));
        widget.onImageChanged(file);
      },
    );
  }

  /// Picks an image from camera or gallery with optimization
  Future<File> _pickImage(ImageSource source) async {
    try {
      final image = await ImagePicker().pickImage(
        source: source,
        // Add image quality optimization
        imageQuality: 85, // Reduce file size while maintaining good quality
        maxWidth: 1024, // Limit image dimensions
        maxHeight: 1024,
        // Enable compression
        requestFullMetadata: false, // Faster processing
      );
      
      if (image == null) {
        return File("");
      }
      
      return File(image.path);
    } catch (e) {
      // Handle picker errors gracefully
      debugPrint('Error picking image: $e');
      return File("");
    }
  }
}
