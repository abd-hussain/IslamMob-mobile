import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:islam_app/l10n/gen/app_localizations.dart';
import 'package:islam_app/presentation/report_suggestions/bloc/report_and_suggestion_bloc.dart';
import 'package:islam_app/presentation/report_suggestions/widgets/attachmen_bottom_sheet.dart';

/// A widget that displays attachment options for reports and suggestions.
///
/// This widget provides a horizontal row of three attachment slots where users
/// can add images to their reports or suggestions. Each slot supports:
/// - Adding images from camera or gallery
/// - Displaying selected images as thumbnails
/// - Removing attached images
/// - Visual feedback with placeholder images
///
/// The widget integrates with [ReportAndSuggestionBloc] to manage attachment
/// state and uses a bottom sheet interface for image selection options.
class ReportSuggestionAttachment extends StatelessWidget {
  /// Creates a [ReportSuggestionAttachment] widget.
  ///
  /// This widget automatically manages three attachment slots and provides
  /// a user-friendly interface for adding images to reports and suggestions.
  const ReportSuggestionAttachment({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: [
          _buildAttachmentItem(
            context,
            stateSelector: (state) => state.attach1,
            updateEvent: (image) =>
                ReportAndSuggestionEvent.updateAttachment1(value: image),
          ),
          const SizedBox(width: 8),
          _buildAttachmentItem(
            context,
            stateSelector: (state) => state.attach2,
            updateEvent: (image) =>
                ReportAndSuggestionEvent.updateAttachment2(value: image),
          ),
          const SizedBox(width: 8),
          _buildAttachmentItem(
            context,
            stateSelector: (state) => state.attach3,
            updateEvent: (image) =>
                ReportAndSuggestionEvent.updateAttachment3(value: image),
          ),
          const Expanded(child: SizedBox()),
        ],
      ),
    );
  }

  Widget _buildAttachmentItem(
    BuildContext context, {
    required dynamic Function(ReportAndSuggestionState) stateSelector,
    required ReportAndSuggestionEvent Function(File?) updateEvent,
  }) {
    return BlocBuilder<ReportAndSuggestionBloc, ReportAndSuggestionState>(
      buildWhen: (previous, current) =>
          stateSelector(previous) != stateSelector(current),
      builder: (context, state) {
        final attachment = stateSelector(state);
        return InkWell(
          onTap: () {
            _showAttachmentBottomSheet(
              context,
              attachment: attachment,
              updateEvent: updateEvent,
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
            ],
          ),
        );
      },
    );
  }

  void _showAttachmentBottomSheet(
    BuildContext context, {
    required dynamic attachment,
    required ReportAndSuggestionEvent Function(File?) updateEvent,
  }) {
    final bloc = context.read<ReportAndSuggestionBloc>();
    final localize = IslamMobLocalizations.of(context);

    AttachmentBottomSheetsUtil().addImageBottomSheet(
      context: context,
      image: attachment != null,
      title1: localize.photosetting,
      title2: localize.setphoto,
      deleteCallBack: () {
        bloc.add(updateEvent(null));
        Navigator.pop(context);
      },
      cameraCallBack: () async {
        final image = await bloc.pickImage(ImageSource.camera);
        if (image != null && image.path.isNotEmpty && context.mounted) {
          bloc.add(updateEvent(image));
        }
      },
      galleryCallBack: () async {
        final image = await bloc.pickImage(ImageSource.gallery);
        if (image != null && image.path.isNotEmpty && context.mounted) {
          bloc.add(updateEvent(image));
        }
      },
    );
  }
}
