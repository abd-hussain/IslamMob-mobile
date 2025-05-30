import 'package:flutter/material.dart';
import 'package:islam_app/domain/constants/app_constant.dart';
import 'package:islam_app/domain/model/hajj_omrah_data.dart';
import 'package:islam_app/my_app/islam_mob_app/routes.dart';
import 'package:islam_app/shared_widgets/custom_text.dart';

class HajjOmrahDetailsScreen extends StatelessWidget {
  const HajjOmrahDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Map<String, dynamic> arguments =
        ModalRoute.of(context)!.settings.arguments! as Map<String, dynamic>;
    final HajjOmrahData data = arguments["data"] ?? "";
    final bool isRtlLanguage = arguments["isRtlLanguage"] ?? false;
    final List<String>? detailsTitle =
        isRtlLanguage ? data.details["ar"] : data.details["en"];
    return Scaffold(
      backgroundColor: const Color(0xfffff2e9),
      appBar: AppBar(
        backgroundColor: const Color(0xff292929),
        iconTheme: const IconThemeData(color: Colors.white),
        title: CustomText(
          title: isRtlLanguage ? data.title.ar : data.title.en,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(data.mainImagePath, fit: BoxFit.cover),
            const SizedBox(height: 10),
            ListView.builder(
              itemBuilder: (ctx, index) {
                return Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  child: textOrLink(
                      context: context,
                      text: detailsTitle?[index] ?? "",
                      detailsTitle: detailsTitle,
                      index: index,
                      title: isRtlLanguage ? data.title.ar : data.title.en),
                );
              },
              itemCount: detailsTitle?.length ?? 0,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
            ),
          ],
        ),
      ),
    );
  }

  Widget textOrLink(
      {required String text,
      required List<String>? detailsTitle,
      required int index,
      required String title,
      required BuildContext context}) {
    if (text.startsWith("http")) {
      return InkWell(
        onTap: () {
          // Handle link tap, e.g., open in browser
          Navigator.pushNamed(context, RoutesConstants.webViewScreen,
              arguments: {
                AppConstant.webViewPageUrl: text,
                AppConstant.pageTitle: title,
              });
        },
        child: CustomText(
          title: text,
          fontSize: 18,
          fontWeight: getFontWeightIfItsTitleOrNot(index, detailsTitle),
          maxLines: 50,
          color: const Color(0xff292929),
        ),
      );
    }

    return CustomText(
      title: text,
      fontSize: 18,
      fontWeight: getFontWeightIfItsTitleOrNot(index, detailsTitle),
      maxLines: 50,
      color: const Color(0xff292929),
    );
  }

  FontWeight getFontWeightIfItsTitleOrNot(
      int index, List<String>? detailsTitle) {
    if (index > 0 && (detailsTitle?[index - 1] ?? "") == "") {
      return FontWeight.bold;
    }
    return FontWeight.normal;
  }
}
