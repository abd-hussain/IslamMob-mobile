import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islam_app/screens/inboarding/widgets/language/bloc/language_bloc.dart';
import 'package:islam_app/screens/inboarding/widgets/sub_widgets/language_tile.dart';
import 'package:islam_app/screens/select_change_language/widgets/title_table_widget.dart';
import 'package:islam_app/shared_widgets/custom_button.dart';
import 'package:islam_app/utils/constants/app_constant.dart';
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
          Lottie.asset(
            'assets/lottie/Animation - 1731435678253.json',
            height: 200,
          ),
          Expanded(
            child: ListView.builder(
                itemCount: AppConstant.languages.length,
                itemBuilder: (context, index) {
                  return LanguageTile(language: AppConstant.languages[index]);
                }),
          ),
          BlocBuilder<LanguageBloc, LanguageState>(
            buildWhen: (previous, current) {
              return previous.selectedLanguage != current.selectedLanguage;
            },
            builder: (context, state) {
              return state.selectedLanguage == null
                  ? const SizedBox()
                  : CustomButton(
                      enableButton: true,
                      buttonTitle: state.selectedLanguage!.selectButtonTitle,
                      onTap: () => onSelectLanguage(
                          state.selectedLanguage!.languageCode),
                    );
            },
          ),
        ],
      ),
    );
  }
}
