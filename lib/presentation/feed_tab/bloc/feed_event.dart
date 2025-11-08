part of 'feed_bloc.dart';

@freezed
abstract class FeedEvent with _$FeedEvent {
  factory FeedEvent.getWallPosts({required BuildContext context}) =
      _GetWallPosts;
  factory FeedEvent.pullRefresh({
    required BuildContext context,
    required PostCategoryType type,
  }) = _PullRefresh;
  factory FeedEvent.createPost({required BuildContext context}) = _CreatePost;
}
