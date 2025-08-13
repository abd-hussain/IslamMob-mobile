import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:database_manager/database_manager.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:islam_app/domain/model/post.dart';
import 'package:islam_app/domain/usecase/post_usecase.dart';

part 'post_bloc.freezed.dart';
part 'post_event.dart';
part 'post_state.dart';

class PostBloc extends Bloc<PostEvent, PostState> {
  PostBloc() : super(const PostState()) {
    on<_Initial>(_initial);
    on<_ReportPost>(_report);
    on<_ChangePostVote>(_changePostVote);
    on<_AddRemoveFromBookmark>(_addRemoveFromBookmark);
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

  FutureOr<void> _addRemoveFromBookmark(
    _AddRemoveFromBookmark event,
    Emitter<PostState> emit,
  ) async {
    await PostUsecase.addRemovePostFromBookMark(
      postId: event.postId,
      bookmark: event.inBookMark,
      userEmail: _userEmail(),
    );
    emit(state.copyWith(inBookmark: !event.inBookMark));
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
    final userEmail = DataBaseManagerBase.getFromDatabase(
      key: DatabaseUserCredentials.userEmail,
      defaultValue: "",
    );
    if (userEmail == email) {
      return true;
    }
    return false;
  }

  bool isUserLoggedIn() {
    final userEmail = DataBaseManagerBase.getFromDatabase(
      key: DatabaseUserCredentials.userEmail,
      defaultValue: "",
    );
    if (userEmail == "") {
      return false;
    }
    return true;
  }

  String _userEmail() =>
      DataBaseManagerBase.getFromDatabase(
            key: DatabaseUserCredentials.userEmail,
            defaultValue: "",
          )
          as String;
}
