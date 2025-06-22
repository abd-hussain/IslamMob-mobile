import 'package:flutter/material.dart';
import 'package:islam_app/shared_widgets/custom_text.dart';

/// A widget that displays location information in a styled container.
///
/// This widget is typically used in the Qibla finder compass interface to show
/// location-related data such as coordinates, address, or distance information.
/// It presents the information in a card-like container with a location icon,
/// value text, and descriptive title.
///
/// The container features:
/// - White background with grey border
/// - Rounded corners with shadow effect
/// - Location icon indicator
/// - Hierarchical text display (value and title)
class FooterContainerView extends StatelessWidget {
  /// The descriptive title or label for the displayed information.
  ///
  /// This text appears below the value in smaller font size and serves
  /// as a description or unit label for the displayed value.
  final String title;

  /// The main value or data to be displayed.
  ///
  /// This text appears prominently next to the location icon and represents
  /// the primary information being shown (e.g., coordinates, distance, etc.).
  final String value;

  /// Creates a [FooterContainerView] widget.
  ///
  /// Both [title] and [value] are required parameters that define the
  /// content to be displayed in the container.
  const FooterContainerView({
    super.key,
    required this.title,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withValues(alpha: 0.5),
            spreadRadius: 1,
            blurRadius: 1,
            offset: const Offset(0, 1),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          children: [
            Row(
              children: [
                const Icon(
                  Icons.location_on,
                  color: Color(0xff444444),
                  size: 12,
                ),
                CustomText(
                  title: value,
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                  color: const Color(0xff444444),
                ),
              ],
            ),
            CustomText(
              title: title,
              fontSize: 8,
              color: const Color(0xff444444),
            ),
          ],
        ),
      ),
    );
  }
}
