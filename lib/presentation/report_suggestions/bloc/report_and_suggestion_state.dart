part of 'report_and_suggestion_bloc.dart';

/// Represents the state for the report and suggestion functionality.
///
/// This state class holds all the data and status information for the
/// report and suggestion screen including form validation, loading states,
/// file attachments, and internet connectivity status.
/// It uses Freezed for immutability and code generation.
@freezed
abstract class ReportAndSuggestionState with _$ReportAndSuggestionState {
  /// Creates a [ReportAndSuggestionState] with optional parameters.
  ///
  /// All parameters have default values:
  /// - [enableSubmitBtn] defaults to false (submit button disabled)
  /// - [loadingStatus] defaults to false (not loading)
  /// - [attach1], [attach2], [attach3] default to null (no attachments)
  /// - [internetConnectionStauts] defaults to false (no internet connection)
  const factory ReportAndSuggestionState({
    @Default(false) bool enableSubmitBtn,
    @Default(false) bool loadingStatus,
    File? attach1,
    File? attach2,
    File? attach3,
    @Default(false) bool internetConnectionStauts,
  }) = _ReportAndSuggestionState;
}
