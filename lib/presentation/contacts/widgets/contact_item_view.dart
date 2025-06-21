import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islam_app/domain/model/user_contacts.dart';
import 'package:islam_app/presentation/contacts/bloc/contacts_bloc.dart';
import 'package:islam_app/shared_widgets/custom_text.dart';

/// Widget for displaying individual contact items in the contacts list.
///
/// This widget represents a single contact in the Islamic content sharing
/// interface, providing selection capabilities for choosing recipients of
/// Islamic messages. It features:
/// - **Contact name display** showing the contact's full name
/// - **Selection indicator** with checkbox for sharing selection
/// - **Interactive feedback** for toggling contact selection
/// - **Visual styling** consistent with Islamic app design
///
/// The widget supports the Islamic principle of sharing beneficial knowledge
/// by enabling users to select specific contacts for receiving prayer
/// reminders, Islamic content, and app invitations.
class ContactItemView extends StatelessWidget {
  /// The contact information to display in this item.
  final UserContacts contact;

  /// Creates a [ContactItemView] widget for displaying a contact item.
  ///
  /// Parameters:
  /// - [contact]: The contact information including name, phone, and selection state
  const ContactItemView({super.key, required this.contact});

  /// Builds the contact item with name display and selection checkbox.
  ///
  /// This method constructs a contact item featuring:
  /// - Contact name display with proper typography
  /// - Selection checkbox indicating current selection state
  /// - Tap interaction for toggling contact selection
  /// - Consistent styling with the Islamic app theme
  ///
  /// The item responds to user taps by updating the contact's selection
  /// state for Islamic content sharing purposes.
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
