part of 'post_bloc.dart';

@freezed
abstract class PostState with _$PostState {
  const factory PostState({
    @Default("") String postID,
    @Default(0) int upComments,
    @Default(0) int downComments,
    @Default(false) bool inBookmark,
    @Default(false) bool isPostReported,
    @Default(PostVoteType.idl()) PostVoteType postVoteType,
    @Default(PostDeleteState.idl()) PostDeleteState postDeleteState,
  }) = _PostState;
}

@freezed
sealed class PostDeleteState with _$PostDeleteState {
  const factory PostDeleteState.idl() = PostDeleteStateIdl;
  const factory PostDeleteState.done() = PostDeleteStateDone;
}
