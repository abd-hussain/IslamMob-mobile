import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islam_app/l10n/gen/app_localizations.dart';
import 'package:islam_app/presentation/edit_profile/bloc/edit_profile_bloc.dart';
import 'package:islam_app/shared_widgets/appbar/custom_appbar.dart';
import 'package:islam_app/shared_widgets/country_field.dart';
import 'package:islam_app/shared_widgets/custom_button.dart';
import 'package:islam_app/shared_widgets/custom_text.dart';
import 'package:islam_app/shared_widgets/custom_textfield.dart';
import 'package:islam_app/shared_widgets/date_of_birth_field.dart';
import 'package:islam_app/shared_widgets/email_field_view.dart';
import 'package:islam_app/shared_widgets/gender_field.dart';
import 'package:islam_app/shared_widgets/image_holder/image_holder_field.dart';

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({super.key});

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController fullNameController = TextEditingController();
  final TextEditingController genderController = TextEditingController();
  final TextEditingController countryController = TextEditingController();
  String countryFlagValue = "";
  final TextEditingController dateOfBirthController = TextEditingController();
  File? profileImage;
  bool isUserChangeProfileImage = false;
  @override
  Widget build(BuildContext context) {
    final localizations = IslamMobLocalizations.of(context);
    return BlocProvider(
      create: (context) =>
          EditProfileBloc()..add(const EditProfileEvent.initialValues()),
      child: Scaffold(
        appBar: CustomAppBar(title: localizations.registerAccount),
        body: BlocListener<EditProfileBloc, EditProfileState>(
          listenWhen: (previous, current) =>
              current.processState == const EditProfileProcessState.success(),
          listener: (context, state) {
            Navigator.of(context, rootNavigator: true).pop();
          },
          child: SafeArea(
            child: GestureDetector(
              onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
              child: SingleChildScrollView(
                child: Padding(
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
                    child: BlocBuilder<EditProfileBloc, EditProfileState>(
                      buildWhen: (previous, current) =>
                          previous.processState != current.processState,
                      builder: (context, state) {
                        switch (state.processState) {
                          case EditProfileProcessStateLoading():
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
                          case EditProfileProcessStateSuccess():
                            return const SizedBox();
                          case EditProfileProcessStateError():
                          case EditProfileProcessStateIdl():
                            if (state.originalProfileInfo != null) {
                              fullNameController.text =
                                  state.originalProfileInfo?.fullName ?? "";
                              dateOfBirthController.text =
                                  state.originalProfileInfo?.dateOfBirth ?? "";
                              countryController.text =
                                  state.originalProfileInfo?.country ?? "";
                              emailController.text =
                                  state.originalProfileInfo?.emailAddress ?? "";
                              genderController.text =
                                  state.originalProfileInfo?.gender ?? "";
                            }

                            return Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const SizedBox(height: 20),
                                Center(
                                  child: ImageHolderField(
                                    imageUrl: profileImage == null
                                        ? state.originalProfileInfo?.profilePic
                                        : null,
                                    initialFile: profileImage,
                                    onImageChanged: (file) {
                                      isUserChangeProfileImage = true;
                                      profileImage = file;
                                      context.read<EditProfileBloc>().add(
                                        EditProfileEvent.updateButtonEnablity(
                                          fullName: fullNameController.text,
                                          dateOfBirth:
                                              dateOfBirthController.text,
                                          gender: genderController.text,
                                          country: countryController.text,
                                          countryFlag: countryFlagValue,
                                          profilePic: profileImage,
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
                                    LengthLimitingTextInputFormatter(100),
                                  ],
                                  // onChange: (text) {},
                                  onChange: (text) =>
                                      context.read<EditProfileBloc>().add(
                                        EditProfileEvent.updateButtonEnablity(
                                          fullName: fullNameController.text,
                                          dateOfBirth:
                                              dateOfBirthController.text,
                                          gender: genderController.text,
                                          country: countryController.text,
                                          countryFlag: countryFlagValue,
                                          profilePic: profileImage,
                                        ),
                                      ),
                                  onEditingComplete: () => FocusManager
                                      .instance
                                      .primaryFocus
                                      ?.unfocus(),
                                ),
                                const SizedBox(height: 16),
                                GenderField(
                                  controller: genderController,
                                  onChange: (p0) =>
                                      context.read<EditProfileBloc>().add(
                                        EditProfileEvent.updateButtonEnablity(
                                          fullName: fullNameController.text,
                                          dateOfBirth:
                                              dateOfBirthController.text,
                                          gender: genderController.text,
                                          country: countryController.text,
                                          countryFlag: countryFlagValue,
                                          profilePic: profileImage,
                                        ),
                                      ),
                                ),
                                const SizedBox(height: 16),
                                DateOfBirthField(
                                  controller: dateOfBirthController,
                                  onChange: (p0) =>
                                      context.read<EditProfileBloc>().add(
                                        EditProfileEvent.updateButtonEnablity(
                                          fullName: fullNameController.text,
                                          dateOfBirth:
                                              dateOfBirthController.text,
                                          gender: genderController.text,
                                          country: countryController.text,
                                          countryFlag: countryFlagValue,
                                          profilePic: profileImage,
                                        ),
                                      ),
                                ),
                                const SizedBox(height: 16),
                                CountryField(
                                  controller: countryController,
                                  onChange:
                                      ({
                                        required countryFlag,
                                        required countryName,
                                      }) {
                                        countryFlagValue = countryFlag;
                                        context.read<EditProfileBloc>().add(
                                          EditProfileEvent.updateButtonEnablity(
                                            fullName: fullNameController.text,
                                            dateOfBirth:
                                                dateOfBirthController.text,
                                            gender: genderController.text,
                                            country: countryController.text,
                                            countryFlag: countryFlagValue,
                                            profilePic: profileImage,
                                          ),
                                        );
                                      },
                                ),
                                const SizedBox(height: 16),
                                EmailFieldView(
                                  controller: emailController,
                                  isEnabled: false,
                                  onChange: (p0) {},
                                  onEditingComplete: () => FocusManager
                                      .instance
                                      .primaryFocus
                                      ?.unfocus(),
                                ),
                                const SizedBox(height: 16),
                                Padding(
                                  padding: const EdgeInsets.only(
                                    right: 16,
                                    left: 16,
                                    bottom: 8,
                                  ),
                                  child: Center(
                                    child:
                                        BlocBuilder<
                                          EditProfileBloc,
                                          EditProfileState
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
                                BlocBuilder<EditProfileBloc, EditProfileState>(
                                  buildWhen: (previous, current) =>
                                      previous.isButtonEnabled !=
                                      current.isButtonEnabled,
                                  builder: (context, buttonState) {
                                    return CustomButton(
                                      padding: const EdgeInsets.only(
                                        left: 16,
                                        right: 16,
                                      ),
                                      title: localizations.save,
                                      isEnabled: buttonState.isButtonEnabled,
                                      onTap: () {
                                        context.read<EditProfileBloc>().add(
                                          EditProfileEvent.editPressed(
                                            localizations: localizations,
                                            isUserChangeProfileImage:
                                                isUserChangeProfileImage,
                                            fullName: fullNameController.text,
                                            dateOfBirth:
                                                dateOfBirthController.text,
                                            country: countryController.text,
                                            countryFlag: countryFlagValue,
                                            gender: genderController.text,
                                            profilePic: profileImage,
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
              ),
            ),
          ),
        ),
      ),
    );
  }
}
