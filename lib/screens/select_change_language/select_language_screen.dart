import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islam_app/my_app/islam_mob_app/routes.dart';
import 'package:islam_app/screens/select_change_language/bloc/change_language_bloc.dart';
import 'package:islam_app/screens/select_change_language/widgets/list_of_languages_view.dart';
import 'package:islam_app/screens/select_change_language/widgets/title_table_widget.dart';
import 'package:islam_app/shared_widgets/custom_button.dart';
import 'package:islam_app/shared_widgets/custom_text.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SelectLanguageScreen extends StatefulWidget {
  const SelectLanguageScreen({super.key});

  @override
  State<SelectLanguageScreen> createState() => _SelectLanguageScreenState();
}

class _SelectLanguageScreenState extends State<SelectLanguageScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ChangeLanguageBloc(),
      child: Scaffold(
        backgroundColor: const Color(0xffF5F6F7),
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
              Center(
                child: Image.asset(
                  "assets/images/logoz/logo.png",
                  height: 100,
                  width: 150,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16, right: 16, top: 5),
                child: Center(
                  child: CustomText(
                    title: AppLocalizations.of(context)!.appName,
                    fontSize: 20,
                    textColor: const Color(0xff292929),
                    fontWeight: FontWeight.bold,
                    textAlign: TextAlign.center,
                    maxLins: 3,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16, right: 16),
                child: Center(
                  child: CustomText(
                    title: AppLocalizations.of(context)!.appshortdesc,
                    fontSize: 12,
                    textColor: const Color(0xff292929),
                    fontWeight: FontWeight.bold,
                    textAlign: TextAlign.center,
                    maxLins: 3,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(left: 30, right: 30),
                child: Container(height: 1, color: const Color(0xff292929)),
              ),
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
                          enableButton: true,
                          buttonTitle:
                              state.selectedLanguage!.selectButtonTitle,
                          onTap: () async {
                            context
                                .read<ChangeLanguageBloc>()
                                .setLanguageInStorage(context,
                                    state.selectedLanguage!.languageCode);
                            final navigator =
                                Navigator.of(context, rootNavigator: true);

                            await navigator.pushNamedAndRemoveUntil(
                              RoutesConstants.mainContainer,
                              (Route<dynamic> route) => false,
                            );
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
