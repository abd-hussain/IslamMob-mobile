part of 'report_and_suggestion_bloc.dart';

/// Events for the Report and Suggestion BLoC.
///
/// This class defines all possible events that can be dispatched to the
/// [ReportAndSuggestionBloc] to manage the state of the report and suggestion
/// submission form. The events handle form validation, loading states,
/// file attachments, and network connectivity.
@freezed
class ReportAndSuggestionEvent with _$ReportAndSuggestionEvent {
  /// Updates the enabled state of the submit button.
  ///
  /// [status] - True to enable the submit button, false to disable it.
  /// This is typically used based on form validation results.
  const factory ReportAndSuggestionEvent.updateEnableSubmitBtn({
    required bool status,
  }) = _UpdateEnableSubmitBtn;

  /// Updates the loading status of the form submission.
  ///
  /// [status] - True to show loading state, false to hide it.
  /// This is used to provide visual feedback during form submission.
  const factory ReportAndSuggestionEvent.updateLoadingStatus({
    required bool status,
  }) = _UpdateLoadingStatus;

  /// Updates the first file attachment.
  ///
  /// [value] - The file to attach, or null to remove the attachment.
  /// This allows users to attach supporting files to their report or suggestion.
  const factory ReportAndSuggestionEvent.updateAttachment1({
    required File? value,
  }) = _UpdateAttachment1;

  /// Updates the second file attachment.
  ///
  /// [value] - The file to attach, or null to remove the attachment.
  /// This allows users to attach additional supporting files.
  const factory ReportAndSuggestionEvent.updateAttachment2({
    required File? value,
  }) = _UpdateAttachment2;

  /// Updates the third file attachment.
  ///
  /// [value] - The file to attach, or null to remove the attachment.
  /// This allows users to attach a third supporting file.
  const factory ReportAndSuggestionEvent.updateAttachment3({
    required File? value,
  }) = _UpdateAttachment3;

  /// Updates the internet connection status.
  ///
  /// [status] - True if internet connection is available, false otherwise.
  /// This is used to enable/disable form submission based on connectivity.
  factory ReportAndSuggestionEvent.updateInternetConnectionStatus(bool status) =
      _UpdateInternetConnectionStatus;
}
