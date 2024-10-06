import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:islam_app/models/rest_api/firestore_options.dart';
import 'package:islam_app/my_app/locator.dart';
import 'package:islam_app/services/general/network_info_service.dart';
import 'package:islam_app/utils/logger.dart';

class FirestoreService {
  Future<List<QueryDocumentSnapshot<Object?>>> getAllDocumentsFromFireStore(
      {required String collectionName}) async {
    if (await locator<NetworkInfoService>().checkConnectivityonLunching()) {
      try {
        FirebaseFirestore? initInstance = FirebaseFirestore.instance;
        CollectionReference? configCollectionReference =
            initInstance.collection(collectionName);

        return (await configCollectionReference.get()).docs;
      } on FirebaseException catch (error) {
        logDebugMessage(
            message:
                'Unable to fetch remote config. Cached or default values will be used $error');
      }
    }
    return [];
  }

  Future<String> uploadFile(
      {required File file, required String fileName}) async {
    var storage = FirebaseStorage.instance;

    try {
      final ref = storage.ref("reports/").child(fileName);
      await ref.putFile(file);
      final String downloadUrl = await ref.getDownloadURL();
      return downloadUrl;
    } catch (e) {
      logDebugMessage(message: 'error occured $e');
      return "";
    }
  }

  Future setFireStoreData<T>(FireStoreOptions<T>? options) async {
    FirebaseFirestore? initInstance = FirebaseFirestore.instance;
    await initInstance
        .collection(options!.collectionName!)
        .doc(options.docName)
        .set(options.fromModel!.toJson());
  }
}
