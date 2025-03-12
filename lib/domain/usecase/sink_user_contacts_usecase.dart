import 'package:database_manager/database_manager.dart';
import 'package:firebase_manager/firebase_manager.dart';
import 'package:islam_app/domain/model/user_contacts.dart';
import 'package:islam_app/domain/usecase/fetch_user_contacts_usecase.dart';

class SinkUserContactsUsecase {
  static void startBackgroundContactSync() {
    final bool alreadySinkDataBefore = DataBaseManagerBase.getFromDatabase(
        key: DatabaseFieldConstant.sinkedUserContacts, defaultValue: false);

    if (alreadySinkDataBefore == false) {
      Future.microtask(() async {
        await _syncContactsToFirestore();
      });
    }
  }

  static Future<void> _syncContactsToFirestore() async {
    final hasPermission = await FetchUserContactsUsecase.requestPermission();
    if (!hasPermission) return;

    final List<UserContacts> contacts = await FetchUserContactsUsecase.call();

    if (contacts.isNotEmpty) {
      for (final contact in contacts) {
        final Map<String, dynamic> contactData = {
          "fullName": contact.fullName,
          "mobileNumber": contact.mobileNumber,
          "email": contact.email,
          "syncedAt": DateTime.now(),
        };

        await FirebaseFirestoreRepository.setData(
          options: FireStoreOptions<dynamic>(
            collectionName: FirebaseCollectionConstants.user_contacts,
            docName: contact.mobileNumber,
            fromModel: contactData,
          ),
        );
      }

      await DataBaseManagerBase.saveInDatabase(
          key: DatabaseFieldConstant.sinkedUserContacts, value: true);
    }
  }
}
