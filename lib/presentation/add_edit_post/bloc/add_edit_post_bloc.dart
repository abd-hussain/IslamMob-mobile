import 'dart:async';
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:firebase_manager/firebase_manager.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';
import 'package:internet_connection_checkup/internet_connection_checkup.dart';
import 'package:islam_app/domain/usecase/add_edit_post_usecase.dart';
import 'package:islam_app/my_app/locator.dart';
import 'package:islam_app/shared_widgets/show_toast.dart';
import 'package:preferences/preferences.dart';

part 'add_edit_post_event.dart';
part 'add_edit_post_state.dart';
part 'add_edit_post_bloc.freezed.dart';

class AddEditPostBloc extends Bloc<AddEditPostEvent, AddEditPostState> {
  TextEditingController textController = TextEditingController();

  AddEditPostBloc() : super(const AddEditPostState()) {
    on<_UpdateEnableSubmitBtn>(_updateEnableSubmitBtn);
    on<_UpdateLoadingStatus>(_updateLoadingStatus);
    on<_UpdateAttachment>(_updateAttachment);
    on<_UpdateInternetConnectionStatus>(_updateInternetConnectionStatus);
    on<_AddPost>(_addPost);
    initialization();
  }

  void initialization() {
    _checkInternetConnectionStatus().then((value) {
      textController.addListener(_validationFields);
    });
  }

  Future<bool> _checkInternetConnectionStatus() async {
    final bool isConncected = await NetworkUseCase.checkInternetConnection();
    add(AddEditPostEvent.updateInternetConnectionStatus(isConncected));
    return isConncected;
  }

  void _validationFields() {
    add(const AddEditPostEvent.updateEnableSubmitBtn(status: false));

    if (textController.text.isNotEmpty || state.attachment != null) {
      add(const AddEditPostEvent.updateEnableSubmitBtn(status: true));
    }
  }

  FutureOr<void> _updateEnableSubmitBtn(
    _UpdateEnableSubmitBtn event,
    Emitter<AddEditPostState> emit,
  ) {
    emit(state.copyWith(enableSubmitBtn: event.status));
  }

  FutureOr<void> _updateLoadingStatus(
    _UpdateLoadingStatus event,
    Emitter<AddEditPostState> emit,
  ) {
    emit(state.copyWith(loadingStatus: event.status));
  }

  FutureOr<void> _updateAttachment(
    _UpdateAttachment event,
    Emitter<AddEditPostState> emit,
  ) {
    emit(state.copyWith(attachment: event.value));
    _validationFields();
  }

  FutureOr<void> _updateInternetConnectionStatus(
    _UpdateInternetConnectionStatus event,
    Emitter<AddEditPostState> emit,
  ) {
    emit(state.copyWith(internetConnectionStauts: event.status));
  }

  Future<File?> pickImage(ImageSource source) async {
    final image = await ImagePicker().pickImage(source: source);
    return image != null ? File(image.path) : null;
  }

  FutureOr<void> _addPost(
    _AddPost event,
    Emitter<AddEditPostState> emit,
  ) async {
    try {
      final userEmail = locator<IslamPreferences>().getValue(
        key: DatabaseUserCredentials.userEmail,
        defaultValue: "",
      );

      if (userEmail == "") {
        if (event.context.mounted) {
          ShowToast.showLoginRequired(event.context);
        }
        return;
      }

      await FirebaseAnalyticsRepository.logEvent(name: "AddPostSubmitsion");

      if (!event.context.mounted) return;

      add(const AddEditPostEvent.updateLoadingStatus(status: true));

      await locator<AddEditPostUseCase>().addNewPost(
        content: textController.text,
        attachment: state.attachment,
      );

      add(const AddEditPostEvent.updateLoadingStatus(status: false));
      // ignore: use_build_context_synchronously
      Navigator.of(event.context).pop();
    } on ConnectionException {
      if (event.context.mounted) {
        ShowToast.showInternetRequired(event.context);
      }
    }
  }
}
