import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islam_app/domain/usecase/application_version_usecase.dart';
import 'package:islam_app/shared_widgets/custom_text.dart';

class FooterView extends StatelessWidget {
  const FooterView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8, right: 8),
      child: Column(
        children: [
          const SizedBox(height: 16),
          FutureBuilder<String>(
              initialData: "",
              future: ApplicationVersionUsecase().getApplicationVersion(),
              builder: (context, snapshot) {
                return CustomText(
                  title:
                      "${AppLocalizations.of(context)!.version} ${snapshot.data}",
                  fontSize: 12,
                  color: const Color(0xffBFBFBF),
                );
              }),
          const SizedBox(height: 20),
          CustomText(
            title: AppLocalizations.of(context)!.rightsreserved,
            fontSize: 10,
            color: const Color(0xff707070),
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
