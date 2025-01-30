import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:islam_app/shared_widgets/custom_text.dart';

class CustomToast {
  /// Displays a warning toast message with a custom design.

  static void showWarningToast(
      {required BuildContext context, required String message}) {
    final fToast = FToast()..init(context);

    fToast.showToast(
      child: _buildToastContent(message),
      gravity: ToastGravity.BOTTOM,
    );
  }

  static Widget _buildToastContent(String message) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: const Color.fromARGB(255, 171, 171, 1),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Icon(
            Icons.warning,
            color: Colors.white,
          ),
          const SizedBox(width: 12),
          CustomText(
            title: message,
            fontSize: 14,
            fontWeight: FontWeight.bold,
          ),
        ],
      ),
    );
  }
}
