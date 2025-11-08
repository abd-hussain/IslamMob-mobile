import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islam_app/l10n/gen/app_localizations.dart';
import 'package:islam_app/presentation/add_edit_post/bloc/add_edit_post_bloc.dart';

class PostTextInputField extends StatelessWidget {
  const PostTextInputField({super.key});

  @override
  Widget build(BuildContext context) {
    final localize = IslamMobLocalizations.of(context);

    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: ColoredBox(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: TextField(
              controller: context.read<AddEditPostBloc>().textController,
              decoration: InputDecoration(
                hintText: localize.whatdoyouwanttosay,
                hintMaxLines: 2,
                hintStyle: const TextStyle(fontSize: 15),
                enabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none,
              ),
              maxLines: 20,
              maxLength: 500,
            ),
          ),
        ),
      ),
    );
  }
}
