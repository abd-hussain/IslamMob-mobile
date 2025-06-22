import 'package:flutter/material.dart';
import 'package:islam_app/domain/constants/app_constant.dart';
import 'package:islam_app/domain/model/hajj_omrah_data.dart';
import 'package:islam_app/my_app/islam_mob_app/routes.dart';
import 'package:islam_app/shared_widgets/custom_text.dart';

/// A screen that displays detailed information about Hajj or Omrah guidance.
///
/// This screen provides:
/// - Detailed step-by-step guidance for Hajj or Omrah rituals
/// - Multi-language support (Arabic and English)
/// - Image display for visual guidance
/// - Clickable links that open in a web view
/// - RTL layout support for Arabic content
/// - Formatted text with proper typography
///
/// The screen receives [HajjOmrahData] and language preference through
/// route arguments and displays the content accordingly. Text items
/// that start with "http" are treated as clickable links.
class HajjOmrahDetailsScreen extends StatelessWidget {
  /// Creates a [HajjOmrahDetailsScreen].
  ///
  /// This screen expects to receive the following arguments through route settings:
  /// - "data": A [HajjOmrahData] object containing the guidance content
  /// - "isRtlLanguage": A boolean indicating if RTL layout should be used
  const HajjOmrahDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Map<String, dynamic> arguments =
        ModalRoute.of(context)!.settings.arguments! as Map<String, dynamic>;
    final HajjOmrahData data = arguments["data"] as HajjOmrahData;
    final bool isRtlLanguage = (arguments["isRtlLanguage"] as bool?) ?? false;
    final List<String>? detailsTitle = isRtlLanguage
        ? data.details["ar"]
        : data.details["en"];
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
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 5,
                  ),
                  child: textOrLink(
                    context: context,
                    text: detailsTitle?[index] ?? "",
                    detailsTitle: detailsTitle,
                    index: index,
                    title: isRtlLanguage ? data.title.ar : data.title.en,
                  ),
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

  /// Creates a widget that displays either clickable text (for URLs) or regular text.
  ///
  /// This method determines whether the provided [text] is a URL (starts with "http")
  /// and creates either an [InkWell] for clickable links or a [CustomText] for
  /// regular content.
  ///
  /// Parameters:
  /// - [text]: The text content to display
  /// - [detailsTitle]: The complete list of detail items (used for styling)
  /// - [index]: The current index in the details list
  /// - [title]: The title to use when opening links in web view
  /// - [context]: The build context for navigation
  ///
  /// Returns a [Widget] that displays the text appropriately based on its content.
  /// URLs are displayed as clickable links that open in a web view, while regular
  /// text is displayed with appropriate formatting and font weight.
  Widget textOrLink({
    required String text,
    required List<String>? detailsTitle,
    required int index,
    required String title,
    required BuildContext context,
  }) {
    if (text.startsWith("http")) {
      return InkWell(
        onTap: () {
          // Handle link tap, e.g., open in browser
          Navigator.pushNamed(
            context,
            RoutesConstants.webViewScreen,
            arguments: {
              AppConstant.webViewPageUrl: text,
              AppConstant.pageTitle: title,
            },
          );
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

  /// Determines the appropriate font weight for a text item based on its position.
  ///
  /// This method implements a formatting rule where text items that follow
  /// an empty string are displayed in bold, typically indicating section
  /// titles or headers in the guidance content.
  ///
  /// Parameters:
  /// - [index]: The current index of the text item in the details list
  /// - [detailsTitle]: The complete list of detail items
  ///
  /// Returns [FontWeight.bold] if the previous item in the list is an empty
  /// string (indicating this item is a title), otherwise returns
  /// [FontWeight.normal] for regular content.
  ///
  /// This formatting helps create visual hierarchy in the guidance content,
  /// making it easier for users to distinguish between section headers
  /// and regular instructional text.
  FontWeight getFontWeightIfItsTitleOrNot(
    int index,
    List<String>? detailsTitle,
  ) {
    if (index > 0 && (detailsTitle?[index - 1] ?? "") == "") {
      return FontWeight.bold;
    }
    return FontWeight.normal;
  }
}
