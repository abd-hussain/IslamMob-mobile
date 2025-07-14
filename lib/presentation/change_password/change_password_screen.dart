import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islam_app/l10n/gen/app_localizations.dart';
import 'package:islam_app/presentation/change_password/bloc/change_password_bloc.dart';
import 'package:islam_app/shared_widgets/appbar/custom_appbar.dart';
import 'package:islam_app/shared_widgets/custom_button.dart';
import 'package:islam_app/shared_widgets/custom_text.dart';
import 'package:islam_app/shared_widgets/password_field/password_field_view.dart';

class ChangePasswordScreen extends StatelessWidget {
  const ChangePasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final localizations = IslamMobLocalizations.of(context);
    final TextEditingController oldPasswordController = TextEditingController();
    final TextEditingController newPasswordController = TextEditingController();
    final TextEditingController confirmPasswordController =
        TextEditingController();

    return BlocProvider(
      create: (context) => ChangePasswordBloc(),
      child: Scaffold(
        appBar: CustomAppBar(title: localizations.changePassword),
        body: BlocListener<ChangePasswordBloc, ChangePasswordState>(
          listenWhen: (previous, current) =>
              current.processState ==
              const ChangePasswordProcessState.success(),
          listener: (context, state) {
            Navigator.of(context, rootNavigator: true).pop();
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
                        child: BlocBuilder<ChangePasswordBloc, ChangePasswordState>(
                          buildWhen: (previous, current) =>
                              previous.processState != current.processState,
                          builder: (context, state) {
                            switch (state.processState) {
                              case ChangePasswordProcessLoading():
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
                              case ChangePasswordProcessSuccess():
                                return const SizedBox();
                              case ChangePasswordProcessIdl():
                              case ChangePasswordProcessError():
                                return Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const SizedBox(height: 20),
                                    PasswordFieldView(
                                      controller: oldPasswordController,
                                      hintMessage: IslamMobLocalizations.of(
                                        context,
                                      ).oldPassword,
                                      onChange: (p0) => context
                                          .read<ChangePasswordBloc>()
                                          .add(
                                            ChangePasswordEvent.updateButtonEnablity(
                                              localizations: localizations,
                                              oldPassword:
                                                  oldPasswordController.text,
                                              newPassword:
                                                  newPasswordController.text,
                                              confirmPassword:
                                                  confirmPasswordController
                                                      .text,
                                            ),
                                          ),
                                      onEditingComplete: () => FocusManager
                                          .instance
                                          .primaryFocus
                                          ?.unfocus(),
                                    ),
                                    const SizedBox(height: 16),
                                    PasswordFieldView(
                                      controller: newPasswordController,
                                      hintMessage: IslamMobLocalizations.of(
                                        context,
                                      ).newPassword,
                                      onChange: (p0) => context
                                          .read<ChangePasswordBloc>()
                                          .add(
                                            ChangePasswordEvent.updateButtonEnablity(
                                              localizations: localizations,
                                              oldPassword:
                                                  oldPasswordController.text,
                                              newPassword:
                                                  newPasswordController.text,
                                              confirmPassword:
                                                  confirmPasswordController
                                                      .text,
                                            ),
                                          ),
                                      onEditingComplete: () => FocusManager
                                          .instance
                                          .primaryFocus
                                          ?.unfocus(),
                                    ),
                                    const SizedBox(height: 16),
                                    PasswordFieldView(
                                      controller: confirmPasswordController,
                                      hintMessage: IslamMobLocalizations.of(
                                        context,
                                      ).confirmPassword,
                                      onChange: (p0) => context
                                          .read<ChangePasswordBloc>()
                                          .add(
                                            ChangePasswordEvent.updateButtonEnablity(
                                              localizations: localizations,
                                              oldPassword:
                                                  oldPasswordController.text,
                                              newPassword:
                                                  newPasswordController.text,
                                              confirmPassword:
                                                  confirmPasswordController
                                                      .text,
                                            ),
                                          ),
                                      onEditingComplete: () => FocusManager
                                          .instance
                                          .primaryFocus
                                          ?.unfocus(),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                        right: 16,
                                        left: 16,
                                        bottom: 8,
                                        top: 8,
                                      ),
                                      child: Center(
                                        child:
                                            BlocBuilder<
                                              ChangePasswordBloc,
                                              ChangePasswordState
                                            >(
                                              buildWhen: (previous, current) =>
                                                  previous.errorMessage !=
                                                  current.errorMessage,
                                              builder: (context, state) {
                                                return CustomText(
                                                  title: state.errorMessage,
                                                  fontSize: 14,
                                                  maxLines: 2,
                                                  textAlign: TextAlign.center,
                                                  color: Colors.red,
                                                );
                                              },
                                            ),
                                      ),
                                    ),
                                    BlocBuilder<
                                      ChangePasswordBloc,
                                      ChangePasswordState
                                    >(
                                      buildWhen: (previous, current) =>
                                          previous.isButtonEnabled !=
                                          current.isButtonEnabled,
                                      builder: (context, state) {
                                        return CustomButton(
                                          padding: const EdgeInsets.only(
                                            left: 16,
                                            right: 16,
                                          ),
                                          title: localizations.save,
                                          isEnabled: state.isButtonEnabled,
                                          onTap: () => context
                                              .read<ChangePasswordBloc>()
                                              .add(
                                                ChangePasswordEvent.changePressed(
                                                  localizations: localizations,
                                                  oldPassword:
                                                      oldPasswordController
                                                          .text,
                                                  newPassword:
                                                      newPasswordController
                                                          .text,
                                                  confirmPassword:
                                                      confirmPasswordController
                                                          .text,
                                                ),
                                              ),
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
