import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islam_app/domain/model/user_contacts.dart';
import 'package:islam_app/presentation/contacts/bloc/contacts_bloc.dart';
import 'package:islam_app/shared_widgets/custom_text.dart';

class ContactItemView extends StatelessWidget {
  final UserContacts contact;
  const ContactItemView({super.key, required this.contact});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: InkWell(
        onTap: () => context.read<ContactsBloc>().add(
              ContactsEvent.updateSelectedContact(
                contact: contact,
              ),
            ),
        child: Container(
          decoration: BoxDecoration(
            color: const Color(0xff444444),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: Row(
              children: [
                CustomText(
                  title: contact.fullName,
                  fontSize: 16,
                ),
                const Expanded(child: SizedBox()),
                Icon(
                  contact.selected
                      ? Icons.check_box_outlined
                      : Icons.check_box_outline_blank_rounded,
                  color: Colors.white,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
