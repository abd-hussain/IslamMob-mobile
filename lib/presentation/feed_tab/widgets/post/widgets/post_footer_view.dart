import 'package:flutter/material.dart';
import 'package:islam_app/domain/model/post.dart';
import 'package:islam_app/l10n/gen/app_localizations.dart';
import 'package:islam_app/shared_widgets/custom_text.dart';

class PostFooterView extends StatelessWidget {
  final PostVoteType voteStatus;
  final int numberCommentUp;
  final int numberCommentDown;
  final Function(PostVoteType type) changeVoteType;
  final Function() moreAction;

  const PostFooterView({
    super.key,
    required this.voteStatus,
    required this.numberCommentUp,
    required this.numberCommentDown,
    required this.changeVoteType,
    required this.moreAction,
  });

  @override
  Widget build(BuildContext context) {
    final localization = IslamMobLocalizations.of(context);

    return SizedBox(
      height: 50,
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Row(
          children: [
            Container(
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 239, 239, 239),
                border: Border.all(
                  color: const Color.fromARGB(255, 223, 222, 222),
                ),
                borderRadius: const BorderRadius.all(Radius.circular(50)),
              ),
              child: Row(
                children: [
                  const SizedBox(width: 4),
                  ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.circular(50)),
                    child: Material(
                      borderRadius: const BorderRadius.all(Radius.circular(50)),
                      child: IconButton(
                        icon: Icon(
                          Icons.keyboard_double_arrow_up_sharp,
                          size: 20,
                          color: voteStatus == const PostVoteType.up()
                              ? const Color(0xFF00AFAB)
                              : const Color(0xff292929),
                        ),
                        onPressed: () =>
                            changeVoteType(const PostVoteType.up()),
                      ),
                    ),
                  ),
                  const SizedBox(width: 8),
                  CustomText(
                    title: showVoteStatusAndCount(
                      localization,
                      numberCommentUp,
                      numberCommentDown,
                    ),
                    color: const Color(0xff444444),
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                  const SizedBox(width: 8),
                  Container(
                    height: 39,
                    width: 1,
                    color: const Color.fromARGB(255, 214, 214, 214),
                  ),
                  const SizedBox(width: 8),
                  ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.circular(50)),
                    child: Material(
                      borderRadius: const BorderRadius.all(Radius.circular(50)),
                      child: IconButton(
                        icon: Icon(
                          Icons.keyboard_double_arrow_down_sharp,
                          size: 20,
                          color: voteStatus == const PostVoteType.down()
                              ? Colors.red
                              : const Color(0xff292929),
                        ),
                        onPressed: () =>
                            changeVoteType(const PostVoteType.down()),
                      ),
                    ),
                  ),
                  const SizedBox(width: 8),
                ],
              ),
            ),
            const Expanded(child: SizedBox()),
            ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(50)),
              child: Material(
                color: Colors.white,
                child: IconButton(
                  icon: const Icon(
                    Icons.more_horiz_sharp,
                    size: 18,
                    color: const Color(0xff292929),
                  ),
                  onPressed: moreAction,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  String showVoteStatusAndCount(
    IslamMobLocalizations localization,
    int numberCommentUp,
    int numberCommentDown,
  ) {
    if (numberCommentUp > 0) {
      return "${localization.upvote} ~ $numberCommentUp";
    } else {
      return "${localization.downvote} ~ $numberCommentDown";
    }
  }
}
