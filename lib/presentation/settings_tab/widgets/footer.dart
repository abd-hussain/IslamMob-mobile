import 'package:flutter/material.dart';
import 'package:islam_app/domain/usecase/application_version_usecase.dart';
import 'package:islam_app/l10n/gen/app_localizations.dart';
import 'package:islam_app/my_app/locator.dart';
import 'package:islam_app/shared_widgets/custom_text.dart';

class FooterView extends StatelessWidget {
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
