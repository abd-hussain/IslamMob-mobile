import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:database_manager/database_manager.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:internet_connection_checkup/internet_connection_checkup.dart';
import 'package:islam_app/domain/model/post.dart';
import 'package:islam_app/domain/usecase/post_usecase.dart';

part 'feed_bloc.freezed.dart';
part 'feed_event.dart';
part 'feed_state.dart';

class FeedBloc extends Bloc<FeedEvent, FeedState> {
  FeedBloc() : super(const FeedState()) {
    on<_GetPostFromSpesificCategory>(_getPostFromSpesificCategory);
    on<_PullRefresh>(_pullRefresh);
  }

  List<Post> wallListOfPosts = [];
  List<Post> watchlistListOfPosts = [];

  FutureOr<void> _getPostFromSpesificCategory(
    _GetPostFromSpesificCategory event,
    Emitter<FeedState> emit,
  ) async {
    emit(state.copyWith(loadingStatus: const FeedScreenProcessState.loading()));
    final haveInternetConnection =
        await NetworkUseCase.checkInternetConnection();
    if (event.type == const PostCategoryType.wall()) {
      wallListOfPosts = await PostUsecase.getPosts(
        type: event.type,
        userEmail: _userEmail(),
      );
    } else if (event.type == const PostCategoryType.watchlist()) {
      watchlistListOfPosts = await PostUsecase.getPosts(
        type: event.type,
        userEmail: _userEmail(),
      );
    }

    emit(
      state.copyWith(
        loadingStatus: const FeedScreenProcessState.done(),
        wallPostList: wallListOfPosts,
        watchlistPostList: watchlistListOfPosts,
        showInternetConnectionView: !haveInternetConnection,
      ),
    );
  }

  FutureOr<void> _pullRefresh(
    _PullRefresh event,
    Emitter<FeedState> emit,
  ) async {
    return Future.delayed(
      const Duration(milliseconds: 1000),
      () => add(
        FeedEvent.getPostFromSpesificCategory(
          // ignore: use_build_context_synchronously
          context: event.context,
          type: event.type,
        ),
      ),
    );
  }

  String _userEmail() =>
      DataBaseManagerBase.getFromDatabase(
            key: DatabaseUserCredentials.userEmail,
            defaultValue: "",
          )
          as String;
}
