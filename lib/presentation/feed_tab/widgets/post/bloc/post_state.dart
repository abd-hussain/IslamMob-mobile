part of 'post_bloc.dart';

@freezed
class PostState with _$PostState {
  const factory PostState({
    @Default("") String postID,
    @Default(0) int upComments,
    @Default(0) int downComments,
    @Default(false) bool inBookmark,
    @Default(false) bool isPostReported,
    @Default(PostVoteType.idl()) PostVoteType postVoteType,
  }) = _PostState;
}
