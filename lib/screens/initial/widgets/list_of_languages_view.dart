import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islam_app/models/app_model/language.dart';
import 'package:islam_app/screens/initial/bloc/initial_screen_bloc.dart';
import 'package:islam_app/screens/initial/widgets/list_of_languages_tile.dart';

class ListOfLanguagesView extends StatelessWidget {
  const ListOfLanguagesView({super.key});

  @override
  Widget build(BuildContext context) {
    final List<LanguageModel> languages =
        context.read<InitialScreenBloc>().languages;
    return Expanded(
      child: ListView.builder(
          itemCount: languages.length,
          itemBuilder: (context, index) {
            return ListOfLanguageTile(language: languages[index]);
          }),
    );
  }
}
