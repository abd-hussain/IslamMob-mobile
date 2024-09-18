part of 'report_and_suggestion_bloc.dart';

@freezed
class ReportAndSuggestionEvent with _$ReportAndSuggestionEvent {
  const factory ReportAndSuggestionEvent.updateEnableSubmitBtn({
    required bool status,
  }) = _UpdateEnableSubmitBtn;

  const factory ReportAndSuggestionEvent.updateLoadingStatus({
    required bool status,
  }) = _UpdateLoadingStatus;

  const factory ReportAndSuggestionEvent.updateAttachment1({
    required File? value,
  }) = _UpdateAttachment1;

  const factory ReportAndSuggestionEvent.updateAttachment2({
    required File? value,
  }) = _UpdateAttachment2;

  const factory ReportAndSuggestionEvent.updateAttachment3({
    required File? value,
  }) = _UpdateAttachment3;
}
