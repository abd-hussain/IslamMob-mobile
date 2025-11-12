import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:internet_connection_checkup/internet_connection_checkup.dart';
import 'package:islam_app/domain/model/post.dart';
import 'package:islam_app/domain/usecase/post_usecase.dart';
import 'package:islam_app/my_app/locator.dart';
import 'package:preferences/preferences.dart';

part 'feed_bloc.freezed.dart';
part 'feed_event.dart';
part 'feed_state.dart';

class FeedBloc extends Bloc<FeedEvent, FeedState> {
  FeedBloc() : super(const FeedState()) {
    on<_GetWallPosts>(_getWallPosts);
    on<_PullRefresh>(_pullRefresh);
  }

  List<Post> wallListOfPosts = [];

  FutureOr<void> _getWallPosts(
    _GetWallPosts event,
    Emitter<FeedState> emit,
  ) async {
    emit(state.copyWith(loadingStatus: const FeedScreenProcessState.loading()));
    final haveInternetConnection =
        await NetworkUseCase.checkInternetConnection();

    wallListOfPosts = await PostUsecase.getPosts(
      type: const PostCategoryType.wall(),
      userEmail: _userEmail(),
    );

    emit(
      state.copyWith(
        loadingStatus: const FeedScreenProcessState.done(),
        wallPostList: wallListOfPosts,
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
        FeedEvent.getWallPosts(
          // ignore: use_build_context_synchronously
          context: event.context,
        ),
      ),
    );
  }

  String _userEmail() => locator<IslamPreferences>().getValue(
    key: DatabaseUserCredentials.userEmail,
    defaultValue: "",
  );
}
