import 'package:freezed_annotation/freezed_annotation.dart';

part 'post.freezed.dart';
part 'post.g.dart';

@freezed
class Post with _$Post {
  factory Post({
    String? id,
    required String createdDate,
    required String ownerEmail,
    required int upComments,
    required int downComments,
    required String content,
    required PostCategoryType? category,

    //Profile
    required String profileImageUrl,
    required String profilefullName,
    required String countryFlag,
    //Details
    required bool isReported,
    required bool isAddedToBookMark,
    required PostVoteType voteStatus,
  }) = _Post;

  factory Post.fromJson(Map<String, dynamic> json) =>
      _$PostFromJson(json); // <-- Add this
}

@freezed
sealed class PostVoteType with _$PostVoteType {
  const factory PostVoteType.idl() = VoteIdl;
  const factory PostVoteType.up() = VoteUp;
  const factory PostVoteType.down() = VoteDown;

  factory PostVoteType.fromJson(Map<String, dynamic> json) =>
      _$PostVoteTypeFromJson(json); // <-- Add this
}

@freezed
sealed class PostCategoryType with _$PostCategoryType {
  const factory PostCategoryType.wall() = _PostCategoryTypeWall;
  const factory PostCategoryType.watchlist() = _PostCategoryTypeWatchlist;
  factory PostCategoryType.fromJson(Map<String, dynamic> json) =>
      _$PostCategoryTypeFromJson(json); // <-- Add this
}
