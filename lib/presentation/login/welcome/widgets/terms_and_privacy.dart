import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:islam_app/l10n/gen/app_localizations.dart';
import 'package:islam_app/my_app/islam_mob_app/routes.dart';
import 'package:islam_app/shared_widgets/custom_text.dart';

class TermsAndPrivacy extends StatelessWidget {
  const TermsAndPrivacy({super.key});

  void _handleTermsTap(NavigatorState navigator) {
    navigator.pushNamed(RoutesConstants.termsConditionScreen);
  }

  void _handlePrivacyTap(NavigatorState navigator) {
    navigator.pushNamed(RoutesConstants.privacyPolicyScreen);
  }

  @override
  Widget build(BuildContext context) {
    final localization = IslamMobLocalizations.of(context);
    final navigator = Navigator.of(context, rootNavigator: true);

    return Column(
      children: [
        CustomText(
          title: localization.signup_agreement,
          color: const Color(0xff444444),
          fontSize: 12,
        ),
        RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
            children: [
              TextSpan(
                text: localization.terms_of_service,
                style: const TextStyle(
                  color: Colors.black12,
                  decoration: TextDecoration.underline,
                ),
                recognizer: TapGestureRecognizer()
                  ..onTap = () => _handleTermsTap(navigator),
              ),
              TextSpan(
                text: ' ${localization.and_word} ',
                style: const TextStyle(color: Colors.black26),
              ),
              TextSpan(
                text: localization.privacy_policy,
                style: const TextStyle(
                  color: Colors.black12,
                  decoration: TextDecoration.underline,
                ),
                recognizer: TapGestureRecognizer()
                  ..onTap = () => _handlePrivacyTap(navigator),
              ),
            ],
          ),
        ),
        const SizedBox(height: 30),
      ],
    );
  }
}
