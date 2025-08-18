import 'package:firebase_manager/firebase_manager.dart';
import 'package:islam_app/domain/model/post.dart';
import 'package:islam_app/domain/model/profile_model.dart';
import 'package:logger_manager/logger_manager.dart';

//TODO: handle pagenation/ pull to refresh
//TODO: handle watchlist posts
//TODO: post up by defuilt why ??
//TODO: post date is not formated
//TODO: post profile image not fit 100%

class PostUsecase {
  static Future<List<Post>> getPosts({
    required PostCategoryType type,
    required String userEmail,
  }) async {
    try {
      final documents = await FirebaseFirestoreRepository.getAllDocuments(
        collectionName: FirebaseCollectionConstants.posts,
        withPagination: true,
        limit: 11,
      );
      return _mapDocumentsToPosts(documents, userEmail, type);
    } catch (e) {
      LoggerManagerBase.logErrorMessage(
        error: e,
        message: 'Error fetching Posts',
      );
      return [];
    }
  }

  /// Converts Firestore documents into [Post] objects, fetching profile data in batches for efficiency.
  static Future<List<Post>> _mapDocumentsToPosts(
    List<FirebaseDocumentSnapshot> documents,
    String userEmail,
    PostCategoryType type,
  ) async {
    if (documents.isEmpty) return [];

    // Filter by category first
    final filteredDocs = documents.where((doc) {
      final category = doc.data["category"] as String? ?? "";
      return _parseCategory(category) == type;
    }).toList();

    if (filteredDocs.isEmpty) return [];

    // Extract all unique author IDs
    final authorIds = filteredDocs
        .map((doc) => doc.data["authorEmail"] as String?)
        .whereType<String>()
        .toSet();

    // Fetch all profiles in parallel
    final profiles = await _fetchProfiles(authorIds);

    // Map documents to posts
    return filteredDocs.map((doc) {
      final data = doc.data;

      final authorId = data["authorEmail"] as String? ?? "";
      final profile = profiles[authorId];

      final upVotes = List<String>.from(
        (data["upVote"] as List<dynamic>?) ?? [],
      );
      final downVotes = List<String>.from(
        (data["downVote"] as List<dynamic>?) ?? [],
      );
      final bookmarks = List<String>.from(
        (data["bookmark"] as List<dynamic>?) ?? [],
      );
      final listOfReports = List<dynamic>.from(
        (data["reports"] as List<dynamic>?) ?? [],
      );

      return Post(
        id: doc.id,
        createdDate: data["createdAt"] as String? ?? "",
        content: data["text"] as String? ?? "",
        direction: (data["text"] as String? ?? "") == "RTL"
            ? const PostDirection.rtl()
            : const PostDirection.ltr(),
        downComments: downVotes.length,
        upComments: upVotes.length,
        ownerEmail: authorId,
        profileImageUrl: profile?.profilePic ?? "",
        profilefullName: profile?.fullName ?? "",
        countryFlag: profile?.countryFlag ?? "",
        isReported: _isUserReported(listOfReports, userEmail),
        voteStatus: _getVoteStatus(upVotes, downVotes, userEmail),
        isAddedToBookMark: bookmarks.contains(userEmail),
        category: _parseCategory(data["category"] as String? ?? ""),
      );
    }).toList();
  }

  /// Batch fetch user profiles by IDs
  static Future<Map<String, ProfileModel>> _fetchProfiles(
    Set<String> ids,
  ) async {
    if (ids.isEmpty) return {};

    final futures = ids.map((id) async {
      final profile =
          await FirebaseFirestoreRepository.getDataFromFireStoreDocument(
            FireStoreOptions(
              collectionName: FirebaseCollectionConstants.registered_users,
              docName: id,
              toModel: _toProfileModel,
            ),
          );
      return MapEntry(id, profile);
    });

    final results = await Future.wait(futures);

    return Map.fromEntries(
      results
          .where((e) => e.value != null)
          .map(
            (e) => MapEntry(e.key, e.value!), // safe to use `!` after filter
          ),
    );
  }

  static bool _isUserReported(List<dynamic> reports, String userEmail) =>
      reports.any(
        (report) => report is Map<String, String>
            ? report.containsKey(userEmail)
            : false,
      );

  static PostVoteType _getVoteStatus(
    List<String> upVotes,
    List<String> downVotes,
    String userEmail,
  ) {
    if (upVotes.contains(userEmail)) return const PostVoteType.up();
    if (downVotes.contains(userEmail)) return const PostVoteType.down();
    return const PostVoteType.idl();
  }

  static PostCategoryType? _parseCategory(String value) {
    if (value == "wall") {
      return const PostCategoryType.wall();
    }
    return null;
  }

  static ProfileModel _toProfileModel(dynamic source) {
    return ProfileModel.fromJson((source as Map<String, dynamic>?) ?? {});
  }

  static Future<void> reportPost({
    required String postId,
    required String reportText,
    required String userEmail,
  }) async {
    await FirebaseFirestoreRepository.updateArrayField(
      collectionName: FirebaseCollectionConstants.posts,
      docId: postId,
      fieldToAdd: "reports",
      valueToAddOrRemove: {userEmail: reportText},
    );
  }

  static Future<void> addRemovePostFromBookMark({
    required String postId,
    required bool bookmark,
    required String userEmail,
  }) async {
    if (bookmark) {
      await FirebaseFirestoreRepository.updateArrayField(
        collectionName: FirebaseCollectionConstants.posts,
        docId: postId,
        fieldToAdd: "bookmark",
        valueToAddOrRemove: userEmail,
      );
    } else {
      await FirebaseFirestoreRepository.updateArrayField(
        collectionName: FirebaseCollectionConstants.posts,
        docId: postId,
        fieldToAdd: "bookmark",
        valueToAddOrRemove: userEmail,
        removeOnly: true,
      );
    }
  }

  static Future<void> changePostVote({
    required String postId,
    required PostVoteType voteType,
    required String userEmail,
  }) async {
    switch (voteType) {
      case VoteDown():
        await FirebaseFirestoreRepository.updateArrayField(
          collectionName: FirebaseCollectionConstants.posts,
          docId: postId,
          fieldToAdd: "downVote",
          fieldToRemove: "upVote",
          valueToAddOrRemove: userEmail,
        );
      case VoteUp():
        await FirebaseFirestoreRepository.updateArrayField(
          collectionName: FirebaseCollectionConstants.posts,
          docId: postId,
          fieldToAdd: "upVote",
          fieldToRemove: "downVote",
          valueToAddOrRemove: userEmail,
        );
      case VoteIdl():
        await FirebaseFirestoreRepository.updateArrayField(
          collectionName: FirebaseCollectionConstants.posts,
          docId: postId,
          fieldToAdd: "upVote",
          fieldToRemove: "downVote",
          valueToAddOrRemove: userEmail,
          removeOnly: true,
        );
    }
  }
}
