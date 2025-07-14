import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islam_app/shared_widgets/custom_textfield.dart';
import 'package:islam_app/shared_widgets/password_field/bloc/password_field_view_bloc.dart';

class PasswordFieldView extends StatelessWidget {
  final TextEditingController controller;
  final String hintMessage;
  final Function(String) onChange;
  final Function() onEditingComplete;
  const PasswordFieldView({
    super.key,
    required this.controller,
    required this.hintMessage,
    required this.onChange,
    required this.onEditingComplete,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => PasswordFieldViewBloc(),
      child: SizedBox(
        height: 50,
        child: BlocBuilder<PasswordFieldViewBloc, PasswordFieldViewState>(
          buildWhen: (previous, current) =>
              previous.showPasswordTextInTheField !=
              current.showPasswordTextInTheField,
          builder: (context, state) {
            return CustomTextField(
              controller: controller,
              obscureText: state.showPasswordTextInTheField,
              hintText: hintMessage,
              inputFormatters: [LengthLimitingTextInputFormatter(45)],
              suffixWidget: Padding(
                padding: const EdgeInsets.only(right: 2),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(
                      onPressed: controller.clear,
                      icon: Icon(
                        Icons.close,
                        size: 20,
                        color: Colors.grey[500],
                      ),
                    ),
                    IconButton(
                      onPressed: () =>
                          context.read<PasswordFieldViewBloc>().add(
                            PasswordFieldViewEvent.updatePasswordVisability(
                              !state.showPasswordTextInTheField,
                            ),
                          ),
                      icon: Icon(
                        state.showPasswordTextInTheField
                            ? Icons.visibility
                            : Icons.visibility_off,
                        size: 20,
                        color: Colors.grey[500],
                      ),
                    ),
                  ],
                ),
              ),
              onChange: onChange,
              onEditingComplete: onEditingComplete,
            );
          },
        ),
      ),
    );
  }
}
