import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islam_app/screens/tabs/quran_kareem/sub_pages/report_suggestions/bloc/report_and_suggestion_bloc.dart';
import 'package:islam_app/screens/tabs/quran_kareem/sub_pages/report_suggestions/widgets/attachments.dart';
import 'package:islam_app/screens/tabs/quran_kareem/sub_pages/report_suggestions/widgets/footer.dart';
import 'package:islam_app/shared_widgets/custom_button.dart';
import 'package:islam_app/shared_widgets/custom_text.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islam_app/utils/exceptions.dart';

class ReportOrSuggestionScreen extends StatelessWidget {
  const ReportOrSuggestionScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ReportAndSuggestionBloc(),
      child: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: const Color(0xff292929),
            iconTheme: const IconThemeData(color: Colors.white),
            title: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomText(
                  title: AppLocalizations.of(context)!.reportandsuggestiontitle,
                  fontSize: 14,
                )
              ],
            ),
          ),
          body: BlocBuilder<ReportAndSuggestionBloc, ReportAndSuggestionState>(
            buildWhen: (previous, current) {
              return previous.loadingStatus != current.loadingStatus;
            },
            builder: (context, status) {
              if (status.loadingStatus) {
                return const SizedBox(
                  child: Center(
                    child: CircularProgressIndicator(
                      valueColor: AlwaysStoppedAnimation<Color>(
                        Color(0xff292929),
                      ),
                    ),
                  ),
                );
              } else {
                return SafeArea(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(8),
                          child: ColoredBox(
                            color: Colors.white,
                            child: Padding(
                              padding: const EdgeInsets.all(8),
                              child: TextField(
                                controller: context.read<ReportAndSuggestionBloc>().textController,
                                decoration: InputDecoration(
                                  hintText: AppLocalizations.of(context)!.feedbackmessage,
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
                      ),
                      const ReportSuggestionAttachment(),
                      BlocBuilder<ReportAndSuggestionBloc, ReportAndSuggestionState>(
                        buildWhen: (previous, current) {
                          return previous.enableSubmitBtn != current.enableSubmitBtn;
                        },
                        builder: (context, state) {
                          return CustomButton(
                            enableButton: state.enableSubmitBtn,
                            onTap: () {
                              try {
                                context
                                    .read<ReportAndSuggestionBloc>()
                                    .add(const ReportAndSuggestionEvent.updateLoadingStatus(status: true));

                                final navigator = Navigator.of(context);

                                context
                                    .read<ReportAndSuggestionBloc>()
                                    .callRequest(
                                      attach1: state.attach1,
                                      attach2: state.attach2,
                                      attach3: state.attach3,
                                    )
                                    .then((value) async {
                                  if (context.mounted) {
                                    context
                                        .read<ReportAndSuggestionBloc>()
                                        .add(const ReportAndSuggestionEvent.updateLoadingStatus(status: false));
                                  }

                                  navigator.pop();
                                });
                              } on ConnectionException {
                                final scaffoldMessenger = ScaffoldMessenger.of(context);
                                scaffoldMessenger.showSnackBar(
                                  SnackBar(
                                      content: Text(AppLocalizations.of(context)!.pleasecheckyourinternetconnection)),
                                );
                              }
                            },
                          );
                        },
                      ),
                      const ReportSuggestionFooterView(),
                      const SizedBox(height: 50),
                    ],
                  ),
                );
              }
            },
          ),
        ),
      ),
    );
  }
}
