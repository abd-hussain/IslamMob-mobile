import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islam_app/domain/model/post.dart';
import 'package:islam_app/presentation/feed_tab/widgets/post/bloc/post_bloc.dart';
import 'package:islam_app/presentation/feed_tab/widgets/post/bottomsheets/post_more_bottomsheet.dart';
import 'package:islam_app/presentation/feed_tab/widgets/post/bottomsheets/post_report_bottomsheet.dart';
import 'package:islam_app/presentation/feed_tab/widgets/post/widgets/post_footer_view.dart';
import 'package:islam_app/presentation/feed_tab/widgets/post/widgets/post_header_view.dart';
import 'package:islam_app/shared_widgets/custom_text.dart';
import 'package:islam_app/shared_widgets/show_toast.dart';
import 'package:logger_manager/logger_manager.dart';
import 'package:share_plus/share_plus.dart';

class PostView extends StatelessWidget {
  final Post postDetails;
  const PostView({super.key, required this.postDetails});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Color(0x80A0A0A0),
            spreadRadius: 2,
            blurRadius: 3,
            offset: const Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: BlocProvider(
        create: (context) => PostBloc()..add(PostEvent.initial(postDetails)),
        child: BlocBuilder<PostBloc, PostState>(
          builder: (context, state) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 8),
                PostHeaderView(
                  profileImageUrl: postDetails.profileImageUrl,
                  profileFullName: postDetails.profilefullName,
                  profileCountryName: postDetails.countryFlag,
                  isMyPost: context.read<PostBloc>().isMyPost(
                    postDetails.ownerEmail,
                  ),
                  postDate: postDetails.createdDate,
                  onEditPost: () {},
                ),
                Container(height: 0.2, color: const Color(0xff444444)),
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: CustomText(
                    title: postDetails.content,
                    color: const Color(0xff444444),
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    maxLines: 15,
                  ),
                ),
                const SizedBox(height: 8),
                PostFooterView(
                  voteStatus: state.postVoteType,
                  numberCommentUp: state.upComments,
                  numberCommentDown: state.downComments,
                  changeVoteType: (type) {
                    if (context.read<PostBloc>().isUserLoggedIn()) {
                      context.read<PostBloc>().add(
                        PostEvent.changeVote(state.postID, type),
                      );
                    } else {
                      ShowToast.showLoginRequired(context);
                    }
                  },
                  moreAction: () => PostMoreBottomsheet().showBottomSheet(
                    context: context,
                    isMarkedAsBookmark: state.inBookmark,
                    isPostReportedBefore: state.isPostReported,
                    onBookMarkPressed: () {
                      if (context.read<PostBloc>().isUserLoggedIn()) {
                        context.read<PostBloc>().add(
                          PostEvent.addRemoveFromBookMark(
                            state.postID,
                            state.inBookmark,
                          ),
                        );
                      } else {
                        ShowToast.showLoginRequired(context);
                      }
                    },
                    onReportPressed: () {
                      if (context.read<PostBloc>().isUserLoggedIn()) {
                        PostReportBottomsheet().showBottomSheet(
                          context: context,
                          reportMessage: (message) => context
                              .read<PostBloc>()
                              .add(PostEvent.report(state.postID, message)),
                        );
                      } else {
                        ShowToast.showLoginRequired(context);
                      }
                    },
                    onSharePressed: () async {
                      final result = await Share.share(postDetails.content);
                      if (result.status == ShareResultStatus.success) {
                        LoggerManagerBase.logInfo(
                          message: 'Thank you for sharing post',
                        );
                      }
                    },
                  ),
                ),
                const SizedBox(height: 8),
              ],
            );
          },
        ),
      ),
    );
  }
}
