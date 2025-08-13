import 'package:flutter/material.dart';
import 'package:islam_app/domain/model/post.dart';
import 'package:islam_app/presentation/feed_tab/widgets/empty_items_view.dart';
import 'package:islam_app/presentation/feed_tab/widgets/post/post_view.dart';

class PostListView extends StatelessWidget {
  final List<Post> postsList;
  final Future<void> Function() onRefresh;

  const PostListView({
    super.key,
    required this.postsList,
    required this.onRefresh,
  });

  @override
  Widget build(BuildContext context) {
    return postsList.isNotEmpty
        ? RefreshIndicator(
            onRefresh: () async => onRefresh(),
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: postsList.length,
              itemBuilder: (context, index) {
                return PostView(postDetails: postsList[index]);
              },
            ),
          )
        : const EmptyItemsView();
  }
}
