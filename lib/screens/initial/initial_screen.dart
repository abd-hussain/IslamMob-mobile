import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islam_app/islam_mob_app/routes.dart';
import 'package:islam_app/screens/initial/bloc/initial_screen_bloc.dart';
import 'package:islam_app/screens/initial/widgets/list_of_languages_view.dart';
import 'package:islam_app/screens/initial/widgets/title_table_widget.dart';
import 'package:islam_app/shared_widgets/custom_button.dart';
import 'package:islam_app/shared_widgets/custom_text.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class InitialScreen extends StatefulWidget {
  const InitialScreen({super.key});

  @override
  State<InitialScreen> createState() => _InitialScreenState();
}

class _InitialScreenState extends State<InitialScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => InitialScreenBloc(),
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
                    textColor: const Color(0xff034061),
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
                    textColor: const Color(0xff034061),
                    fontWeight: FontWeight.bold,
                    textAlign: TextAlign.center,
                    maxLins: 3,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(left: 30, right: 30),
                child: Container(height: 1, color: const Color(0xff034061)),
              ),
              const SizedBox(height: 20),
              const TitleTableWidget(),
              const ListOfLanguagesView(),
              BlocBuilder<InitialScreenBloc, InitialScreenState>(
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
                                .read<InitialScreenBloc>()
                                .setLanguageInStorage(
                                    context, state.selectedLanguage!.code);
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
