import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:firebase_manager/firebase_manager.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:internet_connection_checkup/core/exceptions.dart';
import 'package:islam_app/domain/model/post.dart';
import 'package:islam_app/domain/usecase/add_edit_post_usecase.dart';
import 'package:islam_app/domain/usecase/post_usecase.dart';
import 'package:islam_app/my_app/locator.dart';
import 'package:islam_app/shared_widgets/show_toast.dart';
import 'package:preferences/preferences.dart';

part 'post_bloc.freezed.dart';
part 'post_event.dart';
part 'post_state.dart';

class PostBloc extends Bloc<PostEvent, PostState> {
  PostBloc() : super(const PostState()) {
    on<_Initial>(_initial);
    on<_ReportPost>(_report);
    on<_ChangePostVote>(_changePostVote);
    on<_DeletePost>(_deletePost);
  }

  FutureOr<void> _initial(_Initial event, Emitter<PostState> emit) {
    emit(
      state.copyWith(
        upComments: event.post.upComments,
        downComments: event.post.downComments,
        isPostReported: event.post.isReported,
        inBookmark: event.post.isAddedToBookMark,
        postID: event.post.id ?? "",
        postVoteType: event.post.voteStatus,
      ),
    );
  }

  FutureOr<void> _report(_ReportPost event, Emitter<PostState> emit) async {
    await PostUsecase.reportPost(
      postId: event.postId,
      reportText: event.message,
      userEmail: _userEmail(),
    );
    emit(state.copyWith(isPostReported: true));
  }

  FutureOr<void> _changePostVote(
    _ChangePostVote event,
    Emitter<PostState> emit,
  ) async {
    await PostUsecase.changePostVote(
      postId: event.postId,
      voteType: event.voteType,
      userEmail: _userEmail(),
    );
    int downVote = state.downComments;
    int upVote = state.upComments;

    if (event.voteType == state.postVoteType) {
      return;
    }

    if (event.voteType == const PostVoteType.up()) {
      upVote += 1;
      downVote -= 1;
    } else if (event.voteType == const PostVoteType.down()) {
      downVote += 1;
      upVote -= 1;
    }

    emit(
      state.copyWith(
        postVoteType: event.voteType,
        upComments: upVote,
        downComments: downVote,
      ),
    );
  }

  bool isMyPost(String email) {
    final userEmail = locator<IslamPreferences>().getValue(
      key: DatabaseUserCredentials.userEmail,
      defaultValue: "",
    );
    if (userEmail == email) {
      return true;
    }
    return false;
  }

  bool isUserLoggedIn() {
    final userEmail = locator<IslamPreferences>().getValue(
      key: DatabaseUserCredentials.userEmail,
      defaultValue: "",
    );
    if (userEmail == "") {
      return false;
    }
    return true;
  }

  String _userEmail() => locator<IslamPreferences>().getValue(
    key: DatabaseUserCredentials.userEmail,
    defaultValue: "",
  );

  void _validateEmail(BuildContext context) {
    final userEmail = _userEmail();

    if (userEmail == "") {
      if (context.mounted) {
        ShowToast.showLoginRequired(context);
      }
      return;
    }
  }

  FutureOr<void> _deletePost(_DeletePost event, Emitter<PostState> emit) async {
    _validateEmail(event.context);
    emit(state.copyWith(postDeleteState: const PostDeleteState.idl()));

    try {
      await FirebaseAnalyticsRepository.logEvent(name: "DeletePostSubmitsion");

      if (!event.context.mounted) return;

      await locator<AddEditPostUseCase>().deletePost(postId: event.postId);

      emit(state.copyWith(postDeleteState: const PostDeleteState.done()));
    } on ConnectionException {
      if (event.context.mounted) {
        ShowToast.showInternetRequired(event.context);
      }
    }
  }
}
