import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islam_app/domain/model/post.dart';
import 'package:islam_app/my_app/islam_mob_app/routes.dart';
import 'package:islam_app/my_app/locator.dart';
import 'package:islam_app/presentation/feed_tab/bloc/feed_bloc.dart';
import 'package:islam_app/presentation/feed_tab/widgets/post_list_view.dart';
import 'package:islam_app/presentation/feed_tab/widgets/post_shimmer.dart';
import 'package:islam_app/shared_widgets/appbar/welcoming_header.dart';
import 'package:islam_app/shared_widgets/show_toast.dart';
import 'package:preferences/preferences.dart';

class FeedScreen extends StatefulWidget {
  const FeedScreen({super.key});

  @override
  State<FeedScreen> createState() => _FeedScreenState();
}

class _FeedScreenState extends State<FeedScreen> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          FeedBloc()..add(FeedEvent.getWallPosts(context: context)),
      child: Column(
        children: [
          WelcomingHeader(
            withActionButton: true,
            onActionButtonTap: () async {
              final String userEmail = locator<IslamPreferences>().getValue(
                key: DatabaseUserCredentials.userEmail,
                defaultValue: '',
              );

              if (userEmail.isEmpty) {
                if (context.mounted) {
                  ShowToast.showLoginRequired(context);
                }
                return;
              }

              await Navigator.of(
                context,
                rootNavigator: true,
              ).pushNamed(RoutesConstants.addEditPostScreen);
            },
          ),
          Builder(
            builder: (builderContext) {
              return Expanded(
                child: BlocBuilder<FeedBloc, FeedState>(
                  buildWhen: (previous, current) =>
                      previous.loadingStatus != current.loadingStatus,
                  builder: (buildContext, state) {
                    if (state.loadingStatus ==
                        const FeedScreenProcessState.loading()) {
                      return const PostShimmer();
                    }
                    return PostListView(
                      postsList: state.wallPostList,
                      onRefresh: () async =>
                          builderContext.read<FeedBloc>().add(
                            FeedEvent.pullRefresh(
                              context: context,
                              type: const PostCategoryType.wall(),
                            ),
                          ),
                    );
                  },
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
