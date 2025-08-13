import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:islam_app/l10n/gen/app_localizations.dart';
import 'package:islam_app/presentation/report_suggestions/widgets/attachmen_bottom_sheet.dart';
import 'package:islam_app/shared_widgets/big_textfield.dart';
import 'package:islam_app/shared_widgets/custom_button.dart';
import 'package:islam_app/shared_widgets/custom_text.dart';

class AddPostDetailsView extends StatefulWidget {
  final Function({required String content, File? postImg}) addPostCallback;
  const AddPostDetailsView({super.key, required this.addPostCallback});

  @override
  State<AddPostDetailsView> createState() => _AddPostDetailsViewState();
}

class _AddPostDetailsViewState extends State<AddPostDetailsView> {
  TextEditingController textController = TextEditingController();
  File? image;

  @override
  Widget build(BuildContext context) {
    final localize = IslamMobLocalizations.of(context);

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomText(
            title: localize.add_post,
            fontSize: 18,
            fontWeight: FontWeight.bold,
            textAlign: TextAlign.center,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8, right: 8, top: 8),
            child: BigTextfield(
              bioController: textController,
              title: localize.whatdoyouwanttoask,
              onChanged: (text) {
                setState(() {});
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: InkWell(
              onTap: () {
                AttachmentBottomSheetsUtil().addImageBottomSheet(
                  context: context,
                  image: image != null,
                  title1: localize.photosetting,
                  title2: localize.setphoto,
                  deleteCallBack: () {
                    image = null;
                    Navigator.pop(context);
                  },
                  cameraCallBack: () async {
                    image = await pickImage(ImageSource.camera);
                    if (image == null || image!.path.isEmpty) {
                      return;
                    }
                    setState(() {});
                  },
                  galleryCallBack: () async {
                    image = await pickImage(ImageSource.gallery);
                    if (image == null || image!.path.isEmpty) {
                      return;
                    }
                    setState(() {});
                  },
                );
              },
              child: Stack(
                children: [
                  Image.asset(
                    "assets/images/attach_placeholder.png",
                    width: 70,
                    height: 70,
                  ),
                  if (image != null)
                    Padding(
                      padding: const EdgeInsets.all(5),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.file(
                          image!,
                          width: 60,
                          height: 60,
                          fit: BoxFit.cover,
                        ),
                      ),
                    )
                  else
                    const SizedBox(),
                ],
              ),
            ),
          ),
          CustomButton(
            isEnabled: _validateFields(),
            onTap: () {
              widget.addPostCallback(
                content: textController.text,
                postImg: image,
              );
              Navigator.of(context).pop();
            },
          ),
          const SizedBox(height: 16),
        ],
      ),
    );
  }

  bool _validateFields() {
    if (image == null && textController.text.isEmpty) {
      return false;
    }
    return true;
  }

  Future<File> pickImage(ImageSource source) async {
    final image = await ImagePicker().pickImage(source: source);
    return File(image?.path ?? "");
  }
}
