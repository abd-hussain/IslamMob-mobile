import 'package:country_flags/country_flags.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islam_app/domain/model/language.dart';
import 'package:islam_app/presentation/change_language/bloc/change_language_bloc.dart';
import 'package:islam_app/shared_widgets/custom_text.dart';

class ListOfLanguageTile extends StatelessWidget {
  const ListOfLanguageTile({super.key, required this.language});

  final LanguageModel language;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16, bottom: 10),
      child: InkWell(
        onTap: () async {
          context.read<ChangeLanguageBloc>().add(
                ChangeLanguageEvent.changeSelectedCheckBoxLanguage(
                  type: language,
                ),
              );
        },
        child: Container(
          height: 50,
          width: MediaQuery.of(context).size.width - 16,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(5)),
          child: Padding(
            padding: const EdgeInsets.only(left: 8, right: 8),
            child: Row(
              children: [
                SizedBox(
                  width: 40,
                  height: 30,
                  child: CountryFlag.fromCountryCode(
                    language.flagCode,
                    shape: const RoundedRectangle(4),
                  ),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: CustomText(
                    title: language.name,
                    fontSize: 16,
                    color: const Color(0xff034061),
                  ),
                ),
                BlocBuilder<ChangeLanguageBloc, ChangeLanguageState>(
                  buildWhen: (previous, current) {
                    return previous.selectedLanguage !=
                        current.selectedLanguage;
                  },
                  builder: (context, state) {
                    return Icon(
                      state.selectedLanguage?.flagCode == language.flagCode
                          ? Icons.check_box_outlined
                          : Icons.check_box_outline_blank_rounded,
                      size: 25,
                    );
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
