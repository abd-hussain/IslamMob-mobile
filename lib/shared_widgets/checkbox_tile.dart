import 'package:flutter/material.dart';
import 'package:islam_app/shared_widgets/custom_text.dart';

/// A custom checkbox tile widget with a title and selection state.
///
/// This widget displays a tile with a title text and a checkbox icon that
/// indicates the selection state. The entire tile is tappable and triggers
/// the [onChanged] callback when tapped.
class CheckBoxTile extends StatelessWidget {
  /// The title text to display in the tile.
  final String title;

  /// Whether the checkbox is currently selected.
  final bool isSelected;

  /// Callback function called when the tile is tapped.
  final Function() onChanged;

  /// Creates a [CheckBoxTile] with the given [title], [isSelected] state, and [onChanged] callback.
  const CheckBoxTile({
    super.key,
    required this.title,
    required this.isSelected,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16, bottom: 10),
      child: InkWell(
        onTap: onChanged,
        child: Container(
          height: 50,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(5),
            boxShadow: const [
              BoxShadow(
                color: Colors.black12,
                blurRadius: 5,
                offset: Offset(0, 2),
              ),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 8, right: 8),
            child: Row(
              children: [
                Expanded(
                  child: CustomText(
                    title: title,
                    fontSize: 14,
                    color: const Color(0xff444444),
                    maxLines: 2,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Icon(
                  isSelected
                      ? Icons.check_box_outlined
                      : Icons.check_box_outline_blank_rounded,
                  size: 25,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
