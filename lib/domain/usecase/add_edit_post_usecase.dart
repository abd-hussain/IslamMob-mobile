import 'dart:io';

import 'package:firebase_manager/firebase_manager.dart';
import 'package:islam_app/my_app/locator.dart';
import 'package:path/path.dart' as p;
import 'package:preferences/preferences.dart';

class AddEditPostUseCase {
  final preferences = locator<IslamPreferences>();

  Future<void> addNewPost({
    required File? attachment,
    required String content,
  }) async {
    final authorEmail = preferences.getValue(
      key: DatabaseUserCredentials.userEmail,
      defaultValue: '',
    );
    final authorUid = preferences.getValue(
      key: DatabaseUserCredentials.userUID,
      defaultValue: '',
    );

    final postId = DateTime.now().toIso8601String();
    final createdAt = DateTime.now().toIso8601String();

    String? attachmentUrl;
    if (attachment != null) {
      attachmentUrl = await _maybeUploadAttachment(
        postId: postId,
        attachment: attachment,
      );
    }
    final postData = <String, dynamic>{
      'authorEmail': authorEmail,
      'category': 'wall',
      'createdAt': createdAt,
      'direction': _detectDirection(content),
      'downVote': <String>[],
      'reports': <Map<String, String>>[],
      'text': content.trim(),
      'upVote': <String>[],
      'attachmentUrl': attachmentUrl,
      'authorUid': authorUid,
      'updatedAt': createdAt,
      'isApproved': false,
    };

    await FirebaseFirestoreRepository.setData(
      options: FireStoreOptions<dynamic>(
        collectionName: FirebaseCollectionConstants.posts,
        docName: postId,
        fromModel: postData,
      ),
    );
  }

  Future<void> editPost({
    required String postId,
    required File? attachment,
    required String content,
  }) async {
    final updatedAt = DateTime.now().toIso8601String();

    String? attachmentUrl;
    if (attachment != null) {
      attachmentUrl = await _maybeUploadAttachment(
        postId: postId,
        attachment: attachment,
      );
    }

    await FirebaseFirestoreRepository.updateField(
      collectionName: FirebaseCollectionConstants.posts,
      docId: postId,
      updateData: {
        'direction': _detectDirection(content),
        'text': content.trim(),
        'attachmentUrl': attachmentUrl,
        'updatedAt': updatedAt,
      },
    );
  }

  Future<void> deletePost({required String postId}) async {
    await FirebaseFirestoreRepository.deleteDocument(
      collectionName: FirebaseCollectionConstants.posts,
      docId: postId,
    );
  }

  Future<String?> _maybeUploadAttachment({
    required String postId,
    required File? attachment,
  }) async {
    if (attachment == null) return null;

    final fileExtension = p.extension(attachment.path);
    final storagePath = FirebaseCollectionConstants.posts;

    return FirebaseStorageRepository.uploadFile(
      file: attachment,
      path: storagePath,
      fileName: '$postId$fileExtension',
    );
  }

  String _detectDirection(String content) {
    final rtlRegex = RegExp(r'[\u0600-\u06FF]');
    return rtlRegex.hasMatch(content) ? 'RTL' : 'LTR';
  }
}
