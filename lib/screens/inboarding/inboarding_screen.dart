import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islam_app/my_app/islam_mob_app/routes.dart';
import 'package:islam_app/screens/inboarding/bloc/inboarding_bloc.dart';
import 'package:islam_app/screens/inboarding/widgets/gender/gender_view.dart';
import 'package:islam_app/screens/inboarding/widgets/language/language_view.dart';
import 'package:islam_app/screens/inboarding/widgets/location/location_view.dart';
import 'package:islam_app/screens/inboarding/widgets/notification/notification_view.dart';
import 'package:islam_app/shared_widgets/custom_text.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class InBoardingScreen extends StatelessWidget {
  const InBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => InboardingBloc(),
      child: Scaffold(
        backgroundColor: const Color(0xffF5F6F7),
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Expanded(child: SizedBox()),
                  Image.asset(
                    "assets/images/logoz/logo.png",
                    width: 50,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomText(
                          title: AppLocalizations.of(context)!.appName,
                          fontSize: 20,
                          textColor: const Color(0xff292929),
                          fontWeight: FontWeight.bold,
                          textAlign: TextAlign.center,
                          maxLins: 3,
                        ),
                        CustomText(
                          title: AppLocalizations.of(context)!.appshortdesc,
                          fontSize: 12,
                          textColor: const Color(0xff292929),
                          fontWeight: FontWeight.bold,
                          textAlign: TextAlign.center,
                          maxLins: 3,
                        ),
                      ],
                    ),
                  ),
                  const Expanded(child: SizedBox()),
                ],
              ),
              const SizedBox(height: 10),
              Expanded(
                child: BlocBuilder<InboardingBloc, InboardingState>(
                  buildWhen: (previous, current) =>
                      previous.inBoardingStage != current.inBoardingStage,
                  builder: (context, state) {
                    final mainContext = context.read<InboardingBloc>();

                    switch (state.inBoardingStage) {
                      case 0:
                        return LanguageInBoardingView(
                          onSelectLanguage: (langCode) async {
                            await mainContext.setLanguageInStorage(
                                context, langCode);

                            await mainContext.changeOnBoardingStage(1);
                          },
                        );
                      case 1:
                        return LocationInBoardingView(
                          onSelectLocation: () async {
                            await mainContext.changeOnBoardingStage(2);
                          },
                        );
                      case 2:
                        return NotificationInBoardingView(
                          onSelect: () async {
                            await mainContext.changeOnBoardingStage(3);
                          },
                        );
                      case 3:
                        return GenderInBoardingView(onSelect: () async {
                          final navigator =
                              Navigator.of(context, rootNavigator: true);
                          await mainContext.finishInBoarding();
                          await navigator.pushNamedAndRemoveUntil(
                            RoutesConstants.mainContainer,
                            (Route<dynamic> route) => false,
                          );
                        });
                      default:
                        return const SizedBox();
                    }
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
