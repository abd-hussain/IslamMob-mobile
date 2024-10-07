import 'package:flutter/material.dart';
import 'package:islam_app/shared_widgets/custom_button.dart';
import 'package:islam_app/shared_widgets/custom_text.dart';

class MushafCopyTile extends StatelessWidget {
  final String? title;
  final String? description;
  final String? previewImage;
  final String language;

  const MushafCopyTile({
    super.key,
    required this.previewImage,
    required this.title,
    required this.description,
    required this.language,
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
                  child: Image.network(
                    previewImage!,
                  ),
                ),
                CustomButton(
                    enableButton: true,
                    padding: const EdgeInsets.all(8),
                    buttonTitle: "Download",
                    onTap: () {}),
                CustomButton(
                    enableButton: false,
                    padding:
                        const EdgeInsets.only(left: 8, right: 8, bottom: 8),
                    buttonTitle: "Use",
                    onTap: () {})
              ],
            ),
          ),
        ),
      ),
    );
  }
}
