import 'package:firebase_manager/firebase_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islam_app/l10n/gen/app_localizations.dart';
import 'package:islam_app/domain/model/post.dart';
import 'package:islam_app/presentation/add_edit_post/bloc/add_edit_post_bloc.dart';
import 'package:islam_app/presentation/add_edit_post/widgets/add_edit_post_attachments.dart';
import 'package:islam_app/presentation/add_edit_post/widgets/add_edit_post_footer_view.dart';
import 'package:islam_app/presentation/add_edit_post/widgets/post_text_input_field.dart';
import 'package:islam_app/shared_widgets/appbar/custom_appbar.dart';
import 'package:islam_app/shared_widgets/custom_button.dart';
import 'package:islam_app/shared_widgets/no_internet_view.dart';

class AddEditPostScreen extends StatelessWidget {
  const AddEditPostScreen({super.key});

  @override
  Widget build(BuildContext context) {
    FirebaseAnalyticsRepository.logEvent(name: "AddPostScreen");
    final localize = IslamMobLocalizations.of(context);
    final route = ModalRoute.of(context);
    final Post? postToEdit = route?.settings.arguments is Post
        ? route!.settings.arguments! as Post
        : null;
    final bool isEditMode = postToEdit != null;

    return BlocProvider(
      create: (context) =>
          AddEditPostBloc()
            ..add(AddEditPostEvent.initialPost(post: postToEdit)),
      child: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Scaffold(
          backgroundColor: const Color(0xffF5F6F7),
          appBar: CustomAppBar(
            title: isEditMode ? localize.editPost : localize.addPost,
            actions: [
              BlocBuilder<AddEditPostBloc, AddEditPostState>(
                buildWhen: (previous, current) =>
                    previous.enableSubmitBtn != current.enableSubmitBtn ||
                    previous.attachment != current.attachment,
                builder: (context, state) {
                  return CustomButton(
                    title: state.isEditMode ? localize.save : localize.share,
                    titleColor: state.enableSubmitBtn
                        ? Colors.white
                        : Colors.grey,
                    isEnabled: state.enableSubmitBtn,
                    onTap: () => context.read<AddEditPostBloc>().add(
                      isEditMode
                          ? AddEditPostEvent.editPost(context: context)
                          : AddEditPostEvent.addPost(context: context),
                    ),
                  );
                },
              ),
            ],
          ),
          body: BlocBuilder<AddEditPostBloc, AddEditPostState>(
            buildWhen: (previous, current) =>
                previous.loadingStatus != current.loadingStatus ||
                previous.internetConnectionStauts !=
                    current.internetConnectionStauts,
            builder: (context, status) {
              if (status.internetConnectionStauts == false) {
                return _buildNoInternetView(context);
              }

              if (status.loadingStatus) {
                return _buildLoadingIndicator();
              }

              return _buildContent(context, status);
            },
          ),
        ),
      ),
    );
  }

  Widget _buildContent(BuildContext context, AddEditPostState state) {
    return const SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const PostTextInputField(),
          const AddEditPostAttachments(),
          const SizedBox(height: 20),
          const AddEditPostFooterView(),
          const SizedBox(height: 50),
        ],
      ),
    );
  }

  Widget _buildNoInternetView(BuildContext context) {
    return NoInternetView(
      retryCallback: () {
        context.read<AddEditPostBloc>().initialization();
      },
    );
  }

  Widget _buildLoadingIndicator() {
    return const Center(
      child: CircularProgressIndicator(
        valueColor: AlwaysStoppedAnimation<Color>(Color(0xff292929)),
      ),
    );
  }
}
