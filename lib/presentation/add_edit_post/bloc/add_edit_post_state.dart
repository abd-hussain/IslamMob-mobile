part of 'add_edit_post_bloc.dart';

@freezed
abstract class AddEditPostState with _$AddEditPostState {
  const factory AddEditPostState({
    @Default(false) bool enableSubmitBtn,
    @Default(false) bool loadingStatus,
    File? attachment,
    String? existingAttachmentUrl,
    @Default(false) bool internetConnectionStauts,
    @Default(false) bool isEditMode,
    @Default('') String postId,
    @Default(false) bool removeExistingAttachment,
  }) = _AddEditPostState;
}
