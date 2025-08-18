import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islam_app/domain/model/post.dart';
import 'package:islam_app/presentation/feed_tab/bloc/feed_bloc.dart';
import 'package:islam_app/presentation/feed_tab/widgets/feed_tabbar_view.dart';
import 'package:islam_app/presentation/feed_tab/widgets/post_list_view.dart';
import 'package:islam_app/presentation/feed_tab/widgets/post_shimmer.dart';

class FeedScreen extends StatefulWidget {
  const FeedScreen({super.key});

  @override
  State<FeedScreen> createState() => _FeedScreenState();
}

class _FeedScreenState extends State<FeedScreen> with TickerProviderStateMixin {
  late final TabController tabController;
  int _currentTabIndex = 0;

  @override
  void initState() {
    super.initState();
    tabController = TabController(
      length: 2,
      vsync: this,
      animationDuration: Duration.zero,
    );
    // Set initial active tab
    _currentTabIndex = tabController.index;
    // Setup animation-based tab listener for consistent behavior between clicking and swiping
    _setupTabListener();
  }

  void _setupTabListener() {
    tabController.animation?.addListener(_onTabAnimationChanged);
  }

  void _onTabAnimationChanged() {
    if (tabController.animation == null) return;

    final animationValue = tabController.animation!.value;
    final newIndex = animationValue.round();

    // Only trigger when we've completely moved to a new tab
    if (newIndex != _currentTabIndex) {
      _currentTabIndex = newIndex;
    }
  }

  @override
  void dispose() {
    tabController.animation?.removeListener(_onTabAnimationChanged);
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => FeedBloc()
        ..add(
          FeedEvent.getPostFromSpesificCategory(
            context: context,
            type: const PostCategoryType.wall(),
          ),
        ),
      child: Builder(
        builder: (builderContext) {
          return Column(
            children: [
              FeedTabbarView(
                tabController: tabController,
                onTap: (index) {
                  PostCategoryType type = const PostCategoryType.wall();
                  if (index == 2) {
                    type = const PostCategoryType.watchlist();
                  }
                  builderContext.read<FeedBloc>().add(
                    FeedEvent.getPostFromSpesificCategory(
                      context: context,
                      type: type,
                    ),
                  );
                },
              ),
              Expanded(
                child: BlocBuilder<FeedBloc, FeedState>(
                  buildWhen: (previous, current) =>
                      previous.loadingStatus != current.loadingStatus,
                  builder: (buildContext, state) {
                    if (state.loadingStatus ==
                        const FeedScreenProcessState.loading()) {
                      return const PostShimmer();
                    }
                    return TabBarView(
                      controller: tabController,
                      children: [
                        PostListView(
                          postsList: state.wallPostList,
                          onRefresh: () async =>
                              builderContext.read<FeedBloc>().add(
                                FeedEvent.pullRefresh(
                                  context: context,
                                  type: const PostCategoryType.wall(),
                                ),
                              ),
                        ),
                        PostListView(
                          postsList: state.watchlistPostList,
                          onRefresh: () async =>
                              builderContext.read<FeedBloc>().add(
                                FeedEvent.pullRefresh(
                                  context: context,
                                  type: const PostCategoryType.watchlist(),
                                ),
                              ),
                        ),
                      ],
                    );
                  },
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
