part of 'add_edit_post_bloc.dart';

@freezed
abstract class AddEditPostState with _$AddEditPostState {
  const factory AddEditPostState({
    @Default(false) bool enableSubmitBtn,
    @Default(false) bool loadingStatus,
    File? attachment,
    @Default("") String? content,
    @Default(false) bool internetConnectionStauts,
  }) = _AddEditPostState;
}
