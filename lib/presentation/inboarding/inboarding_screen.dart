import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islam_app/my_app/islam_mob_app/routes.dart';
import 'package:islam_app/presentation/inboarding/bloc/inboarding/inboarding_bloc.dart';
import 'package:islam_app/presentation/inboarding/widgets/language_view.dart';
import 'package:islam_app/presentation/inboarding/widgets/location_view.dart';
import 'package:islam_app/presentation/inboarding/widgets/notification_view.dart';
import 'package:islam_app/presentation/inboarding/widgets/quran_copy_view.dart';
import 'package:islam_app/presentation/inboarding/widgets/setup_account_view.dart';
import 'package:islam_app/shared_widgets/custom_text.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class InBoardingScreen extends StatelessWidget {
  const InBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          InboardingBloc()..add(const InboardingEvent.initialStage()),
      child: Scaffold(
        backgroundColor: const Color(0xffF5F6F7),
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 10),
              _buildHeader(context),
              const SizedBox(height: 10),
              _buildBody(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Builds the header section with the logo and app information
  Widget _buildHeader(BuildContext context) {
    return Row(
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
                color: const Color(0xff292929),
                fontWeight: FontWeight.bold,
                textAlign: TextAlign.center,
                maxLines: 3,
              ),
              CustomText(
                title: AppLocalizations.of(context)!.appshortdesc,
                fontSize: 12,
                color: const Color(0xff292929),
                fontWeight: FontWeight.bold,
                textAlign: TextAlign.center,
                maxLines: 3,
              ),
            ],
          ),
        ),
        const Expanded(child: SizedBox()),
      ],
    );
  }

  /// Builds the main body of the onboarding screen
  Widget _buildBody(BuildContext context) {
    return Expanded(
      child: BlocBuilder<InboardingBloc, InboardingState>(
        buildWhen: (previous, current) =>
            ((previous.inBoardingStage != current.inBoardingStage) ||
                (previous.finalizedInBoarding != current.finalizedInBoarding)),
        builder: (context, state) {
          final bloc = context.read<InboardingBloc>();
          switch (state.inBoardingStage) {
            case 0:
              return LanguageInBoardingView(
                doneSelection: () => bloc
                    .add(const InboardingEvent.changeInBoardingStage(stage: 1)),
              );
            case 1:
              return LocationInBoardingView(
                doneSelection: () => bloc
                    .add(const InboardingEvent.changeInBoardingStage(stage: 2)),
              );
            case 2:
              return QuranCopyView(
                doneSelection: () => bloc
                    .add(const InboardingEvent.changeInBoardingStage(stage: 3)),
              );
            case 3:
              return NotificationInBoardingView(
                doneSelection: () => bloc
                    .add(const InboardingEvent.changeInBoardingStage(stage: 4)),
              );
            case 4:
              return SetupAccountView(
                doneSelection: () async {
                  final navigator = Navigator.of(context, rootNavigator: true);
                  bloc.add(const InboardingEvent.finalizeInBoarding());
                  await navigator.pushNamedAndRemoveUntil(
                    RoutesConstants.mainContainer,
                    (Route<dynamic> route) => false,
                  );
                },
              );

            default:
              return const SizedBox.shrink();
          }
        },
      ),
    );
  }
}
