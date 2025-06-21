import 'package:flutter/material.dart';
import 'package:islam_app/domain/constants/language_constant.dart';
import 'package:islam_app/domain/model/language.dart';
import 'package:islam_app/presentation/change_language/widgets/list_of_languages_tile.dart';

/// Widget displaying the complete list of available language options.
///
/// This widget presents all available language choices for the Islam Mob
/// application in a scrollable list format. It provides:
/// - **Complete language list** from the language constants
/// - **Scrollable interface** for easy navigation through options
/// - **Individual language tiles** with flags and selection states
/// - **Responsive layout** adapting to different screen sizes
///
/// The widget supports the global Muslim community by presenting all
/// available language options in an organized, accessible format,
/// enabling users to easily find and select their preferred language
/// for accessing Islamic content in the application.
class ListOfLanguagesView extends StatelessWidget {
  /// Creates a [ListOfLanguagesView] widget.
  ///
  /// This widget displays the complete list of available languages
  /// for selection in the language change interface.
  const ListOfLanguagesView({super.key});

  /// Builds the scrollable list of available language options.
  ///
  /// This method constructs a list view containing all available language
  /// options from the language constants, presenting each language as an
  /// individual tile with flag, name, and selection capabilities.
  ///
  /// The list is scrollable to accommodate multiple language options
  /// while maintaining a clean, organized interface for language selection.
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
