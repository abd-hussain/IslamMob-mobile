import 'package:firebase_manager/firebase_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islam_app/l10n/gen/app_localizations.dart';
import 'package:islam_app/my_app/islam_mob_app/routes.dart';
import 'package:islam_app/presentation/login/welcome/bloc/welcome_login_bloc.dart';
import 'package:islam_app/presentation/login/welcome/widgets/terms_and_privacy.dart';
import 'package:islam_app/presentation/login/welcome/widgets/welcome_login_header.dart';
import 'package:islam_app/shared_widgets/appbar/custom_appbar.dart';
import 'package:islam_app/shared_widgets/custom_button.dart';
import 'package:islam_app/shared_widgets/custom_text.dart';

class WelcomeLoginScreen extends StatelessWidget {
  const WelcomeLoginScreen({super.key});

  //TODO: Implement the login screen

  @override
  Widget build(BuildContext context) {
    final localizations = IslamMobLocalizations.of(context);
    final navigator = Navigator.of(context, rootNavigator: true);

    return BlocProvider(
      create: (context) => WelcomeLoginBloc(),
      child: Scaffold(
        appBar: CustomAppBar(title: localizations.login),
        body: BlocListener<WelcomeLoginBloc, WelcomeLoginState>(
          listenWhen: (previous, current) =>
              previous.proccessState != current.proccessState,
          listener: (context, state) {
            state.proccessState.mapOrNull(
              success: (success) {
                if (success.hasAccount) {
                  navigator.pushNamedAndRemoveUntil(
                    RoutesConstants.mainContainer,
                    (Route<dynamic> route) => false,
                  );
                } else {
                  FirebaseAnalyticsRepository.logEvent(
                    name: "RegisterScreenFromWelcomeLoginScreen",
                  );
                  navigator.pushNamed(RoutesConstants.registerScreen);
                }
              },
            );
          },
          child: SafeArea(
            child: GestureDetector(
              onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const WelcomeLoginHeader(),
                    const SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.only(
                        bottom: 16,
                        left: 16,
                        right: 16,
                      ),
                      child: Container(
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          boxShadow: [
                            BoxShadow(
                              color: Color.fromARGB(15, 4, 3, 3),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset: Offset(1, 4),
                            ),
                          ],
                        ),
                        child: BlocBuilder<WelcomeLoginBloc, WelcomeLoginState>(
                          buildWhen: (previous, current) =>
                              previous.proccessState != current.proccessState,
                          builder: (context, state) {
                            return state.proccessState.mapOrNull(
                                  success: (success) => const SizedBox(),
                                  loading: (_) => const Padding(
                                    padding: EdgeInsets.all(20),
                                    child: Center(
                                      child: CircularProgressIndicator(
                                        valueColor:
                                            AlwaysStoppedAnimation<Color>(
                                              Color(0xff292929),
                                            ),
                                      ),
                                    ),
                                  ),
                                  error: (error) => bodyOfLogin(
                                    context,
                                    localizations,
                                    error.message,
                                    navigator,
                                  ),
                                  idle: (_) => bodyOfLogin(
                                    context,
                                    localizations,
                                    null,
                                    navigator,
                                  ),
                                ) ??
                                const SizedBox();
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget bodyOfLogin(
    BuildContext context,
    IslamMobLocalizations localizations,
    String? errorMessage,
    NavigatorState navigator,
  ) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              right: 16,
              left: 16,
              bottom: 8,
              top: 8,
            ),
            child: Center(
              child: CustomText(
                title: errorMessage ?? "",
                fontSize: 16,
                maxLines: 2,
                textAlign: TextAlign.center,
                color: Colors.red,
              ),
            ),
          ),
          const SizedBox(height: 16),
          // SocialButton(
          //   iconName: "assets/images/facebook_ic.svg",
          //   buttonLabel: localizations.continue_facebook,
          //   buttonColor: const Color(0xFF4267B2),
          //   buttonCallBack: () => context.read<WelcomeLoginBloc>().add(const WelcomeLoginEvent.facebookSignin()),
          // ),
          // const SizedBox(height: 16),
          // SocialButton(
          //   iconName: "assets/images/google_ic.svg",
          //   buttonLabel: localizations.continue_google,
          //   labelColor: const Color(0xFF616161),
          //   borderColor: const Color(0xFFE0E0E0),
          //   buttonCallBack: () => context.read<WelcomeLoginBloc>().add(const WelcomeLoginEvent.googleSignin()),
          // ),
          // const SizedBox(height: 16),
          // SocialButton(
          //   iconName: "assets/images/Apple_logo_white.svg",
          //   buttonLabel: localizations.continue_apple,
          //   buttonColor: Colors.black,
          //   buttonCallBack: () => context.read<WelcomeLoginBloc>().add(
          //     const WelcomeLoginEvent.appleSignin(),
          //   ),
          // ),
          // const SizedBox(height: 16),
          CustomButton(
            padding: EdgeInsets.zero,
            title: localizations.manual_login,
            isEnabled: true,
            onTap: () => navigator.pushNamed(RoutesConstants.manualLoginScreen),
          ),
          const SizedBox(height: 25),
          const TermsAndPrivacy(),
        ],
      ),
    );
  }
}
