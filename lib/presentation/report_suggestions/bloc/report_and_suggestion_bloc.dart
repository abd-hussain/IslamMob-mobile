import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';
import 'package:internet_connection_checkup/internet_connection_checkup.dart';
import 'package:islam_app/domain/model/report_request.dart';
import 'package:islam_app/domain/usecase/report_usecase.dart';
import 'package:islam_app/my_app/locator.dart';

part 'report_and_suggestion_bloc.freezed.dart';
part 'report_and_suggestion_event.dart';
part 'report_and_suggestion_state.dart';

/// A BLoC that manages the state and logic for report and suggestion functionality.
///
/// This BLoC handles:
/// - Text input validation for report content
/// - Image attachment management (up to 3 attachments)
/// - Internet connectivity status monitoring
/// - Form submission state management
/// - Image picking from camera or gallery
/// - Report/suggestion submission to backend
///
/// The BLoC automatically validates form fields and manages the submit button
/// state based on content availability and internet connectivity.
class ReportAndSuggestionBloc
    extends Bloc<ReportAndSuggestionEvent, ReportAndSuggestionState> {
  /// Text controller for managing the report/suggestion content input.
  ///
  /// This controller is automatically configured with validation listeners
  /// to enable/disable the submit button based on text content.
  TextEditingController textController = TextEditingController();

  /// Creates a new [ReportAndSuggestionBloc] instance.
  ///
  /// Automatically sets up event handlers for:
  /// - Submit button state management
  /// - Loading status updates
  /// - Attachment management (3 slots)
  /// - Internet connectivity monitoring
  ///
  /// Also initializes the BLoC by checking internet connectivity and
  /// setting up text field validation listeners.
  ReportAndSuggestionBloc() : super(const ReportAndSuggestionState()) {
    on<_UpdateEnableSubmitBtn>(_updateEnableSubmitBtn);
    on<_UpdateLoadingStatus>(_updateLoadingStatus);
    on<_UpdateAttachment1>(_updateAttachment1);
    on<_UpdateAttachment2>(_updateAttachment2);
    on<_UpdateAttachment3>(_updateAttachment3);
    on<_UpdateInternetConnectionStatus>(_updateInternetConnectionStatus);

    initial();
  }

  /// Initializes the BLoC by setting up internet connectivity and validation.
  ///
  /// This method:
  /// 1. Checks the current internet connection status
  /// 2. Sets up text field validation listeners
  /// 3. Configures automatic form validation
  ///
  /// Called automatically during BLoC construction.
  void initial() {
    _checkInternetConnectionStatus().then((value) {
      textController.addListener(_validationFields);
    });
  }

  Future<bool> _checkInternetConnectionStatus() async {
    final bool isConncected = await NetworkUseCase.checkInternetConeection();
    add(ReportAndSuggestionEvent.updateInternetConnectionStatus(isConncected));
    return isConncected;
  }

  void _validationFields() {
    add(const ReportAndSuggestionEvent.updateEnableSubmitBtn(status: false));

    if (textController.text.isNotEmpty) {
      add(const ReportAndSuggestionEvent.updateEnableSubmitBtn(status: true));
    }
  }

  /// Picks an image from the specified source (camera or gallery).
  ///
  /// This method uses the device's image picker to allow users to select
  /// or capture images for attachment to their reports or suggestions.
  ///
  /// Parameters:
  /// - [source]: The image source (ImageSource.camera or ImageSource.gallery)
  ///
  /// Returns a [Future<File?>] containing the selected image file, or null
  /// if the user cancels the selection or an error occurs.
  ///
  /// Example usage:
  /// ```dart
  /// final imageFile = await bloc.pickImage(ImageSource.gallery);
  /// if (imageFile != null) {
  ///   // Handle the selected image
  /// }
  /// ```
  Future<File?> pickImage(ImageSource source) async {
    final image = await ImagePicker().pickImage(source: source);
    return image != null ? File(image.path) : null;
  }

  /// Submits a report or suggestion with the provided attachments.
  ///
  /// This method creates a [ReportRequest] model with the current text content
  /// and up to three image attachments, then submits it to the backend using
  /// the [ReportUseCase].
  ///
  /// Parameters:
  /// - [attach1]: Optional first image attachment
  /// - [attach2]: Optional second image attachment
  /// - [attach3]: Optional third image attachment
  ///
  /// Returns a [Future<void>] that completes when the submission is finished.
  /// The method automatically includes the text content from [textController].
  ///
  /// The submission process is handled by the injected [ReportUseCase] which
  /// manages the network request and backend communication.
  Future<void> callRequest({
    required File? attach1,
    required File? attach2,
    required File? attach3,
  }) {
    final model = ReportRequest(
      content: textController.text,
      attach1: attach1,
      attach2: attach2,
      attach3: attach3,
    );

    return locator<ReportUseCase>().addNewReportOrSuggestion(reportData: model);
  }

  FutureOr<void> _updateEnableSubmitBtn(
    _UpdateEnableSubmitBtn event,
    Emitter<ReportAndSuggestionState> emit,
  ) {
    emit(state.copyWith(enableSubmitBtn: event.status));
  }

  FutureOr<void> _updateLoadingStatus(
    _UpdateLoadingStatus event,
    Emitter<ReportAndSuggestionState> emit,
  ) {
    emit(state.copyWith(loadingStatus: event.status));
  }

  FutureOr<void> _updateAttachment1(
    _UpdateAttachment1 event,
    Emitter<ReportAndSuggestionState> emit,
  ) {
    emit(state.copyWith(attach1: event.value));
  }

  FutureOr<void> _updateAttachment2(
    _UpdateAttachment2 event,
    Emitter<ReportAndSuggestionState> emit,
  ) {
    emit(state.copyWith(attach2: event.value));
  }

  FutureOr<void> _updateAttachment3(
    _UpdateAttachment3 event,
    Emitter<ReportAndSuggestionState> emit,
  ) {
    emit(state.copyWith(attach3: event.value));
  }

  FutureOr<void> _updateInternetConnectionStatus(
    _UpdateInternetConnectionStatus event,
    Emitter<ReportAndSuggestionState> emit,
  ) {
    emit(state.copyWith(internetConnectionStauts: event.status));
  }
}
