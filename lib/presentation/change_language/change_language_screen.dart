import 'package:firebase_manager/firebase_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islam_app/l10n/gen/app_localizations.dart';
import 'package:islam_app/my_app/islam_mob_app/islam_mob_app.dart';
import 'package:islam_app/presentation/change_language/bloc/change_language_bloc.dart';
import 'package:islam_app/presentation/change_language/widgets/list_of_languages_view.dart';
import 'package:islam_app/shared_widgets/appbar/custom_appbar.dart';
import 'package:islam_app/shared_widgets/custom_button.dart';

/// Screen for changing the application language.
///
/// This screen allows users to select their preferred language for the
/// Islam Mob application interface. It supports multiple languages to
/// serve the global Muslim community, including:
/// - **Arabic**: The language of the Quran and Islamic texts
/// - **English**: International language for broader accessibility
/// - **Other languages**: Additional languages for regional Muslim communities
///
/// The language selection affects:
/// - User interface text and navigation
/// - Prayer time displays and Islamic content
/// - Quran translations and Islamic terminology
/// - Help text and instructional content
///
/// This ensures the app is accessible to Muslims worldwide, regardless
/// of their primary language, while maintaining Islamic authenticity.
class ChangeLanguageScreen extends StatelessWidget {
  /// Creates a [ChangeLanguageScreen] widget.
  ///
  /// This screen provides language selection functionality with a list
  /// of available languages and confirmation button for applying changes.
  const ChangeLanguageScreen({super.key});

  /// Builds the language selection screen.
  ///
  /// This method constructs the language selection interface with:
  /// - List of available languages with selection indicators
  /// - Confirmation button that appears when a language is selected
  /// - Immediate app rebuild and navigation after language change
  /// - Analytics tracking for language selection events
  ///
  /// The screen uses BLoC pattern for state management and provides
  /// a smooth user experience for language switching.
  @override
  Widget build(BuildContext context) {
    FirebaseAnalyticsRepository.logEvent(
      name: "ChangeLanguageScreen",
    );
    return BlocProvider(
      create: (_) => ChangeLanguageBloc(),
      child: Scaffold(
        appBar: CustomAppBar(
          title: IslamMobLocalizations.of(context).changeSelectedLanguage,
        ),
        backgroundColor: const Color(0xffF5F6F7),
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
              const ListOfLanguagesView(),
              _buildConfirmButton(context),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildConfirmButton(BuildContext context) {
    return BlocBuilder<ChangeLanguageBloc, ChangeLanguageState>(
      buildWhen: (previous, current) =>
          previous.selectedLanguage != current.selectedLanguage,
      builder: (context, state) {
        if (state.selectedLanguage == null) {
          return const SizedBox.shrink();
        }
        return CustomButton(
          isEnabled: true,
          title: state.selectedLanguage!.selectButtonTitle,
          onTap: () {
            context.read<ChangeLanguageBloc>().add(
                  ChangeLanguageEvent.placeNewLanguage(
                    langCode: state.selectedLanguage!.languageCode,
                  ),
                );
            IslamMobApp.of(context)!.rebuild();
            Navigator.pop(context);
          },
        );
      },
    );
  }
}
