import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islam_app/l10n/gen/app_localizations.dart';
import 'package:islam_app/presentation/inboarding/bloc/setup_account/setup_account_bloc.dart';
import 'package:islam_app/shared_widgets/custom_button.dart';
import 'package:islam_app/shared_widgets/custom_text.dart';

class SetupAccountView extends StatelessWidget {
  final Function() doneSelection;
  const SetupAccountView({super.key, required this.doneSelection});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SetupAccountBloc(),
      child: Builder(
        builder: (context) {
          final localization = IslamMobLocalizations.of(context);
          return Padding(
            padding: const EdgeInsets.all(8),
            child: Column(
              children: [
                _buildAnimation(context),
                const SizedBox(height: 20),
                _buildHeader(context, localization),
                _buildStateView(context, localization),
              ],
            ),
          );
        },
      ),
    );
  }

  /// Builds the header animation
  Widget _buildAnimation(BuildContext context) {
    return Center(
      child: Image.asset(
        'assets/images/readyToGo.png',
        width: MediaQuery.of(context).size.width * 0.8,
      ),
    );
  }

  /// Builds the header text
  Widget _buildHeader(
      BuildContext context, IslamMobLocalizations localization) {
    return Column(
      children: [
        CustomText(
          title: localization.onboardingSetupAccountMessage1,
          fontSize: 16,
          color: const Color(0xff444444),
          fontWeight: FontWeight.bold,
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 20),
        CustomText(
          title: localization.onboardingSetupAccountMessage2,
          fontSize: 20,
          color: const Color(0xff008480),
          fontWeight: FontWeight.bold,
          textAlign: TextAlign.center,
          maxLines: 3,
        ),
        const SizedBox(height: 20),
        CustomText(
          title: localization.onboardingSetupAccountMessage3,
          fontSize: 16,
          color: const Color(0xff444444),
          fontWeight: FontWeight.bold,
          textAlign: TextAlign.center,
          maxLines: 3,
        ),
      ],
    );
  }

  Widget _buildStateView(
      BuildContext context, IslamMobLocalizations localization) {
    return FutureBuilder(
        future: context.read<SetupAccountBloc>().setupAccount(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return Expanded(
              child: Center(
                child: CustomButton(
                  isEnabled: true,
                  title: localization.startyourjourney,
                  onTap: () async => doneSelection(),
                ),
              ),
            );
          } else {
            return const Center(
              child: CircularProgressIndicator(color: Color(0xff008480)),
            );
          }
        });
  }
}
