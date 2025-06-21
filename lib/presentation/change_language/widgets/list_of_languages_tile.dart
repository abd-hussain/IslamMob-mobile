import 'package:country_flags/country_flags.dart';
import 'package:firebase_manager/firebase_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islam_app/domain/model/language.dart';
import 'package:islam_app/presentation/change_language/bloc/change_language_bloc.dart';
import 'package:islam_app/shared_widgets/custom_text.dart';

/// Widget representing a single language option in the language selection list.
///
/// This widget displays an individual language choice in the language selection
/// interface, providing a comprehensive representation of each available language
/// option. It features:
/// - **Country flag** visual representation of the language's region
/// - **Language name** in the native script and localized format
/// - **Selection indicator** showing current selection state
/// - **Interactive feedback** for language selection
///
/// The tile supports the global Muslim community by providing clear visual
/// identification of language options, making it easy for users to select
/// their preferred language for accessing Islamic content in the app.
class ListOfLanguageTile extends StatelessWidget {
  /// Creates a [ListOfLanguageTile] widget for a specific language option.
  ///
  /// This widget displays a language selection tile with flag, name, and
  /// selection state for the language selection interface.
  const ListOfLanguageTile({super.key, required this.language});

  /// The language model containing information about this language option.
  final LanguageModel language;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16, bottom: 10),
      child: InkWell(
        onTap: () async {
          await FirebaseAnalyticsRepository.logEvent(
              name: "ChangeLanguage",
              parameters: {
                "language": language.languageCode,
              });
          if (context.mounted) {
            context.read<ChangeLanguageBloc>().add(
                  ChangeLanguageEvent.changeSelectedCheckBoxLanguage(
                    type: language,
                  ),
                );
          }
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
