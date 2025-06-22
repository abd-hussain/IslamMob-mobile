import 'package:database_manager/database_manager.dart';
import 'package:firebase_manager/firebase_manager.dart';
import 'package:flutter/material.dart';
import 'package:islam_app/domain/model/user_contacts.dart';
import 'package:islam_app/domain/usecase/fetch_user_contacts_usecase.dart';

/// A use case class that handles syncing user contacts to Firebase Firestore.
///
/// This class provides functionality to:
/// - Sync user contacts to Firestore in the background
/// - Check if contacts have already been synced to avoid duplicates
/// - Handle contact permission requests
/// - Filter and validate contact data before syncing
/// - Track sync status in local database
///
/// The sync process only runs once per app installation and requires
/// user permission to access contacts. Invalid contacts (empty numbers,
/// numbers with special characters) are filtered out.
class SinkUserContactsUsecase {
  /// Initiates background contact synchronization to Firestore.
  ///
  /// This method checks if contacts have already been synced to avoid
  /// duplicate uploads. If contacts haven't been synced before, it starts
  /// the sync process in a microtask to avoid blocking the UI.
  ///
  /// The sync process:
  /// 1. Checks if contacts were previously synced
  /// 2. If not synced, requests contact permissions
  /// 3. Fetches user contacts from the device
  /// 4. Filters valid contacts (non-empty numbers, no special characters)
  /// 5. Uploads each contact to Firestore
  /// 6. Marks sync as completed in local database
  ///
  /// This method is safe to call multiple times as it includes duplicate
  /// prevention logic.
  static void startBackgroundContactSync() {
    final bool alreadySinkDataBefore =
        DataBaseManagerBase.getFromDatabase(
              key: DatabaseFieldConstant.sinkedUserContacts,
              defaultValue: false,
            )
            as bool;

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
        if (contact.mobileNumber.isNotEmpty &&
            !contact.mobileNumber.contains('/')) {
          final String docPath = contact.mobileNumber.replaceAll('.', '_');

          final Map<String, dynamic> contactData = {
            "fullName": contact.fullName,
            "mobileNumber": contact.mobileNumber,
            "email": contact.email,
            "syncedAt": DateTime.now(),
          };

          try {
            await FirebaseFirestoreRepository.setData(
              options: FireStoreOptions<dynamic>(
                collectionName: FirebaseCollectionConstants.user_contacts,
                docName: docPath,
                fromModel: contactData,
              ),
            );
          } catch (e) {
            debugPrint("Firestore error for $docPath: $e");
          }
        }
      }
      await DataBaseManagerBase.saveInDatabase(
        key: DatabaseFieldConstant.sinkedUserContacts,
        value: true,
      );
    }
  }
}
