part of 'feed_bloc.dart';

@freezed
class FeedState with _$FeedState {
  const factory FeedState({
    @Default(false) bool showInternetConnectionView,
    @Default([]) List<Post> wallPostList,
    @Default([]) List<Post> watchlistPostList,

    @Default(FeedScreenProcessState.loading()) loadingStatus,
  }) = _FeedState;
}

@freezed
sealed class FeedScreenProcessState with _$FeedScreenProcessState {
  const factory FeedScreenProcessState.loading() =
      FeedScreenProcessStateLoading;
  const factory FeedScreenProcessState.done() = FeedScreenProcessStateDone;
}
