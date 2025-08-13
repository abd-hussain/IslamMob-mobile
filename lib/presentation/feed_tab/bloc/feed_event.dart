part of 'feed_bloc.dart';

@freezed
class FeedEvent with _$FeedEvent {
  factory FeedEvent.getPostFromSpesificCategory({
    required BuildContext context,
    required PostCategoryType type,
  }) = _GetPostFromSpesificCategory;
  factory FeedEvent.pullRefresh({
    required BuildContext context,
    required PostCategoryType type,
  }) = _PullRefresh;
}
