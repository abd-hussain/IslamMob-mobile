import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:islam_app/l10n/gen/app_localizations.dart';
import 'package:islam_app/presentation/add_edit_post/bloc/add_edit_post_bloc.dart';
import 'package:islam_app/presentation/report_suggestions/widgets/attachmen_bottom_sheet.dart';

class AddEditPostAttachments extends StatelessWidget {
  const AddEditPostAttachments({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: [
          _buildAttachmentItem(
            context,
            stateSelector: (state) => state.attachment,
            updateAttachment: (image) =>
                AddEditPostEvent.updateAttachment(value: image),
          ),
          const Expanded(child: SizedBox()),
        ],
      ),
    );
  }

  Widget _buildAttachmentItem(
    BuildContext context, {
    required dynamic Function(AddEditPostState) stateSelector,
    required AddEditPostEvent Function(File?) updateAttachment,
  }) {
    return BlocBuilder<AddEditPostBloc, AddEditPostState>(
      buildWhen: (previous, current) =>
          stateSelector(previous) != stateSelector(current),
      builder: (context, state) {
        final attachment = stateSelector(state);
        final existingUrl = state.existingAttachmentUrl;
        return InkWell(
          onTap: () {
            _showAttachmentBottomSheet(
              context,
              attachment: attachment,
              updateAttachment: updateAttachment,
            );
          },
          child: Stack(
            children: [
              Image.asset(
                "assets/images/attach_placeholder.png",
                width: 70,
                height: 70,
              ),
              if (attachment != null)
                Padding(
                  padding: const EdgeInsets.all(5),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.file(
                      attachment as File,
                      width: 60,
                      height: 60,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              if (attachment == null && existingUrl != null)
                Padding(
                  padding: const EdgeInsets.all(5),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: CachedNetworkImage(
                      imageUrl: existingUrl,
                      width: 60,
                      height: 60,
                      fit: BoxFit.cover,
                      placeholder: (context, url) => const SizedBox(
                        width: 60,
                        height: 60,
                        child: Center(
                          child: CircularProgressIndicator(strokeWidth: 2),
                        ),
                      ),
                      errorWidget: (context, url, error) => const Icon(
                        Icons.broken_image,
                        color: Colors.redAccent,
                      ),
                    ),
                  ),
                ),
            ],
          ),
        );
      },
    );
  }

  void _showAttachmentBottomSheet(
    BuildContext context, {
    required dynamic attachment,
    required AddEditPostEvent Function(File?) updateAttachment,
  }) {
    final bloc = context.read<AddEditPostBloc>();
    final localize = IslamMobLocalizations.of(context);

    AttachmentBottomSheetsUtil().addImageBottomSheet(
      context: context,
      image: attachment != null,
      title1: localize.photosetting,
      title2: localize.setphoto,
      deleteCallBack: () {
        bloc.add(updateAttachment(null));
        Navigator.pop(context);
      },
      cameraCallBack: () async {
        final image = await bloc.pickImage(ImageSource.camera);
        if (image != null && image.path.isNotEmpty && context.mounted) {
          bloc.add(updateAttachment(image));
        }
      },
      galleryCallBack: () async {
        final image = await bloc.pickImage(ImageSource.gallery);
        if (image != null && image.path.isNotEmpty && context.mounted) {
          bloc.add(updateAttachment(image));
        }
      },
    );
  }
}
