import 'package:flutter_contacts/flutter_contacts.dart';
import 'package:islam_app/domain/model/user_contacts.dart';

class FetchUserContactsUsecase {
  static Future<bool> requestPermission() async {
    // Request contact permission
    if (await FlutterContacts.requestPermission(readonly: true)) {
      return true;
    } else {
      return false;
    }
  }

  static Future<List<UserContacts>> call() async {
    final List<UserContacts> listOfContacts = [];

    // Get all contacts (fully fetched)
    final List<Contact> contatctList = await FlutterContacts.getContacts(
      withProperties: true,
    );

    for (final Contact item in contatctList) {
      final String contactName = item.displayName != ""
          ? item.displayName
          : ("${item.name.first} ${item.name.last}");
      final String phoneNumber =
          item.phones.isNotEmpty ? item.phones.first.number : "";
      final String email = item.emails.isNotEmpty ? item.emails[0].address : "";

      if (phoneNumber.isNotEmpty) {
        listOfContacts.add(UserContacts(
          fullName: contactName,
          mobileNumber: phoneNumber.replaceAll(" ", ""),
          email: email,
        ));
      }
    }

    return listOfContacts;
  }
}
