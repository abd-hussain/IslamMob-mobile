import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islam_app/l10n/gen/app_localizations.dart';
import 'package:islam_app/my_app/islam_mob_app/routes.dart';
import 'package:islam_app/presentation/register/bloc/register_bloc.dart';
import 'package:islam_app/shared_widgets/appbar/custom_appbar.dart';
import 'package:islam_app/shared_widgets/country_field.dart';
import 'package:islam_app/shared_widgets/custom_button.dart';
import 'package:islam_app/shared_widgets/custom_text.dart';
import 'package:islam_app/shared_widgets/custom_textfield.dart';
import 'package:islam_app/shared_widgets/date_of_birth_field.dart';
import 'package:islam_app/shared_widgets/email_field_view.dart';
import 'package:islam_app/shared_widgets/gender_field.dart';
import 'package:islam_app/shared_widgets/image_holder/image_holder_field.dart';
import 'package:islam_app/shared_widgets/password_field/password_field_view.dart';
import 'package:islam_app/shared_widgets/save_cradintial_box/save_cradintial_box_view.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final localizations = IslamMobLocalizations.of(context);
    final TextEditingController emailController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();
    final TextEditingController confirmPasswordController =
        TextEditingController();
    final TextEditingController fullNameController = TextEditingController();
    final TextEditingController genderController = TextEditingController();
    final TextEditingController countryController = TextEditingController();
    final TextEditingController dateOfBirthController = TextEditingController();
    File? profileImage;
    bool savingCradintialState = false;

    return BlocProvider(
      create: (context) => RegisterBloc(),
      child: Scaffold(
        appBar: CustomAppBar(title: localizations.registerAccount),
        body: BlocListener<RegisterBloc, RegisterState>(
          listenWhen: (previous, current) =>
              current.processState == const RegisterProcessState.success(),
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
                      height: 100,
                      width: 100,
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
                        child: BlocBuilder<RegisterBloc, RegisterState>(
                          buildWhen: (previous, current) =>
                              previous.processState != current.processState,
                          builder: (context, state) {
                            if (state.processState ==
                                const RegisterProcessState.loading()) {
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
                            } else if (state.processState ==
                                const RegisterProcessState.success()) {
                              return const SizedBox();
                            }
                            return Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const SizedBox(height: 20),
                                Center(
                                  child: ImageHolderField(
                                    initialFile: profileImage,
                                    imageUrl: null,
                                    onImageChanged: (file) {
                                      profileImage = file;
                                      context.read<RegisterBloc>().add(
                                        RegisterEvent.updateLoginButtonEnablity(
                                          localizations: localizations,
                                          profilePic: profileImage,
                                          email: emailController.text,
                                          password: passwordController.text,
                                          confirmPassword:
                                              confirmPasswordController.text,
                                          gender: genderController.text,
                                          dateOfBirth:
                                              dateOfBirthController.text,
                                          fullName: fullNameController.text,
                                          country: countryController.text,
                                        ),
                                      );
                                    },
                                  ),
                                ),
                                const SizedBox(height: 16),
                                CustomTextField(
                                  controller: fullNameController,
                                  hintText: localizations.fullNameProfile,
                                  keyboardType: TextInputType.name,
                                  inputFormatters: [
                                    LengthLimitingTextInputFormatter(45),
                                  ],
                                  onChange: (text) {
                                    context.read<RegisterBloc>().add(
                                      RegisterEvent.updateLoginButtonEnablity(
                                        localizations: localizations,
                                        profilePic: profileImage,
                                        email: emailController.text,
                                        password: passwordController.text,
                                        confirmPassword:
                                            confirmPasswordController.text,
                                        gender: genderController.text,
                                        dateOfBirth: dateOfBirthController.text,
                                        fullName: fullNameController.text,
                                        country: countryController.text,
                                      ),
                                    );
                                  },
                                  onEditingComplete: () => FocusManager
                                      .instance
                                      .primaryFocus
                                      ?.unfocus(),
                                ),
                                const SizedBox(height: 16),
                                GenderField(
                                  controller: genderController,
                                  onChange: (gender) {
                                    context.read<RegisterBloc>().add(
                                      RegisterEvent.updateLoginButtonEnablity(
                                        localizations: localizations,
                                        profilePic: profileImage,
                                        email: emailController.text,
                                        password: passwordController.text,
                                        confirmPassword:
                                            confirmPasswordController.text,
                                        gender: gender,
                                        dateOfBirth: dateOfBirthController.text,
                                        fullName: fullNameController.text,
                                        country: countryController.text,
                                      ),
                                    );
                                  },
                                ),
                                const SizedBox(height: 16),
                                DateOfBirthField(
                                  controller: dateOfBirthController,
                                  onChange: (p0) {
                                    context.read<RegisterBloc>().add(
                                      RegisterEvent.updateLoginButtonEnablity(
                                        localizations: localizations,
                                        profilePic: profileImage,
                                        email: emailController.text,
                                        password: passwordController.text,
                                        confirmPassword:
                                            confirmPasswordController.text,
                                        gender: genderController.text,
                                        dateOfBirth: dateOfBirthController.text,
                                        fullName: fullNameController.text,
                                        country: countryController.text,
                                      ),
                                    );
                                  },
                                ),
                                const SizedBox(height: 16),
                                CountryField(
                                  controller: countryController,
                                  onChange: (p0) {
                                    context.read<RegisterBloc>().add(
                                      RegisterEvent.updateLoginButtonEnablity(
                                        localizations: localizations,
                                        profilePic: profileImage,
                                        email: emailController.text,
                                        password: passwordController.text,
                                        confirmPassword:
                                            confirmPasswordController.text,
                                        gender: genderController.text,
                                        dateOfBirth: dateOfBirthController.text,
                                        fullName: fullNameController.text,
                                        country: countryController.text,
                                      ),
                                    );
                                  },
                                ),
                                const SizedBox(height: 16),
                                EmailFieldView(
                                  controller: emailController,
                                  onChange: (text) {
                                    context.read<RegisterBloc>().add(
                                      RegisterEvent.updateLoginButtonEnablity(
                                        localizations: localizations,
                                        profilePic: profileImage,
                                        email: emailController.text,
                                        password: passwordController.text,
                                        confirmPassword:
                                            confirmPasswordController.text,
                                        gender: genderController.text,
                                        dateOfBirth: dateOfBirthController.text,
                                        fullName: fullNameController.text,
                                        country: countryController.text,
                                      ),
                                    );
                                  },
                                  onEditingComplete: () => FocusManager
                                      .instance
                                      .primaryFocus
                                      ?.unfocus(),
                                ),
                                const SizedBox(height: 16),
                                PasswordFieldView(
                                  controller: passwordController,
                                  hintMessage: localizations.password,
                                  onChange: (p0) {
                                    context.read<RegisterBloc>().add(
                                      RegisterEvent.updateLoginButtonEnablity(
                                        localizations: localizations,
                                        profilePic: profileImage,
                                        email: emailController.text,
                                        password: passwordController.text,
                                        confirmPassword:
                                            confirmPasswordController.text,
                                        gender: genderController.text,
                                        dateOfBirth: dateOfBirthController.text,
                                        fullName: fullNameController.text,
                                        country: countryController.text,
                                      ),
                                    );
                                  },
                                  onEditingComplete: () => FocusManager
                                      .instance
                                      .primaryFocus
                                      ?.unfocus(),
                                ),
                                const SizedBox(height: 16),
                                PasswordFieldView(
                                  controller: confirmPasswordController,
                                  hintMessage: localizations.confirmPassword,
                                  onChange: (p0) {
                                    context.read<RegisterBloc>().add(
                                      RegisterEvent.updateLoginButtonEnablity(
                                        localizations: localizations,
                                        profilePic: profileImage,
                                        email: emailController.text,
                                        password: passwordController.text,
                                        confirmPassword:
                                            confirmPasswordController.text,
                                        gender: genderController.text,
                                        dateOfBirth: dateOfBirthController.text,
                                        fullName: fullNameController.text,
                                        country: countryController.text,
                                      ),
                                    );
                                  },
                                  onEditingComplete: () => FocusManager
                                      .instance
                                      .primaryFocus
                                      ?.unfocus(),
                                ),
                                SaveCradintialBoxView(
                                  onChange: (value) =>
                                      savingCradintialState = value,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                    right: 16,
                                    left: 16,
                                    bottom: 8,
                                  ),
                                  child: Center(
                                    child:
                                        BlocBuilder<
                                          RegisterBloc,
                                          RegisterState
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
                                BlocBuilder<RegisterBloc, RegisterState>(
                                  buildWhen: (previous, current) =>
                                      previous.isRegisterButtonEnabled !=
                                      current.isRegisterButtonEnabled,
                                  builder: (context, state) {
                                    return CustomButton(
                                      padding: const EdgeInsets.only(
                                        left: 16,
                                        right: 16,
                                      ),
                                      title: localizations.registerAccount,
                                      isEnabled: state.isRegisterButtonEnabled,
                                      onTap: () {
                                        context.read<RegisterBloc>().add(
                                          RegisterEvent.registerPressed(
                                            fullName: fullNameController.text,
                                            email: emailController.text,
                                            password: passwordController.text,
                                            dateOfBirth:
                                                dateOfBirthController.text,
                                            country: countryController.text,
                                            gender: genderController.text,
                                            profilePic: profileImage,
                                            savedCradintial:
                                                savingCradintialState,
                                          ),
                                        );
                                      },
                                    );
                                  },
                                ),
                                const SizedBox(height: 20),
                              ],
                            );
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
