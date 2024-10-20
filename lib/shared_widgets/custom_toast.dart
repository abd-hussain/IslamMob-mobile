import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:islam_app/shared_widgets/custom_text.dart';

class CustomToast {
  static void showWarningToast(
      {required BuildContext context, required String message}) {
    FToast? fToast = FToast();

    fToast.init(context);

    fToast.showToast(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25.0),
          color: const Color.fromARGB(255, 171, 171, 1),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Icon(
              Icons.warning,
              color: Colors.white,
            ),
            const SizedBox(width: 12.0),
            CustomText(
              title: message,
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ],
        ),
      ),
      gravity: ToastGravity.BOTTOM,
      toastDuration: const Duration(seconds: 2),
    );
  }
}
