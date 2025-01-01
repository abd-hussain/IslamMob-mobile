import 'package:islam_app/shared_widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islam_app/presentation/inboarding/bloc/setup_account/setup_account_bloc.dart';
import 'package:islam_app/shared_widgets/custom_text.dart';
import 'package:lottie/lottie.dart';
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
                _buildAnimation(),
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
  Widget _buildAnimation() {
    return Center(
      child: Lottie.asset(
        'assets/lottie/Animation - 1734423039934.json',
        width: 200,
      ),
    );
  }

  /// Builds the header text
  Widget _buildHeader(BuildContext context) {
    return CustomText(
      title: AppLocalizations.of(context)!.setupAccount,
      fontSize: 20,
      color: const Color(0xff008480),
      fontWeight: FontWeight.bold,
      textAlign: TextAlign.center,
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
