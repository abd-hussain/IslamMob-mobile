import 'package:flutter/material.dart';

/// A custom text field widget with consistent styling for the Islam app.
///
/// This widget provides a reusable text field with a white background,
/// teal focus border, prefix icon support, and disabled text suggestions.
/// It has a fixed height of 50 pixels and includes padding around the field.
class SearchTextField extends StatelessWidget {
  /// The controller for managing the text field's content.
  final TextEditingController controller;

  /// The hint text to display when the field is empty.
  final String hintText;

  /// Optional icon to display at the beginning of the text field.
  final IconData? prefixIcon;

  /// Optional callback function called when the text changes.
  final void Function(String)? onChanged;

  /// Creates a [SearchTextField] with the specified properties.
  const SearchTextField({
    super.key,
    required this.controller,
    required this.hintText,
    required this.prefixIcon,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: SizedBox(
        height: 50,
        child: TextField(
          autocorrect: false,
          enableSuggestions: false,
          enableInteractiveSelection: false,
          controller: controller,
          style: const TextStyle(
            fontWeight: FontWeight.w300,
            color: Color(0xff191C1F),
            fontSize: 14,
          ),
          decoration: InputDecoration(
            filled: true,
            hintText: hintText,
            fillColor: Colors.white,
            prefixIcon: Icon(prefixIcon),
            focusedBorder: const OutlineInputBorder(
              borderSide: const BorderSide(
                color: const Color(0xff008480),
                width: 5,
              ),
            ),
            border: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey),
            ),
          ),
          onChanged: onChanged,
        ),
      ),
    );
  }
}
