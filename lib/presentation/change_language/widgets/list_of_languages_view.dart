import 'package:flutter/material.dart';
import 'package:islam_app/domain/constants/language_constant.dart';
import 'package:islam_app/domain/model/language.dart';
import 'package:islam_app/presentation/change_language/widgets/list_of_languages_tile.dart';

class ListOfLanguagesView extends StatelessWidget {
  const ListOfLanguagesView({super.key});

  @override
  Widget build(BuildContext context) {
    final List<LanguageModel> languages = LanguageConstant.languages;
    return Expanded(
      child: ListView.builder(
          itemCount: languages.length,
          itemBuilder: (context, index) {
            return ListOfLanguageTile(language: languages[index]);
          }),
    );
  }
}
