import 'package:flutter/material.dart';
import 'package:islam_app/shared_widgets/custom_text.dart';

/// Widget for displaying individual toolbar shortcut cells in the Islamic app.
///
/// This widget represents a single shortcut button in the home screen toolbar,
/// providing quick access to various Islamic features and content. It features:
/// - **Visual icon** representing the Islamic feature or content type
/// - **Descriptive title** with multi-line support for longer feature names
/// - **Touch interaction** with tap handling for navigation
/// - **Consistent styling** with rounded corners and Islamic color scheme
/// - **Responsive design** adapting to different screen sizes
///
/// The toolbar cell is essential for Islamic app navigation, providing Muslims
/// with quick access to prayer times, Quran reading, Islamic calendar, Hajj
/// guidance, supplications, and other spiritual content and tools.
class ToolbarCell extends StatelessWidget {
  /// The title text displayed below the icon.
  final String title;

  /// The asset path for the icon image.
  final String imagePath;

  /// Callback function triggered when the cell is tapped.
  final Function() onTap;

  /// Creates a [ToolbarCell] widget for Islamic app shortcuts.
  ///
  /// Parameters:
  /// - [title]: The descriptive text for this Islamic feature
  /// - [imagePath]: Asset path to the icon representing this feature
  /// - [onTap]: Callback for navigation when the shortcut is tapped
  const ToolbarCell({
    super.key,
    required this.imagePath,
    required this.onTap,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Column(
        children: [
          Container(
            decoration: _containerDecoration(),
            child: Image.asset(imagePath, height: 50, width: 50),
          ),
          const SizedBox(height: 5),
          CustomText(
            title: title,
            fontSize: 10,
            fontWeight: FontWeight.w600,
            maxLines: 3,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }

  BoxDecoration _containerDecoration() {
    return BoxDecoration(
      color: const Color.fromARGB(255, 226, 255, 242),
      borderRadius: BorderRadius.circular(8),
    );
  }
}
