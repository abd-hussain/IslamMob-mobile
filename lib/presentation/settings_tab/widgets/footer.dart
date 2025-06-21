import 'package:flutter/material.dart';
import 'package:islam_app/domain/usecase/application_version_usecase.dart';
import 'package:islam_app/l10n/gen/app_localizations.dart';
import 'package:islam_app/my_app/locator.dart';
import 'package:islam_app/shared_widgets/custom_text.dart';

/// A footer widget that displays application version and copyright information.
///
/// This widget is typically used at the bottom of settings screens to show
/// the current application version (retrieved asynchronously) and copyright
/// notice. It provides a consistent footer layout with proper spacing and
/// styling for version and rights reserved text.
class FooterView extends StatelessWidget {
  /// Creates a [FooterView] widget.
  ///
  /// The [key] parameter is optional and can be used to control how one widget
  /// replaces another widget in the tree.
  const FooterView({super.key});

  @override
  Widget build(BuildContext context) {
    final localize = IslamMobLocalizations.of(context);

    return Padding(
      padding: const EdgeInsets.only(left: 8, right: 8),
      child: Column(
        children: [
          const SizedBox(height: 16),
          FutureBuilder<String>(
              initialData: "",
              future:
                  locator<ApplicationVersionUsecase>().getApplicationVersion(),
              builder: (context, snapshot) {
                return CustomText(
                  title: "${localize.version} ${snapshot.data}",
                  fontSize: 12,
                  color: const Color(0xffBFBFBF),
                );
              }),
          const SizedBox(height: 20),
          CustomText(
            title: localize.rightsreserved,
            fontSize: 10,
            color: const Color(0xff707070),
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
