import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islam_app/screens/select_change_language/bloc/change_language_bloc.dart';
import 'package:islam_app/screens/select_change_language/widgets/list_of_languages_view.dart';
import 'package:islam_app/screens/select_change_language/widgets/title_table_widget.dart';
import 'package:islam_app/shared_widgets/appbar/custom_appbar.dart';
import 'package:islam_app/shared_widgets/custom_button.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
//TODO: This tree need to be refactored

class ChangeLanguageScreen extends StatelessWidget {
  const ChangeLanguageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => ChangeLanguageBloc(),
      child: Scaffold(
        appBar: CustomAppBar(
          title: AppLocalizations.of(context)!.changeSelectedLanguage,
        ),
        backgroundColor: const Color(0xffF5F6F7),
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
              const TitleTableWidget(),
              const ListOfLanguagesView(),
              BlocBuilder<ChangeLanguageBloc, ChangeLanguageState>(
                buildWhen: (previous, current) {
                  return previous.selectedLanguage != current.selectedLanguage;
                },
                builder: (context, state) {
                  return state.selectedLanguage == null
                      ? const SizedBox()
                      : CustomButton(
                          isEnabled: true,
                          title: state.selectedLanguage!.selectButtonTitle,
                          onTap: () async {
                            context
                                .read<ChangeLanguageBloc>()
                                .setLanguageInStorage(context,
                                    state.selectedLanguage!.languageCode);
                            Navigator.pop(context);
                          },
                        );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
