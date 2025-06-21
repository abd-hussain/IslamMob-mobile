import 'package:firebase_manager/firebase_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:internet_connection_checkup/internet_connection_checkup.dart';
import 'package:islam_app/l10n/gen/app_localizations.dart';
import 'package:islam_app/presentation/report_suggestions/bloc/report_and_suggestion_bloc.dart';
import 'package:islam_app/presentation/report_suggestions/widgets/attachments.dart';
import 'package:islam_app/presentation/report_suggestions/widgets/footer.dart';
import 'package:islam_app/shared_widgets/appbar/custom_appbar.dart';
import 'package:islam_app/shared_widgets/custom_button.dart';
import 'package:islam_app/shared_widgets/no_internet_toast.dart';
import 'package:islam_app/shared_widgets/no_internet_view.dart';

/// Screen for submitting reports and suggestions about the Islamic app.
///
/// This screen provides Muslims with a way to report issues, suggest
/// improvements, or provide feedback about the Islamic application. It features:
/// - **Feedback text input** with character limits for structured feedback
/// - **File attachments** for screenshots or additional documentation
/// - **Internet connectivity handling** with offline state management
/// - **Loading states** during submission process
/// - **Firebase analytics** for tracking user engagement
///
/// The screen helps improve the Islamic app by collecting valuable feedback
/// from the Muslim community, enabling developers to enhance Islamic features
/// and fix issues that affect users' spiritual practice and app experience.
class ReportOrSuggestionScreen extends StatelessWidget {
  /// Creates a [ReportOrSuggestionScreen] widget.
  ///
  /// This screen displays the feedback submission interface for reports
  /// and suggestions about the Islamic application.
  const ReportOrSuggestionScreen({super.key});

  /// Builds the report and suggestion submission interface.
  ///
  /// This method constructs a feedback form featuring:
  /// - Text input field for detailed feedback with character limits
  /// - File attachment options for supporting documentation
  /// - Submit button with validation and loading states
  /// - Internet connectivity checks and error handling
  /// - Analytics tracking for user engagement metrics
  ///
  /// The interface adapts to different states including loading,
  /// no internet connection, and normal input modes.
  @override
  Widget build(BuildContext context) {
    FirebaseAnalyticsRepository.logEvent(name: "ReportOrSuggestionScreen");
    final localize = IslamMobLocalizations.of(context);

    return BlocProvider(
      create: (context) => ReportAndSuggestionBloc(),
      child: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Scaffold(
          appBar: CustomAppBar(
            title: localize.reportandsuggestiontitle,
          ),
          body: BlocBuilder<ReportAndSuggestionBloc, ReportAndSuggestionState>(
            buildWhen: (previous, current) =>
                previous.loadingStatus != current.loadingStatus ||
                previous.internetConnectionStauts !=
                    current.internetConnectionStauts,
            builder: (context, status) {
              if (status.internetConnectionStauts == false) {
                return _buildNoInternetView(context);
              }

              if (status.loadingStatus) {
                return _buildLoadingIndicator();
              }

              return _buildContent(context, status, localize);
            },
          ),
        ),
      ),
    );
  }

  Widget _buildNoInternetView(BuildContext context) {
    return NoInternetView(
      retryCallback: () {
        context.read<ReportAndSuggestionBloc>().initial();
      },
    );
  }

  Widget _buildLoadingIndicator() {
    return const Center(
      child: CircularProgressIndicator(
        valueColor: AlwaysStoppedAnimation<Color>(Color(0xff292929)),
      ),
    );
  }

  Widget _buildContent(
    BuildContext context,
    ReportAndSuggestionState state,
    IslamMobLocalizations localize,
  ) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildFeedbackInput(context, localize),
          const ReportSuggestionAttachment(),
          _buildSubmitButton(context, state),
          const ReportSuggestionFooterView(),
          const SizedBox(height: 50),
        ],
      ),
    );
  }

  Widget _buildFeedbackInput(
      BuildContext context, IslamMobLocalizations localize) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: ColoredBox(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: TextField(
              controller:
                  context.read<ReportAndSuggestionBloc>().textController,
              decoration: InputDecoration(
                hintText: localize.feedbackmessage,
                hintMaxLines: 2,
                hintStyle: const TextStyle(fontSize: 15),
                enabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none,
              ),
              maxLines: 20,
              maxLength: 500,
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildSubmitButton(
    BuildContext context,
    ReportAndSuggestionState state,
  ) {
    return BlocBuilder<ReportAndSuggestionBloc, ReportAndSuggestionState>(
      buildWhen: (previous, current) =>
          previous.enableSubmitBtn != current.enableSubmitBtn ||
          previous.attach1 != current.attach1 ||
          previous.attach2 != current.attach2 ||
          previous.attach3 != current.attach3,
      builder: (context, state) {
        return CustomButton(
          isEnabled: state.enableSubmitBtn,
          onTap: () => _handleSubmit(context, state),
        );
      },
    );
  }

  Future<void> _handleSubmit(
    BuildContext context,
    ReportAndSuggestionState state,
  ) async {
    try {
      await FirebaseAnalyticsRepository.logEvent(
          name: "ReportOrSuggestionSubmitsion");

      if (!context.mounted) return;

      final bloc = context.read<ReportAndSuggestionBloc>();
      final navigator = Navigator.of(context);

      bloc.add(
          const ReportAndSuggestionEvent.updateLoadingStatus(status: true));

      await bloc.callRequest(
        attach1: state.attach1,
        attach2: state.attach2,
        attach3: state.attach3,
      );

      if (!context.mounted) return;

      bloc.add(
          const ReportAndSuggestionEvent.updateLoadingStatus(status: false));
      navigator.pop();
    } on ConnectionException {
      if (context.mounted) {
        NoInternetToast.show(context);
      }
    }
  }
}
