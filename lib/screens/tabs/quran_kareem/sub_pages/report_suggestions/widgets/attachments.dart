import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:islam_app/screens/tabs/quran_kareem/sub_pages/report_suggestions/bloc/report_and_suggestion_bloc.dart';
import 'package:islam_app/screens/tabs/quran_kareem/sub_pages/report_suggestions/widgets/attachmen_bottom_sheet.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ReportSuggestionAttachment extends StatelessWidget {
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
                      attachment,
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
    AttachmentBottomSheetsUtil().addImageBottomSheet(
      context: context,
      image: attachment != null,
      title1: AppLocalizations.of(context)!.photosetting,
      title2: AppLocalizations.of(context)!.setphoto,
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
