part of 'report_and_suggestion_bloc.dart';

@freezed
class ReportAndSuggestionState with _$ReportAndSuggestionState {
  const factory ReportAndSuggestionState({
    @Default(false) bool enableSubmitBtn,
    @Default(false) bool loadingStatus,
    File? attach1,
    File? attach2,
    File? attach3,
    @Default(false) bool internetConnectionStauts,
  }) = _ReportAndSuggestionState;
}
