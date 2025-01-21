import 'package:islam_app/shared_widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islam_app/presentation/inboarding/bloc/setup_account/setup_account_bloc.dart';
import 'package:islam_app/shared_widgets/custom_text.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SetupAccountView extends StatelessWidget {
  final Function() doneSelection;
  const SetupAccountView({super.key, required this.doneSelection});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SetupAccountBloc(),
      child: Builder(
        builder: (context) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                _buildAnimation(context),
                const SizedBox(height: 20),
                _buildHeader(context),
                _buildStateView(context),
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
  Widget _buildHeader(BuildContext context) {
    return Column(
      children: [
        CustomText(
          title: AppLocalizations.of(context)!.onboardingSetupAccountMessage1,
          fontSize: 16,
          color: const Color(0xff444444),
          fontWeight: FontWeight.bold,
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 20),
        CustomText(
          title: AppLocalizations.of(context)!.onboardingSetupAccountMessage2,
          fontSize: 20,
          color: const Color(0xff008480),
          fontWeight: FontWeight.bold,
          textAlign: TextAlign.center,
          maxLines: 3,
        ),
        const SizedBox(height: 20),
        CustomText(
          title: AppLocalizations.of(context)!.onboardingSetupAccountMessage3,
          fontSize: 16,
          color: const Color(0xff444444),
          fontWeight: FontWeight.bold,
          textAlign: TextAlign.center,
          maxLines: 3,
        ),
      ],
    );
  }

  Widget _buildStateView(BuildContext context) {
    return FutureBuilder(
        future: context.read<SetupAccountBloc>().setupAccount(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return Expanded(
              child: Center(
                child: CustomButton(
                  isEnabled: true,
                  title: AppLocalizations.of(context)!.startyourjourney,
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
