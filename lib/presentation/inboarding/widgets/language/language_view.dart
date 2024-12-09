import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islam_app/presentation/inboarding/widgets/language/bloc/language_bloc.dart';
import 'package:islam_app/presentation/inboarding/widgets/sub_widgets/language_tile.dart';
import 'package:islam_app/presentation/change_language/widgets/title_table_widget.dart';
import 'package:islam_app/shared_widgets/custom_button.dart';
import 'package:islam_app/core/constants/app_constant.dart';
import 'package:lottie/lottie.dart';

class LanguageInBoardingView extends StatelessWidget {
  final Function(String langCode) onSelectLanguage;
  const LanguageInBoardingView({super.key, required this.onSelectLanguage});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LanguageBloc(),
      child: Column(
        children: [
          const TitleTableWidget(),
          _buildAnimation(),
          _buildLanguageList(),
          _buildSelectButton(context),
        ],
      ),
    );
  }

  /// Builds the animation widget
  Widget _buildAnimation() {
    return Lottie.asset(
      'assets/lottie/Animation - 1731435678253.json',
      height: 200,
    );
  }

  /// Builds the language list view
  Widget _buildLanguageList() {
    return Expanded(
      child: ListView.builder(
        itemCount: AppConstant.languages.length,
        itemBuilder: (context, index) {
          return LanguageTile(language: AppConstant.languages[index]);
        },
      ),
    );
  }

  /// Builds the button to select a language
  Widget _buildSelectButton(BuildContext context) {
    return BlocBuilder<LanguageBloc, LanguageState>(
      buildWhen: (previous, current) =>
          previous.selectedLanguage != current.selectedLanguage,
      builder: (context, state) {
        if (state.selectedLanguage == null) return const SizedBox();

        return CustomButton(
          isEnabled: true,
          title: state.selectedLanguage!.selectButtonTitle,
          onTap: () => onSelectLanguage(state.selectedLanguage!.languageCode),
        );
      },
    );
  }
}
