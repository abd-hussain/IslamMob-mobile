import 'package:firebase_manager/firebase_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islam_app/l10n/gen/app_localizations.dart';
import 'package:islam_app/my_app/islam_mob_app/routes.dart';
import 'package:islam_app/presentation/login/bloc/login_bloc.dart';
import 'package:islam_app/shared_widgets/appbar/custom_appbar.dart';
import 'package:islam_app/shared_widgets/custom_button.dart';
import 'package:islam_app/shared_widgets/custom_text.dart';
import 'package:islam_app/shared_widgets/email_field_view.dart';
import 'package:islam_app/shared_widgets/password_field/password_field_view.dart';
import 'package:islam_app/shared_widgets/save_cradintial_box/save_cradintial_box_view.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final localizations = IslamMobLocalizations.of(context);
    final TextEditingController emailController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();
    final bool savingCradintialState = false;

    final navigator = Navigator.of(context, rootNavigator: true);

    return BlocProvider(
      create: (context) => LoginBloc()..add(const LoginEvent.initialValues()),
      child: Scaffold(
        appBar: CustomAppBar(title: localizations.login),
        body: BlocListener<LoginBloc, LoginState>(
          listenWhen: (previous, current) =>
              current.processState == const LoginProcessState.success(),
          listener: (context, state) {
            Navigator.of(context, rootNavigator: true).pushNamedAndRemoveUntil(
              RoutesConstants.mainContainer,
              (Route<dynamic> route) => false,
            );
          },
          child: SafeArea(
            child: GestureDetector(
              onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/images/logoz/logo.png",
                      height: 150,
                      width: 150,
                    ),
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
                        child: BlocBuilder<LoginBloc, LoginState>(
                          buildWhen: (previous, current) =>
                              previous.processState != current.processState,
                          builder: (context, state) {
                            switch (state.processState) {
                              case LoginProcessLoading():
                                return const Padding(
                                  padding: EdgeInsets.all(20),
                                  child: Center(
                                    child: CircularProgressIndicator(
                                      valueColor: AlwaysStoppedAnimation<Color>(
                                        Color(0xff292929),
                                      ),
                                    ),
                                  ),
                                );
                              case LoginProcessSuccess():
                                return const SizedBox();
                              case LoginProcessIdl(
                                :final email,
                                :final password,
                              ):
                                emailController.text = email;
                                passwordController.text = password;
                                return bodyOfLogin(
                                  emailController,
                                  context,
                                  localizations,
                                  passwordController,
                                  savingCradintialState,
                                  state,
                                  navigator,
                                );
                              case LoginProcessError():
                                return bodyOfLogin(
                                  emailController,
                                  context,
                                  localizations,
                                  passwordController,
                                  savingCradintialState,
                                  state,
                                  navigator,
                                );
                            }
                          },
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(50, 16, 50, 0),
                      child: CustomText(
                        textAlign: TextAlign.center,
                        title: localizations.dontHaveAccount,
                        color: const Color(0xff212C34),
                        fontSize: 14,
                      ),
                    ),
                    TextButton(
                      onPressed: () async {
                        await FirebaseAnalyticsRepository.logEvent(
                          name: "RegisterScreenFromLoginScreen",
                        );
                        await navigator.pushNamed(
                          RoutesConstants.registerScreen,
                        );
                      },
                      child: CustomText(
                        title: localizations.registerAccount,
                        fontSize: 14,
                        color: const Color(0xff0059FF),
                        fontWeight: FontWeight.bold,
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

  Column bodyOfLogin(
    TextEditingController emailController,
    BuildContext context,
    IslamMobLocalizations localizations,
    TextEditingController passwordController,
    bool savingCradintialState,
    LoginState state,
    NavigatorState navigator,
  ) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 30),
        EmailFieldView(
          controller: emailController,
          onChange: (p0) {
            context.read<LoginBloc>().add(
              LoginEvent.updateLoginButtonEnablity(
                localizations: localizations,
                email: emailController.text,
                password: passwordController.text,
              ),
            );
          },
          onEditingComplete: () =>
              FocusManager.instance.primaryFocus?.unfocus(),
        ),
        const SizedBox(height: 20),
        PasswordFieldView(
          controller: passwordController,
          hintMessage: IslamMobLocalizations.of(context).password,
          onChange: (p0) {
            context.read<LoginBloc>().add(
              LoginEvent.updateLoginButtonEnablity(
                localizations: localizations,
                email: emailController.text,
                password: passwordController.text,
              ),
            );
          },
          onEditingComplete: () =>
              FocusManager.instance.primaryFocus?.unfocus(),
        ),
        SaveCradintialBoxView(
          onChange: (value) {
            savingCradintialState = value;
          },
        ),
        Padding(
          padding: const EdgeInsets.only(right: 16, left: 16, bottom: 8),
          child: Center(
            child: CustomText(
              title: state.errorMessage,
              fontSize: 14,
              maxLines: 2,
              textAlign: TextAlign.center,
              color: Colors.red,
            ),
          ),
        ),
        BlocBuilder<LoginBloc, LoginState>(
          buildWhen: (previous, current) =>
              previous.isLoginButtonEnabled != current.isLoginButtonEnabled,
          builder: (context, state) {
            return CustomButton(
              padding: const EdgeInsets.only(left: 16, right: 16),
              title: localizations.login,
              isEnabled: state.isLoginButtonEnabled,
              onTap: () {
                context.read<LoginBloc>().add(
                  LoginEvent.loginPressed(
                    email: emailController.text,
                    password: passwordController.text,
                    savedCradintial: savingCradintialState,
                  ),
                );
              },
            );
          },
        ),
        Center(
          child: TextButton(
            onPressed: () async {
              await FirebaseAnalyticsRepository.logEvent(
                name: "ForgotPasswordScreenFromLoginScreen",
              );
              await navigator.pushNamed(RoutesConstants.forgotPasswordScreen);
            },
            child: CustomText(
              title: localizations.forgotpassword,
              fontSize: 14,
              color: Colors.blue,
            ),
          ),
        ),
      ],
    );
  }
}
