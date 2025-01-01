import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';
import 'package:islam_app/domain/model/report_request.dart';
import 'package:internet_connection_checkup/internet_connection_checkup.dart';
import 'package:islam_app/my_app/locator.dart';
import 'package:islam_app/domain/usecase/report_usecase.dart';

part 'report_and_suggestion_event.dart';
part 'report_and_suggestion_state.dart';
part 'report_and_suggestion_bloc.freezed.dart';

class ReportAndSuggestionBloc
    extends Bloc<ReportAndSuggestionEvent, ReportAndSuggestionState> {
  TextEditingController textController = TextEditingController();

  ReportAndSuggestionBloc() : super(const ReportAndSuggestionState()) {
    on<_UpdateEnableSubmitBtn>(_updateEnableSubmitBtn);
    on<_UpdateLoadingStatus>(_updateLoadingStatus);
    on<_UpdateAttachment1>(_updateAttachment1);
    on<_UpdateAttachment2>(_updateAttachment2);
    on<_UpdateAttachment3>(_updateAttachment3);
    on<_UpdateInternetConnectionStatus>(_updateInternetConnectionStatus);

    initial();
  }

  initial() {
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

  Future<File?> pickImage(ImageSource source) async {
    final image = await ImagePicker().pickImage(source: source);
    return image != null ? File(image.path) : null;
  }

  Future<dynamic> callRequest(
      {required File? attach1,
      required File? attach2,
      required File? attach3}) {
    final model = ReportRequest(
      content: textController.text,
      attach1: attach1,
      attach2: attach2,
      attach3: attach3,
    );

    return locator<ReportUseCase>().addNewReportOrSuggestion(reportData: model);
  }

  FutureOr<void> _updateEnableSubmitBtn(
      event, Emitter<ReportAndSuggestionState> emit) {
    emit(state.copyWith(enableSubmitBtn: event.status));
  }

  FutureOr<void> _updateLoadingStatus(
      _UpdateLoadingStatus event, Emitter<ReportAndSuggestionState> emit) {
    emit(state.copyWith(loadingStatus: event.status));
  }

  FutureOr<void> _updateAttachment1(
      _UpdateAttachment1 event, Emitter<ReportAndSuggestionState> emit) {
    emit(state.copyWith(attach1: event.value));
  }

  FutureOr<void> _updateAttachment2(
      _UpdateAttachment2 event, Emitter<ReportAndSuggestionState> emit) {
    emit(state.copyWith(attach2: event.value));
  }

  FutureOr<void> _updateAttachment3(
      _UpdateAttachment3 event, Emitter<ReportAndSuggestionState> emit) {
    emit(state.copyWith(attach3: event.value));
  }

  FutureOr<void> _updateInternetConnectionStatus(
      _UpdateInternetConnectionStatus event,
      Emitter<ReportAndSuggestionState> emit) {
    emit(state.copyWith(internetConnectionStauts: event.status));
  }
}
