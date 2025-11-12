part of 'post_bloc.dart';

@freezed
class PostEvent with _$PostEvent {
  const factory PostEvent.initial(Post post) = _Initial;
  const factory PostEvent.edit(String postId, Post post) = _EditPost;
  const factory PostEvent.report(String postId, String message) = _ReportPost;
  const factory PostEvent.delete(String postId) = _DeletePost;
  const factory PostEvent.changeVote(String postId, PostVoteType voteType) =
      _ChangePostVote;
}
