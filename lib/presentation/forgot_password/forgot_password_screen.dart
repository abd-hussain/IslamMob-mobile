import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islam_app/l10n/gen/app_localizations.dart';
import 'package:islam_app/my_app/islam_mob_app/routes.dart';
import 'package:islam_app/presentation/forgot_password/bloc/forgot_password_bloc.dart';
import 'package:islam_app/shared_widgets/appbar/custom_appbar.dart';
import 'package:islam_app/shared_widgets/custom_button.dart';
import 'package:islam_app/shared_widgets/custom_text.dart';
import 'package:islam_app/shared_widgets/email_field_view.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final localizations = IslamMobLocalizations.of(context);
    final TextEditingController emailController = TextEditingController();

    return BlocProvider(
      create: (context) => ForgotPasswordBloc(),
      child: Scaffold(
        appBar: CustomAppBar(title: localizations.forgotpassword),
        body: BlocListener<ForgotPasswordBloc, ForgotPasswordState>(
          listenWhen: (previous, current) =>
              current.processState ==
              const ForgotPasswordProcessState.success(),
          listener: (context, state) async {
            await Navigator.of(
              context,
              rootNavigator: true,
            ).pushNamedAndRemoveUntil(
              RoutesConstants.forgotSuccessPasswordScreen,
              arguments: {"email": emailController.text},
              (Route<dynamic> route) => true,
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
                        child: BlocBuilder<ForgotPasswordBloc, ForgotPasswordState>(
                          buildWhen: (previous, current) =>
                              previous.processState != current.processState,
                          builder: (context, state) {
                            switch (state.processState) {
                              case ForgotPasswordProcessStateLoading():
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
                              case ForgotPasswordProcessStateSuccess():
                                return const SizedBox();
                              case ForgotPasswordProcessStateIdl():
                              case ForgotPasswordProcessStateError():
                                return Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const SizedBox(height: 20),
                                    EmailFieldView(
                                      controller: emailController,
                                      onChange: (p0) {
                                        context.read<ForgotPasswordBloc>().add(
                                          ForgotPasswordEvent.updateButtonEnablity(
                                            localizations: localizations,
                                            email: emailController.text,
                                          ),
                                        );
                                      },
                                      onEditingComplete: () => FocusManager
                                          .instance
                                          .primaryFocus
                                          ?.unfocus(),
                                    ),
                                    const SizedBox(height: 8),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                        right: 16,
                                        left: 16,
                                      ),
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
                                    const SizedBox(height: 8),
                                    BlocBuilder<
                                      ForgotPasswordBloc,
                                      ForgotPasswordState
                                    >(
                                      buildWhen: (previous, current) =>
                                          previous.isForgotButtonEnabled !=
                                          current.isForgotButtonEnabled,
                                      builder: (context, state) {
                                        return CustomButton(
                                          padding: const EdgeInsets.only(
                                            left: 16,
                                            right: 16,
                                          ),
                                          title: localizations.submit,
                                          isEnabled:
                                              state.isForgotButtonEnabled,
                                          onTap: () {
                                            context.read<ForgotPasswordBloc>().add(
                                              ForgotPasswordEvent.forgotPressed(
                                                localizations: localizations,
                                                email: emailController.text,
                                              ),
                                            );
                                          },
                                        );
                                      },
                                    ),
                                    const SizedBox(height: 20),
                                  ],
                                );
                            }
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
}
