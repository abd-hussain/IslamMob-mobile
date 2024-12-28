import 'package:country_flags/country_flags.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islam_app/models/language.dart';
import 'package:islam_app/presentation/inboarding/bloc/language/language_bloc.dart';
import 'package:custom_widgets/widgets/custom_text.dart';

class LanguageTile extends StatelessWidget {
  const LanguageTile({super.key, required this.language});

  final LanguageModel language;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16, bottom: 10),
      child: InkWell(
        onTap: () async {
          context
              .read<LanguageBloc>()
              .add(LanguageEvent.changeSelectedLanguage(type: language));
        },
        child: Container(
          height: 50,
          width: MediaQuery.of(context).size.width - 16,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(5),
            boxShadow: const [
              BoxShadow(
                color: Colors.black12,
                blurRadius: 5,
                offset: Offset(0, 2),
              ),
            ],
          ),
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
                BlocBuilder<LanguageBloc, LanguageState>(
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
