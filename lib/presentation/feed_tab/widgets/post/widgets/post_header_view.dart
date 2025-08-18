import 'package:flutter/material.dart';
import 'package:islam_app/shared_widgets/custom_text.dart';

class PostHeaderView extends StatelessWidget {
  final String profileImageUrl;
  final String profileFullName;
  final String? profileCountryName;
  final bool isMyPost;
  final String postDate;
  final void Function()? onEditPost;

  const PostHeaderView({
    super.key,
    required this.profileImageUrl,
    required this.profileFullName,
    required this.profileCountryName,
    required this.isMyPost,
    required this.postDate,
    this.onEditPost,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8, bottom: 4, right: 8, left: 8),
      child: Row(
        children: [
          Stack(
            children: [
              CircleAvatar(
                backgroundColor: const Color(0xff034061),
                radius: 20,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: profileImageUrl != ""
                      ? SizedBox.fromSize(
                          size: const Size.fromRadius(40),
                          child: FadeInImage(
                            placeholder: const AssetImage(
                              "assets/images/avatar.png",
                            ),
                            image: NetworkImage(profileImageUrl),
                            fit: BoxFit.cover,
                          ),
                        )
                      : Image.asset(
                          'assets/images/avatar.png',
                          width: 40,
                          height: 40,
                          fit: BoxFit.cover,
                        ),
                ),
              ),
              Positioned(
                left: 0,
                bottom: 0,
                child: CircleAvatar(
                  backgroundColor: Colors.transparent,
                  radius: 8,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child:
                        profileCountryName != null || profileCountryName != ""
                        ? Text(
                            profileCountryName!,
                            style: const TextStyle(fontSize: 10),
                          )
                        : Image.asset(
                            'assets/images/flag_place_holder.png',
                            width: 110,
                            height: 110,
                            fit: BoxFit.cover,
                          ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(width: 4),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomText(
                title: profileFullName,
                color: const Color(0xff444444),
                fontSize: 12,
                textAlign: TextAlign.center,
                fontWeight: FontWeight.bold,
              ),
              const SizedBox(height: 8),
              Directionality(
                textDirection: TextDirection.ltr,
                child: CustomText(
                  title: postDate,
                  color: const Color(0xff444444),
                  fontSize: 10,
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
          const Expanded(child: SizedBox()),
          // if (isMyPost)
          //   ClipRRect(
          //     borderRadius: const BorderRadius.all(Radius.circular(50)),
          //     child: Material(
          //       child: IconButton(
          //         onPressed: onEditPost,
          //         icon: const Icon(
          //           Ionicons.create_outline,
          //           size: 20,
          //           color: Color(0xff292929),
          //         ),
          //       ),
          //     ),
          //   ),
        ],
      ),
    );
  }
}
