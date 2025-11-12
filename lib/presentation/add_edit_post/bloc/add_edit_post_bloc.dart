import 'dart:async';
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:firebase_manager/firebase_manager.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:http/http.dart' as http;
import 'package:image_picker/image_picker.dart';
import 'package:internet_connection_checkup/internet_connection_checkup.dart';
import 'package:islam_app/domain/model/post.dart';
import 'package:islam_app/domain/usecase/add_edit_post_usecase.dart';
import 'package:islam_app/my_app/locator.dart';
import 'package:islam_app/shared_widgets/show_toast.dart';
import 'package:logger_manager/logger_manager.dart';
import 'package:path_provider/path_provider.dart';
import 'package:preferences/preferences.dart';

part 'add_edit_post_bloc.freezed.dart';
part 'add_edit_post_event.dart';
part 'add_edit_post_state.dart';

class AddEditPostBloc extends Bloc<AddEditPostEvent, AddEditPostState> {
  TextEditingController textController = TextEditingController();

  AddEditPostBloc() : super(const AddEditPostState()) {
    on<_InitialPost>(_initialPost);
    on<_UpdateEnableSubmitBtn>(_updateEnableSubmitBtn);
    on<_UpdateLoadingStatus>(_updateLoadingStatus);
    on<_UpdateAttachment>(_updateAttachment);
    on<_UpdateInternetConnectionStatus>(_updateInternetConnectionStatus);
    on<_AddPost>(_addPost);
    on<_EditPost>(_editPost);
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

  Future<void> _updateAttachment(
    _UpdateAttachment event,
    Emitter<AddEditPostState> emit,
  ) async {
    final File? file = event.value;

    if (event.preserveExistingAttachment) {
      emit(state.copyWith(attachment: file));
      _validationFields();
      return;
    }

    if (file == null) {
      emit(
        state.copyWith(
          attachment: null,
          existingAttachmentUrl: state.isEditMode
              ? null
              : state.existingAttachmentUrl,
          removeExistingAttachment:
              state.isEditMode && (state.existingAttachmentUrl != null),
        ),
      );
    } else {
      emit(
        state.copyWith(
          attachment: file,
          existingAttachmentUrl: null,
          removeExistingAttachment:
              state.isEditMode && (state.existingAttachmentUrl != null),
        ),
      );
    }

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

  void validateEmail(BuildContext context) {
    final userEmail = locator<IslamPreferences>().getValue(
      key: DatabaseUserCredentials.userEmail,
      defaultValue: "",
    );

    if (userEmail == "") {
      if (context.mounted) {
        ShowToast.showLoginRequired(context);
      }
      return;
    }
  }

  FutureOr<void> _addPost(
    _AddPost event,
    Emitter<AddEditPostState> emit,
  ) async {
    validateEmail(event.context);
    try {
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

  FutureOr<void> _editPost(
    _EditPost event,
    Emitter<AddEditPostState> emit,
  ) async {
    validateEmail(event.context);
    try {
      await FirebaseAnalyticsRepository.logEvent(name: "EditPostSubmitsion");

      if (!event.context.mounted) return;

      add(const AddEditPostEvent.updateLoadingStatus(status: true));

      await locator<AddEditPostUseCase>().editPost(
        postId: state.postId,
        attachment: state.attachment,
        content: textController.text,
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

  FutureOr<void> _initialPost(
    _InitialPost event,
    Emitter<AddEditPostState> emit,
  ) async {
    final Post? post = event.post;
    if (post == null) return;

    textController.text = post.content;
    emit(
      state.copyWith(
        isEditMode: true,
        postId: post.id ?? "",
        existingAttachmentUrl:
            (post.imageUrl != null && post.imageUrl!.isNotEmpty)
            ? post.imageUrl
            : null,
        removeExistingAttachment: false,
      ),
    );

    _validationFields();

    final String? imageUrl = post.imageUrl;
    if (imageUrl != null && imageUrl.isNotEmpty) {
      final File? downloadedFile = await _downloadRemoteAttachment(imageUrl);
      if (downloadedFile != null) {
        add(
          AddEditPostEvent.updateAttachment(
            value: downloadedFile,
            preserveExistingAttachment: true,
          ),
        );
      }
    }
  }

  Future<File?> _downloadRemoteAttachment(String url) async {
    try {
      final uri = Uri.tryParse(url);
      if (uri == null) return null;

      final response = await http.get(uri);
      if (response.statusCode != 200) return null;

      final tempDir = await getTemporaryDirectory();
      final file = File(
        '${tempDir.path}/post_edit_${DateTime.now().millisecondsSinceEpoch}',
      );
      await file.writeAsBytes(response.bodyBytes);
      return file;
    } catch (error, stackTrace) {
      LoggerManagerBase.logErrorMessage(
        error: error,
        stackTrace: stackTrace,
        message: 'Failed to download existing post attachment',
      );
      return null;
    }
  }
}
