import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final IconData? prefixIcon;
  final void Function(String)? onChanged;

  const CustomTextField({
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
      child: TextField(
        autocorrect: false,
        enableSuggestions: false,
        enableInteractiveSelection: false,
        controller: controller,
        style: const TextStyle(
          fontWeight: FontWeight.w300,
          color: Color(0xff191C1F),
          fontSize: 16,
        ),
        decoration: InputDecoration(
          filled: true,
          hintText: hintText,
          fillColor: Colors.white,
          prefixIcon: Icon(prefixIcon),
          focusedBorder: const OutlineInputBorder(
            borderSide: const BorderSide(color: const Color(0xff008480), width: 5),
          ),
          border: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey),
          ),
        ),
        onChanged: onChanged,
      ),
    );
  }
}
