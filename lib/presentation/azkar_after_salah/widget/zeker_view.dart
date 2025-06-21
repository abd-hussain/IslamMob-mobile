import 'package:azkar/azkar.dart';
import 'package:flutter/material.dart';
import 'package:islam_app/shared_widgets/custom_text.dart';

/// Widget for displaying individual azkar (Islamic remembrance) items.
///
/// This widget presents a single dhikr or remembrance from the post-prayer
/// azkar collection, providing an interactive interface for users to engage
/// with Islamic spiritual practices. It features:
/// - **Arabic text display** with proper Islamic typography
/// - **Progress tracking** showing current count vs target count
/// - **Interactive tapping** to increment the remembrance counter
/// - **Visual feedback** with disabled state when completed
/// - **Elegant design** with shadows and rounded corners
///
/// The widget supports the Islamic practice of counting specific remembrances
/// after prayers, helping Muslims maintain their spiritual routines with
/// proper tracking and visual guidance.
class ZekerView extends StatelessWidget {
  /// Whether this azkar item is disabled (completed or inactive).
  final bool isDisabled;

  /// The azkar model containing the remembrance data and count information.
  final AzkarModel azkarModel;

  /// Callback function triggered when the user taps to increment the count.
  final Function() onTap;

  /// Creates a [ZekerView] widget for displaying an individual azkar item.
  ///
  /// Parameters:
  /// - [azkarModel]: The azkar data including Arabic text, translation, and counts
  /// - [isDisabled]: Whether the azkar is completed or should be non-interactive
  /// - [onTap]: Callback function for handling tap interactions to increment count
  const ZekerView({
    super.key,
    required this.azkarModel,
    required this.isDisabled,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => isDisabled ? null : onTap(),
      child: Container(
        decoration: BoxDecoration(
          color: isDisabled ? const Color(0xffE0E0E0) : Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withValues(alpha: 0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              if (azkarModel.title.isNotEmpty)
                Text(
                  azkarModel.title,
                  style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                        color: const Color(0xff444444),
                        fontFamily: 'Jameel',
                      ),
                  textAlign: TextAlign.center,
                ),
              Text(
                azkarModel.desc,
                style: Theme.of(context).textTheme.displaySmall!.copyWith(
                      color: const Color(0xff444444),
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      fontFamily: 'Uthman',
                    ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 10),
              Container(
                height: 1,
                color: Colors.grey,
              ),
              const SizedBox(height: 2),
              footerView(isDisabled),
            ],
          ),
        ),
      ),
    );
  }

  /// Builds the footer section showing progress count and interaction indicator.
  ///
  /// This method creates the bottom section of the azkar item displaying:
  /// - Current count vs maximum count (e.g., "15/33")
  /// - Click indicator icon when the item is interactive
  /// - Proper spacing and typography for clear progress tracking
  ///
  /// Parameters:
  /// - [isDisabled]: Whether to show the click indicator or hide it
  ///
  /// Returns a Row widget containing the progress display and interaction hints.
  Row footerView(bool isDisabled) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomText(
          title: azkarModel.currentCount.toString(),
          fontSize: 18,
          color: const Color(0xff444444),
          fontWeight: FontWeight.bold,
        ),
        const CustomText(
          title: "/",
          fontSize: 12,
          color: Color(0xff444444),
          fontWeight: FontWeight.bold,
        ),
        CustomText(
          title: azkarModel.maxCount.toString(),
          fontSize: 12,
          color: const Color(0xff444444),
          fontWeight: FontWeight.bold,
        ),
        const SizedBox(width: 8),
        if (isDisabled)
          const SizedBox.shrink()
        else
          const Icon(Icons.ads_click, color: Color(0xff444444)),
      ],
    );
  }
}
