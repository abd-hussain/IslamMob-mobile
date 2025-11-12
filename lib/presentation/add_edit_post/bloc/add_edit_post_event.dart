part of 'add_edit_post_bloc.dart';

@freezed
class AddEditPostEvent with _$AddEditPostEvent {
  const factory AddEditPostEvent.initialPost({required Post? post}) =
      _InitialPost;

  /// Updates the enabled state of the submit button.
  ///
  /// [status] - True to enable the submit button, false to disable it.
  /// This is typically used based on form validation results.
  const factory AddEditPostEvent.updateEnableSubmitBtn({required bool status}) =
      _UpdateEnableSubmitBtn;

  const factory AddEditPostEvent.updateLoadingStatus({required bool status}) =
      _UpdateLoadingStatus;

  const factory AddEditPostEvent.updateAttachment({
    required File? value,
    @Default(false) bool preserveExistingAttachment,
  }) = _UpdateAttachment;

  factory AddEditPostEvent.updateInternetConnectionStatus(bool status) =
      _UpdateInternetConnectionStatus;

  const factory AddEditPostEvent.addPost({required BuildContext context}) =
      _AddPost;

  const factory AddEditPostEvent.editPost({required BuildContext context}) =
      _EditPost;
}
