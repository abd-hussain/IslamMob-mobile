import 'package:flutter/material.dart';
import 'package:islam_app/domain/model/profile_options.dart';
import 'package:islam_app/shared_widgets/custom_text.dart';

/// A widget that displays a collection of profile options in a list format.
///
/// This widget creates a scrollable list of profile options with icons, titles,
/// subtitles, and navigation arrows. Each option can be enabled or disabled,
/// with different styling applied based on availability. The list includes
/// separators between items and shadow styling for visual appeal.
class CollectionListOptionView extends StatelessWidget {
  /// Creates a [CollectionListOptionView] with the specified list of options.
  ///
  /// The [listOfOptions] parameter is required and contains the profile
  /// options to display in the list.
  const CollectionListOptionView({super.key, required this.listOfOptions});

  /// The list of profile options to display.
  ///
  /// Each [ProfileOptions] item contains information about an option including
  /// its icon, name, subtitle, availability status, and tap callback.
  /// Disabled options are displayed with grey styling and are not clickable.
  final List<ProfileOptions> listOfOptions;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withValues(alpha: 0.5),
            spreadRadius: 0.5,
            blurRadius: 5,
            offset: const Offset(0, 0.1),
          ),
        ],
      ),
      child: ListView.separated(
        physics: const NeverScrollableScrollPhysics(),
        itemCount: listOfOptions.length,
        shrinkWrap: true,
        separatorBuilder: (BuildContext context, int index) => const Padding(
          padding: EdgeInsets.only(left: 30, right: 30),
          child: Divider(thickness: 0.5, color: Colors.grey),
        ),
        itemBuilder: (ctx, index) {
          return InkWell(
            onTap: () => listOfOptions[index].avaliable
                ? listOfOptions[index].onTap()
                : null,
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(
                    listOfOptions[index].icon,
                    size: 20,
                    color: listOfOptions[index].avaliable
                        ? const Color(0xff008480)
                        : Colors.grey,
                  ),
                  const SizedBox(width: 8),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText(
                        title: listOfOptions[index].name,
                        fontSize: 16,
                        color: listOfOptions[index].avaliable
                            ? const Color(0xff292929)
                            : Colors.grey,
                        fontWeight: FontWeight.bold,
                      ),
                      if (listOfOptions[index].subtitle != "")
                        CustomText(
                          title: listOfOptions[index].subtitle,
                          fontSize: 12,
                          color: listOfOptions[index].avaliable
                              ? const Color(0xff292929)
                              : Colors.grey,
                          fontWeight: FontWeight.w500,
                        )
                      else
                        const SizedBox(),
                    ],
                  ),
                  const Expanded(child: SizedBox()),
                  const Icon(
                    Icons.arrow_forward_ios_outlined,
                    size: 12,
                    color: Color(0xffBFBFBF),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
