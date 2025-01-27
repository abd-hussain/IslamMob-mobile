import 'package:flutter/material.dart';
import 'package:islam_app/shared_widgets/dialogs/share_app/share_app_widget.dart';

class ShareDialog {
  Future<Widget?> dialog({required BuildContext context}) async {
    return showDialog(
        barrierDismissible: false,
        context: context,
        builder: (BuildContext context) {
          return Dialog(
            insetPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            child: const ShareAppDialogWidget(),
          );
        });
  }
}
