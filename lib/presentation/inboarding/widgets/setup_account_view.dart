import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islam_app/l10n/gen/app_localizations.dart';
import 'package:islam_app/presentation/inboarding/bloc/setup_account/setup_account_bloc.dart';
import 'package:islam_app/shared_widgets/custom_button.dart';
import 'package:islam_app/shared_widgets/custom_text.dart';

/// A widget that displays the final account setup screen during onboarding.
///
/// This widget represents the completion step of the onboarding process,
/// showing welcome messages and performing final account setup operations.
/// It displays a loading indicator while the setup is in progress and
/// presents a "Start your journey" button when setup is complete.
class SetupAccountView extends StatelessWidget {
  /// Callback function called when the user completes the account setup.
  ///
  /// This function is invoked after the account setup process is finished
  /// and the user taps the "Start your journey" button to begin using the app.
  final Function() doneSelection;

  /// Creates a [SetupAccountView] widget.
  ///
  /// The [doneSelection] callback is required and will be called when
  /// the user completes the final setup step and is ready to start using the app.
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
