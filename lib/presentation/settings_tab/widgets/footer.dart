import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:ionicons/ionicons.dart';
import 'package:islam_app/domain/usecase/application_version_usecase.dart';
import 'package:islam_app/my_app/islam_mob_app/routes.dart';
import 'package:islam_app/shared_widgets/custom_text.dart';
import 'package:islam_app/core/constants/app_constant.dart';
import 'package:url_launcher/url_launcher.dart';

class FooterView extends StatelessWidget {
  const FooterView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8, right: 8),
      child: Column(
        children: [
          const SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed: () => Navigator.of(context, rootNavigator: true)
                    .pushNamed(RoutesConstants.webViewScreen, arguments: {
                  AppConstant.webViewPageUrl: AppConstant.facebookLink,
                  AppConstant.pageTitle: AppLocalizations.of(context)!.facebook
                }),
                child: const Icon(
                  Ionicons.logo_facebook,
                  color: Color(0xff444444),
                ),
              ),
              const CustomText(
                title: "|",
                fontSize: 16,
                color: Color(0xff444444),
                fontWeight: FontWeight.bold,
              ),
              TextButton(
                onPressed: () => _launchWhatsapp(context),
                child: const Icon(
                  Ionicons.logo_whatsapp,
                  color: Color(0xff444444),
                ),
              ),
              const CustomText(
                title: "|",
                fontSize: 16,
                color: Color(0xff444444),
                fontWeight: FontWeight.bold,
              ),
              TextButton(
                onPressed: () => Navigator.of(context, rootNavigator: true)
                    .pushNamed(RoutesConstants.webViewScreen, arguments: {
                  AppConstant.webViewPageUrl: AppConstant.linkedinLink,
                  AppConstant.pageTitle: AppLocalizations.of(context)!.linkedin
                }),
                child: const Icon(
                  Ionicons.logo_linkedin,
                  color: Color(0xff444444),
                ),
              ),
            ],
          ),
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

  Future<void> _launchWhatsapp(BuildContext context) async {
    final localize = AppLocalizations.of(context)!;
    final scaffoldMessenger = ScaffoldMessenger.of(context);

    const whatsapp = AppConstant.whatsappNumber;
    final whatsappAndroid =
        Uri.parse("whatsapp://send?phone=$whatsapp&text=hello");
    if (await canLaunchUrl(whatsappAndroid)) {
      await launchUrl(whatsappAndroid);
    } else {
      scaffoldMessenger.showSnackBar(
        SnackBar(
          content: Text(localize.whatsappnotinstalled),
        ),
      );
    }
  }
}
