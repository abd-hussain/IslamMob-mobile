import 'package:flutter/material.dart';
import 'package:islam_app/domain/usecase/application_version_usecase.dart';
import 'package:islam_app/shared_widgets/dialogs/version_update/version_update_widget.dart';

class VersionDialog {
  Future<Widget?> dialog({required BuildContext context, required bool isOptional}) async {
    final String currentVersion = await ApplicationVersionUsecase().getApplicationVersion();

    if (context.mounted) {
      return showDialog(
          barrierDismissible: false,
          context: context,
          builder: (BuildContext context) {
            return Dialog(
              insetPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
              child: VersionDialogWidget(
                isOptional: isOptional,
                version: currentVersion,
              ),
            );
          });
    }

    return null;
  }
}
